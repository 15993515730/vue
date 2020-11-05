/*
 Navicat Premium Data Transfer

 Source Server         : demo
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : cook

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 23/10/2020 17:27:36
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cook_all
-- ----------------------------
DROP TABLE IF EXISTS `cook_all`;
CREATE TABLE `cook_all`  (
  `images` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type_id` int(100) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 68 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cook_all
-- ----------------------------
INSERT INTO `cook_all` VALUES ('https://pic.ecook.cn/web/257352113.jpg!s4', '早餐', 1, 1);
INSERT INTO `cook_all` VALUES ('https://pic.ecook.cn/web/246185759.jpg!s4', '烘焙', 2, 1);
INSERT INTO `cook_all` VALUES ('https://pic.ecook.cn/web/246185869.jpg!s4', '宝宝辅食old', 3, 1);
INSERT INTO `cook_all` VALUES ('https://pic.ecook.cn/web/246187409.jpg!s4', '食疗养生old', 4, 1);
INSERT INTO `cook_all` VALUES ('https://pic.ecook.cn/web/257352185.jpg!s4', '早餐', 5, 2);
INSERT INTO `cook_all` VALUES ('https://pic.ecook.cn/web/260673621.jpg!s4', '午餐', 6, 2);
INSERT INTO `cook_all` VALUES ('https://pic.ecook.cn/web/260673623.jpg!s4', '晚餐', 7, 2);
INSERT INTO `cook_all` VALUES ('https://pic.ecook.cn/web/257352844.jpg!s4', '宵夜', 8, 2);
INSERT INTO `cook_all` VALUES ('https://pic.ecook.cn/web/260673629.jpg!s4', '快手菜', 9, 3);
INSERT INTO `cook_all` VALUES ('https://pic.ecook.cn/web/260673637.jpg!s4', '汤羹', 10, 3);
INSERT INTO `cook_all` VALUES ('https://pic.ecook.cn/web/260673639.jpg!s4', '素食', 11, 3);
INSERT INTO `cook_all` VALUES ('https://pic.ecook.cn/web/260673641.jpg!s4', '川菜', 12, 3);
INSERT INTO `cook_all` VALUES ('https://pic.ecook.cn/web/260673651.jpg!s4', '粤菜', 13, 3);
INSERT INTO `cook_all` VALUES ('https://pic.ecook.cn/web/260673656.jpg!s4', '下酒菜', 14, 3);
INSERT INTO `cook_all` VALUES ('https://pic.ecook.cn/web/260673662.jpg!s4', '下饭菜', 15, 3);
INSERT INTO `cook_all` VALUES ('https://pic.ecook.cn/web/260673678.jpg!s4', '家常菜', 16, 3);
INSERT INTO `cook_all` VALUES ('https://pic.ecook.cn/web/260673693.jpg!s4', '凉菜沙拉', 17, 3);
INSERT INTO `cook_all` VALUES ('https://pic.ecook.cn/web/257353310.jpg!s4', '点心', 18, 4);
INSERT INTO `cook_all` VALUES ('https://pic.ecook.cn/web/257353247.jpg!s4', '粥品', 19, 4);
INSERT INTO `cook_all` VALUES ('https://pic.ecook.cn/web/260673699.jpg!s4', '面食', 20, 4);
INSERT INTO `cook_all` VALUES ('https://pic.ecook.cn/web/260673705.jpg!s4', '米食', 21, 4);
INSERT INTO `cook_all` VALUES ('https://pic.ecook.cn/web/257353412.jpg!s4', '饮品', 22, 4);
INSERT INTO `cook_all` VALUES ('https://pic.ecook.cn/web/260673739.jpg!s4', '秋季时令', 23, 5);
INSERT INTO `cook_all` VALUES ('https://pic.ecook.cn/web/260673771.jpg!s4', '夏季时令', 24, 5);
INSERT INTO `cook_all` VALUES ('https://pic.ecook.cn/web/260673773.jpg!s4', '春季时令', 25, 5);
INSERT INTO `cook_all` VALUES ('https://pic.ecook.cn/web/260673781.jpg!s4', '冬季时令', 26, 5);
INSERT INTO `cook_all` VALUES ('https://pic.ecook.cn/web/260673789.jpg!s4', '禽蛋', 27, 6);
INSERT INTO `cook_all` VALUES ('https://pic.ecook.cn/web/260673793.jpg!s4', '奶制品', 28, 6);
INSERT INTO `cook_all` VALUES ('https://pic.ecook.cn/web/260673797.jpg!s4', '鱼虾水产', 29, 6);
INSERT INTO `cook_all` VALUES ('https://pic.ecook.cn/web/260673799.jpg!s4', '粗粮', 30, 6);
INSERT INTO `cook_all` VALUES ('https://pic.ecook.cn/web/260673811.jpg!s4', '蔬菜', 31, 6);
INSERT INTO `cook_all` VALUES ('https://pic.ecook.cn/web/260673816.jpg!s4', '肉类', 32, 6);
INSERT INTO `cook_all` VALUES ('https://pic.ecook.cn/web/260673546.jpg!s4', '水果', 33, 6);
INSERT INTO `cook_all` VALUES ('https://pic.ecook.cn/web/257354167.jpg!s4', '宝宝辅食', 34, 7);
INSERT INTO `cook_all` VALUES ('https://pic.ecook.cn/web/260673820.jpg!s4', '通乳', 35, 7);
INSERT INTO `cook_all` VALUES ('https://pic.ecook.cn/web/260673839.jpg!s4', '月子', 36, 7);
INSERT INTO `cook_all` VALUES ('https://pic.ecook.cn/web/257354157.jpg!s4', '孕期', 37, 7);
INSERT INTO `cook_all` VALUES ('https://pic.ecook.cn/web/260673841.jpg!s4', '备孕', 38, 7);
INSERT INTO `cook_all` VALUES ('https://pic.ecook.cn/web/257354320.jpg!s4', '孕产食谱', 39, 7);
INSERT INTO `cook_all` VALUES ('https://pic.ecook.cn/web/257771010.jpg!s4', '披萨', 40, 8);
INSERT INTO `cook_all` VALUES ('https://pic.ecook.cn/web/260673552.jpg!s4', '饼干', 41, 8);
INSERT INTO `cook_all` VALUES ('https://pic.ecook.cn/web/260673855.jpg!s4', '烘焙', 42, 8);
INSERT INTO `cook_all` VALUES ('https://pic.ecook.cn/web/257354271.jpg!s4', '面包', 43, 8);
INSERT INTO `cook_all` VALUES ('https://pic.ecook.cn/web/260673859.jpg!s4', '蛋糕', 44, 8);
INSERT INTO `cook_all` VALUES ('https://pic.ecook.cn/web/257354506.jpg!s4', '甜点', 45, 8);
INSERT INTO `cook_all` VALUES ('https://pic.ecook.cn/web/260673866.jpg!s4', '补血益气', 46, 9);
INSERT INTO `cook_all` VALUES ('https://pic.ecook.cn/web/257354486.jpg!s4', '健脾开胃', 47, 9);
INSERT INTO `cook_all` VALUES ('https://pic.ecook.cn/web/260673875.jpg!s4', '清肺止咳', 48, 9);
INSERT INTO `cook_all` VALUES ('https://pic.ecook.cn/web/260673617.jpg!s4', '温补驱寒', 49, 9);
INSERT INTO `cook_all` VALUES ('https://pic.ecook.cn/web/260673879.jpg!s4', '食疗养生', 50, 9);
INSERT INTO `cook_all` VALUES ('https://pic.ecook.cn/web/260673886.jpg!s4', '减脂健身', 51, 9);
INSERT INTO `cook_all` VALUES ('https://pic.ecook.cn/web/260673893.jpg!s4', '经期食谱', 52, 9);
INSERT INTO `cook_all` VALUES ('https://pic.ecook.cn/web/260673896.jpg!s4', '美容养颜', 53, 9);
INSERT INTO `cook_all` VALUES ('https://pic.ecook.cn/web/260673903.jpg!s4', '滋阴补肾', 54, 9);
INSERT INTO `cook_all` VALUES ('https://pic.ecook.cn/web/260673905.jpg!s4', '宴客聚会', 55, 10);
INSERT INTO `cook_all` VALUES ('https://pic.ecook.cn/web/257354624.jpg!s4', '一人食', 56, 10);
INSERT INTO `cook_all` VALUES ('https://pic.ecook.cn/web/260673907.jpg!s4', '二人世界', 57, 10);
INSERT INTO `cook_all` VALUES ('https://pic.ecook.cn/web/260673923.jpg!s4', '便当', 58, 10);
INSERT INTO `cook_all` VALUES ('https://pic.ecook.cn/web/260673933.jpg!s4', '亲子派对', 59, 10);
INSERT INTO `cook_all` VALUES ('https://pic.ecook.cn/web/257490388.jpg!s4', '宿舍', 60, 10);
INSERT INTO `cook_all` VALUES ('https://pic.ecook.cn/web/260673937.jpg!s4', '下午茶', 61, 10);
INSERT INTO `cook_all` VALUES ('https://pic.ecook.cn/web/260673939.jpg!s4', '风味小吃', 62, 11);
INSERT INTO `cook_all` VALUES ('https://pic.ecook.cn/web/260673944.jpg!s4', '火锅', 63, 11);
INSERT INTO `cook_all` VALUES ('https://pic.ecook.cn/web/257354725.jpg!s4', '寿司', 64, 11);
INSERT INTO `cook_all` VALUES ('https://pic.ecook.cn/web/260673948.jpg!s4', '煲仔饭', 65, 11);
INSERT INTO `cook_all` VALUES ('https://pic.ecook.cn/web/260673950.jpg!s4', '地方特色', 66, 11);
INSERT INTO `cook_all` VALUES ('https://pic.ecook.cn/web/260673955.jpg!s4', '节日美食', 67, 11);

-- ----------------------------
-- Table structure for cook_detail
-- ----------------------------
DROP TABLE IF EXISTS `cook_detail`;
CREATE TABLE `cook_detail`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `title1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `img1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `menu` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fans` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `foucs` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cook_detail
-- ----------------------------
INSERT INTO `cook_detail` VALUES (1, '芹菜拌腐竹', 'https://pic.ecook.cn/web/264460137.jpg!wh882', '简简单单、平平淡淡', 'https://pic.ecook.cn/web/265077262.jpg!s1', '17', '17', '1458', 'https://m.ecook.cn/resources/m/images/girl.png', '奚奚妈');
INSERT INTO `cook_detail` VALUES (2, '花蛤粉丝', 'https://pic.ecook.cn/web/264460061.jpg!wh882', NULL, 'https://pic.ecook.cn/web/263056429.jpg!s1', '523', '8', '2168', 'https://m.ecook.cn/resources/m/images/girl.png', '优雅的长围巾');
INSERT INTO `cook_detail` VALUES (3, '抹茶草莓海盐蛋卷', 'https://pic.ecook.cn/web/264458868.jpg!wh882', NULL, 'https://pic.ecook.cn/web/257842527.jpg!s1', '66', '16', '495', 'https://m.ecook.cn/resources/m/images/girl.png', '鬼娘');
INSERT INTO `cook_detail` VALUES (4, '芹菜炒木耳', 'https://pic.ecook.cn/web/264443620.jpg!wh882', NULL, 'https://pic.ecook.cn/web/258438148.jpg!s1', '281', '6', '2043', 'https://m.ecook.cn/resources/m/images/girl.png', '乐食记');
INSERT INTO `cook_detail` VALUES (5, '长豆角蛋饼', 'https://pic.ecook.cn/web/264460907.jpg!wh882', NULL, 'https://pic.ecook.cn/web/260486101.jpg!s1', '62', '62', '275', 'https://m.ecook.cn/resources/m/images/girl.png', '淼淼妈DD');

-- ----------------------------
-- Table structure for cook_food
-- ----------------------------
DROP TABLE IF EXISTS `cook_food`;
CREATE TABLE `cook_food`  (
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `kg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `step` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cook_food
-- ----------------------------
INSERT INTO `cook_food` VALUES ('面粉', 1, '500克', 'https://pic.ecook.cn/web/262270675.jpg!wd780', '500克加入大约280克的开水，边倒边拌。');
INSERT INTO `cook_food` VALUES ('猪肉', 2, '400克', 'https://pic.ecook.cn/web/262270679.jpg!wd780', '2. 再加些冷水，约20-50克，揉成湿软的面团，不见干粉就行，静置15分钟。');
INSERT INTO `cook_food` VALUES ('皮冻', 3, '120克', 'https://pic.ecook.cn/web/262270667.jpg!wd780', '3. 现在再来揉几下，轻易地就揉成光滑的面团了，再静置30分钟。');
INSERT INTO `cook_food` VALUES ('洋葱', 4, '60克', 'https://pic.ecook.cn/web/262270679.jpg!wd780', '4. 饧面的时间来调馅。首先将');
INSERT INTO `cook_food` VALUES ('花椒', 5, '一小撮', 'https://pic.ecook.cn/web/262270669.jpg!wd780', '5. 再取一小锅，倒入植物油40克，加一小撮');
INSERT INTO `cook_food` VALUES ('生姜', 6, '10克', 'https://pic.ecook.cn/web/262270670.jpg!wd780', '6. 将切好的大葱、洋葱和姜放到小碗里，将烧热的花椒油浇到上面。');
INSERT INTO `cook_food` VALUES ('大葱', 7, '60克', 'https://pic.ecook.cn/web/262270678.jpg!wd780', '7. 肉馅中加入');
INSERT INTO `cook_food` VALUES ('白糖', 8, '5克', 'https://pic.ecook.cn/web/262270676.jpg!wd780', '8. 再与“过程6葱姜“拌在一起。');
INSERT INTO `cook_food` VALUES ('蚝油', 9, '10克', 'https://pic.ecook.cn/web/262270677.jpg!wd780', '9. 最后试一下味道，根据实际情况加少量调料调整，再滴一些');
INSERT INTO `cook_food` VALUES ('老抽', 10, '5克', 'https://pic.ecook.cn/web/262270671.jpg!wd780', '10. 将饧好的面团搓成长条，揪成小剂。取一个小剂子，按扁，擀成中间厚，周边薄的皮，舀一坨馅料在饺皮中。');
INSERT INTO `cook_food` VALUES ('生抽', 11, '15克', 'https://pic.ecook.cn/web/262270672.jpg!wd780', '11. 包成你喜欢的样子。');
INSERT INTO `cook_food` VALUES ('香油', 12, '10克', 'https://pic.ecook.cn/web/262270680.jpg!wd780', '12. 锅里稍微倒点油，烧热，然后将饺子码入，倒点水漫过饺子底面，盖上盖子，用中火煎， 8分钟左右水就收干了，底子也就焦黄香脆了，起锅享用。');
INSERT INTO `cook_food` VALUES ('盐', 13, '适量', 'https://pic.ecook.cn/web/262270673.jpg!wd780', '13. 成品欣赏，金黄金黄的很漂亮哦。');

-- ----------------------------
-- Table structure for cook_hot
-- ----------------------------
DROP TABLE IF EXISTS `cook_hot`;
CREATE TABLE `cook_hot`  (
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cook_hot
-- ----------------------------
INSERT INTO `cook_hot` VALUES ('红烧肉', 'https://m.ecook.cn/zhuti/4034/');
INSERT INTO `cook_hot` VALUES ('巧克力', 'https://m.ecook.cn/zhuti/874/');
INSERT INTO `cook_hot` VALUES ('主食', 'https://m.ecook.cn/zhuti/3649/');
INSERT INTO `cook_hot` VALUES ('糖水', 'https://m.ecook.cn/zhuti/3909/');
INSERT INTO `cook_hot` VALUES ('肥肉', 'https://m.ecook.cn/zhuti/940/');
INSERT INTO `cook_hot` VALUES ('戚风', 'https://m.ecook.cn/zhuti/12144/');
INSERT INTO `cook_hot` VALUES ('豆浆', 'https://m.ecook.cn/zhuti/467/');
INSERT INTO `cook_hot` VALUES ('肉丝', 'https://m.ecook.cn/zhuti/4613/');
INSERT INTO `cook_hot` VALUES ('鸡汤', 'https://m.ecook.cn/zhuti/93/');
INSERT INTO `cook_hot` VALUES ('茄子', 'https://m.ecook.cn/zhuti/58/');
INSERT INTO `cook_hot` VALUES ('早餐', 'https://m.ecook.cn/zhuti/937/');
INSERT INTO `cook_hot` VALUES ('绿豆', 'https://m.ecook.cn/zhuti/453/');
INSERT INTO `cook_hot` VALUES ('酸菜', 'https://m.ecook.cn/zhuti/3361/');
INSERT INTO `cook_hot` VALUES ('粉丝', 'https://m.ecook.cn/zhuti/523/');
INSERT INTO `cook_hot` VALUES ('菠菜', 'https://m.ecook.cn/zhuti/117/');
INSERT INTO `cook_hot` VALUES ('甜品', 'https://m.ecook.cn/zhuti/4871/');
INSERT INTO `cook_hot` VALUES ('家常菜', 'https://m.ecook.cn/zhuti/18622/');
INSERT INTO `cook_hot` VALUES ('红豆', 'https://m.ecook.cn/zhuti/3607/');
INSERT INTO `cook_hot` VALUES ('火腿', 'https://m.ecook.cn/zhuti/438/');
INSERT INTO `cook_hot` VALUES ('果汁', 'https://m.ecook.cn/zhuti/916/');
INSERT INTO `cook_hot` VALUES ('面食', 'https://m.ecook.cn/zhuti/4223/');
INSERT INTO `cook_hot` VALUES ('丸子', 'https://m.ecook.cn/zhuti/4164/');
INSERT INTO `cook_hot` VALUES ('蘑菇', 'https://m.ecook.cn/zhuti/2914/');
INSERT INTO `cook_hot` VALUES ('核桃', 'https://m.ecook.cn/zhuti/665/');
INSERT INTO `cook_hot` VALUES ('啤酒', 'https://m.ecook.cn/zhuti/897/');
INSERT INTO `cook_hot` VALUES ('烧烤', 'https://m.ecook.cn/zhuti/3930/');
INSERT INTO `cook_hot` VALUES ('红薯', 'https://m.ecook.cn/zhuti/2585/');
INSERT INTO `cook_hot` VALUES ('红烧肉', 'https://m.ecook.cn/zhuti/4034/');
INSERT INTO `cook_hot` VALUES ('巧克力', 'https://m.ecook.cn/zhuti/874/');
INSERT INTO `cook_hot` VALUES ('主食', 'https://m.ecook.cn/zhuti/3649/');
INSERT INTO `cook_hot` VALUES ('糖水', 'https://m.ecook.cn/zhuti/3909/');
INSERT INTO `cook_hot` VALUES ('肥肉', 'https://m.ecook.cn/zhuti/940/');
INSERT INTO `cook_hot` VALUES ('戚风', 'https://m.ecook.cn/zhuti/12144/');
INSERT INTO `cook_hot` VALUES ('豆浆', 'https://m.ecook.cn/zhuti/467/');
INSERT INTO `cook_hot` VALUES ('肉丝', 'https://m.ecook.cn/zhuti/4613/');
INSERT INTO `cook_hot` VALUES ('鸡汤', 'https://m.ecook.cn/zhuti/93/');
INSERT INTO `cook_hot` VALUES ('茄子', 'https://m.ecook.cn/zhuti/58/');
INSERT INTO `cook_hot` VALUES ('早餐', 'https://m.ecook.cn/zhuti/937/');
INSERT INTO `cook_hot` VALUES ('绿豆', 'https://m.ecook.cn/zhuti/453/');
INSERT INTO `cook_hot` VALUES ('酸菜', 'https://m.ecook.cn/zhuti/3361/');
INSERT INTO `cook_hot` VALUES ('粉丝', 'https://m.ecook.cn/zhuti/523/');
INSERT INTO `cook_hot` VALUES ('菠菜', 'https://m.ecook.cn/zhuti/117/');
INSERT INTO `cook_hot` VALUES ('甜品', 'https://m.ecook.cn/zhuti/4871/');
INSERT INTO `cook_hot` VALUES ('家常菜', 'https://m.ecook.cn/zhuti/18622/');
INSERT INTO `cook_hot` VALUES ('红豆', 'https://m.ecook.cn/zhuti/3607/');
INSERT INTO `cook_hot` VALUES ('火腿', 'https://m.ecook.cn/zhuti/438/');
INSERT INTO `cook_hot` VALUES ('果汁', 'https://m.ecook.cn/zhuti/916/');
INSERT INTO `cook_hot` VALUES ('面食', 'https://m.ecook.cn/zhuti/4223/');
INSERT INTO `cook_hot` VALUES ('丸子', 'https://m.ecook.cn/zhuti/4164/');
INSERT INTO `cook_hot` VALUES ('蘑菇', 'https://m.ecook.cn/zhuti/2914/');
INSERT INTO `cook_hot` VALUES ('核桃', 'https://m.ecook.cn/zhuti/665/');
INSERT INTO `cook_hot` VALUES ('啤酒', 'https://m.ecook.cn/zhuti/897/');
INSERT INTO `cook_hot` VALUES ('烧烤', 'https://m.ecook.cn/zhuti/3930/');
INSERT INTO `cook_hot` VALUES ('红薯', 'https://m.ecook.cn/zhuti/2585/');
INSERT INTO `cook_hot` VALUES ('红烧肉', 'https://m.ecook.cn/zhuti/4034/');
INSERT INTO `cook_hot` VALUES ('巧克力', 'https://m.ecook.cn/zhuti/874/');
INSERT INTO `cook_hot` VALUES ('主食', 'https://m.ecook.cn/zhuti/3649/');
INSERT INTO `cook_hot` VALUES ('糖水', 'https://m.ecook.cn/zhuti/3909/');
INSERT INTO `cook_hot` VALUES ('肥肉', 'https://m.ecook.cn/zhuti/940/');
INSERT INTO `cook_hot` VALUES ('戚风', 'https://m.ecook.cn/zhuti/12144/');
INSERT INTO `cook_hot` VALUES ('豆浆', 'https://m.ecook.cn/zhuti/467/');
INSERT INTO `cook_hot` VALUES ('肉丝', 'https://m.ecook.cn/zhuti/4613/');
INSERT INTO `cook_hot` VALUES ('鸡汤', 'https://m.ecook.cn/zhuti/93/');
INSERT INTO `cook_hot` VALUES ('茄子', 'https://m.ecook.cn/zhuti/58/');
INSERT INTO `cook_hot` VALUES ('早餐', 'https://m.ecook.cn/zhuti/937/');
INSERT INTO `cook_hot` VALUES ('绿豆', 'https://m.ecook.cn/zhuti/453/');
INSERT INTO `cook_hot` VALUES ('酸菜', 'https://m.ecook.cn/zhuti/3361/');
INSERT INTO `cook_hot` VALUES ('粉丝', 'https://m.ecook.cn/zhuti/523/');
INSERT INTO `cook_hot` VALUES ('菠菜', 'https://m.ecook.cn/zhuti/117/');
INSERT INTO `cook_hot` VALUES ('甜品', 'https://m.ecook.cn/zhuti/4871/');
INSERT INTO `cook_hot` VALUES ('家常菜', 'https://m.ecook.cn/zhuti/18622/');
INSERT INTO `cook_hot` VALUES ('红豆', 'https://m.ecook.cn/zhuti/3607/');
INSERT INTO `cook_hot` VALUES ('火腿', 'https://m.ecook.cn/zhuti/438/');
INSERT INTO `cook_hot` VALUES ('果汁', 'https://m.ecook.cn/zhuti/916/');
INSERT INTO `cook_hot` VALUES ('面食', 'https://m.ecook.cn/zhuti/4223/');
INSERT INTO `cook_hot` VALUES ('丸子', 'https://m.ecook.cn/zhuti/4164/');
INSERT INTO `cook_hot` VALUES ('蘑菇', 'https://m.ecook.cn/zhuti/2914/');
INSERT INTO `cook_hot` VALUES ('核桃', 'https://m.ecook.cn/zhuti/665/');
INSERT INTO `cook_hot` VALUES ('啤酒', 'https://m.ecook.cn/zhuti/897/');
INSERT INTO `cook_hot` VALUES ('烧烤', 'https://m.ecook.cn/zhuti/3930/');
INSERT INTO `cook_hot` VALUES ('红薯', 'https://m.ecook.cn/zhuti/2585/');

-- ----------------------------
-- Table structure for cook_list
-- ----------------------------
DROP TABLE IF EXISTS `cook_list`;
CREATE TABLE `cook_list`  (
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `img1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fans` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `foucs` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `menu` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cook_list
-- ----------------------------
INSERT INTO `cook_list` VALUES ('https://pic.ecook.cn/web/262270674.jpg!wd320', '十味 多汁猪肉煎饺', 1, 'https://m.ecook.cn/caipu/262270721', 'https://pic.ecook.cn/web/255406710.jpg!s1', 'https://m.ecook.cn/resources/m/images/girl.png', '7607', '239', '82', '挪红美食');
INSERT INTO `cook_list` VALUES ('https://pic.ecook.cn/web/261854696.jpg!wd320', '十味  虾干蒸冬瓜\n', 2, 'https://m.ecook.cn/caipu/261854703', 'https://pic.ecook.cn/web/264915898.jpg!s1', 'https://m.ecook.cn/resources/m/images/girl.png', '7600', '96', '673', '黄小芽');
INSERT INTO `cook_list` VALUES ('https://pic.ecook.cn/web/262254139.jpg!wd320', '鲜美多汁、入口即化的——清蒸鳕鱼', 3, 'https://m.ecook.cn/caipu/262254093', 'https://pic.ecook.cn/web/242249312.jpg!s1', 'https://m.ecook.cn/resources/m/images/boy.png', '4567', '1', '514', '小圆食记');
INSERT INTO `cook_list` VALUES ('https://pic.ecook.cn/web/262253028.jpg!wd320', '毛豆炒羊眼豆', 4, 'https://m.ecook.cn/caipu/262252846', 'https://pic.ecook.cn/web/258438148.jpg!s1', 'https://m.ecook.cn/resources/m/images/girl.png', '2043', '6', '281', '乐食记');
INSERT INTO `cook_list` VALUES ('https://pic.ecook.cn/web/262251532.jpg!wd320', '自制脆皮肠~好吃又放心', 5, 'https://m.ecook.cn/caipu/262251542', 'https://pic.ecook.cn/web/260486101.jpg!s1', 'https://m.ecook.cn/resources/m/images/girl.png', '275', '62', '62', '淼淼妈DD');
INSERT INTO `cook_list` VALUES ('https://pic.ecook.cn/web/262247433.jpg!wd320', '锡纸金针菇粉丝虾煲', 6, 'https://m.ecook.cn/caipu/262247437', 'https://pic.ecook.cn/web/260901075.jpg!s1', 'https://m.ecook.cn/resources/m/images/girl.png', '2299', '2', '116', '琪呐');
INSERT INTO `cook_list` VALUES ('https://pic.ecook.cn/web/262252836.jpg!wd320', '十味 家常豆瓣烧豆腐', 7, 'https://m.ecook.cn/caipu/262252845', 'https://pic.ecook.cn/web/260138357.jpg!s1', 'https://m.ecook.cn/resources/m/images/girl.png', '120', '4', '51', '食客祥妈妈');
INSERT INTO `cook_list` VALUES ('https://pic.ecook.cn/web/262243262.jpg!wd320', '黄豆莲藕排骨汤', 8, 'https://m.ecook.cn/caipu/262243390', 'https://pic.ecook.cn/web/249008139.jpg!s1', 'https://m.ecook.cn/resources/m/images/girl.png', '2616', '2', '303', '罐头视频');
INSERT INTO `cook_list` VALUES ('https://pic.ecook.cn/web/265053541.jpg!wd320', '红烧土豆', 9, 'https://m.ecook.cn/caipu/265076911', 'https://pic.ecook.cn/web/262106701.jpg!s1', 'https://m.ecook.cn/resources/m/images/girl.png', '3432', '1', '568', 'NANA的美食工坊');
INSERT INTO `cook_list` VALUES ('https://pic.ecook.cn/web/265053383.jpg!wd320', '蒜苗炒鸡蛋', 10, 'https://m.ecook.cn/caipu/265076786', 'https://pic.ecook.cn/web/263056429.jpg!s1', 'https://m.ecook.cn/resources/m/images/girl.png', '568', '8', '523', '优雅的长围巾');
INSERT INTO `cook_list` VALUES ('https://pic.ecook.cn/web/265053322.jpg!wd320', '麻辣鸭脖#川菜#', 11, 'https://m.ecook.cn/caipu/265076722', 'https://pic.ecook.cn/web/263056429.jpg!s1', 'https://m.ecook.cn/resources/m/images/girl.png', '2168', '8', '523', '优雅的长围巾');
INSERT INTO `cook_list` VALUES ('https://pic.ecook.cn/web/265053335.jpg!wd320', '冬瓜鸡蛋汤', 12, 'https://m.ecook.cn/caipu/265076721', 'https://pic.ecook.cn/web/264350914.jpg!s1', 'https://m.ecook.cn/resources/m/images/girl.png', '5975', '7', '415', 'hb俗人');
INSERT INTO `cook_list` VALUES ('https://pic.ecook.cn/web/265053280.jpg!wd320', '香辣肉丝', 13, 'https://m.ecook.cn/caipu/265076649', 'https://pic.ecook.cn/web/265061713.jpg!s1', 'https://m.ecook.cn/resources/m/images/girl.png', '5', '29', '21', '图图逗比小厨娘');
INSERT INTO `cook_list` VALUES ('https://pic.ecook.cn/web/265053204.jpg!wd320', '红烧土豆', 14, 'https://m.ecook.cn/caipu/265076530', 'https://pic.ecook.cn/web/263510808.jpg!s1', 'https://m.ecook.cn/resources/m/images/girl.png', '13623', '83', '221', '小龙女-cc');
INSERT INTO `cook_list` VALUES ('https://pic.ecook.cn/web/265053135.jpg!wd320', '红烧土豆', 15, 'https://m.ecook.cn/caipu/265076529', 'https://pic.ecook.cn/web/264965325.jpg!s1', 'https://m.ecook.cn/resources/m/images/girl.png', '11', '22', '49', '玩美煮艺');
INSERT INTO `cook_list` VALUES ('https://pic.ecook.cn/web/265053020.jpg!wd320', '自制麻辣烫', 16, 'https://m.ecook.cn/caipu/265076346', 'https://pic.ecook.cn/web/264929927.jpg!s1', 'https://m.ecook.cn/resources/m/images/girl.png', '27', '14', '103', '琳子厨记');
INSERT INTO `cook_list` VALUES ('https://pic.ecook.cn/web/265043483.jpg!wd320', '小炒牛肉', 17, 'https://m.ecook.cn/caipu/265060533', 'https://pic.ecook.cn/web/264562141.jpg!s1', 'https://m.ecook.cn/resources/m/images/girl.png', '2921', '712', '378', '阿晨悠悠');
INSERT INTO `cook_list` VALUES ('https://pic.ecook.cn/web/265037354.jpg!wd320', '香菇肉片', 18, 'https://m.ecook.cn/caipu/265058096', 'https://pic.ecook.cn/web/265048978.jpg!s1', 'https://m.ecook.cn/resources/m/images/boy.png', '750', '20', '120', '萶天');
INSERT INTO `cook_list` VALUES ('https://pic.ecook.cn/web/265047157.jpg!wd320', '冬瓜鸡蛋汤', 19, 'https://m.ecook.cn/caipu/265058029', 'https://pic.ecook.cn/web/264496743.jpg!s1', 'https://m.ecook.cn/resources/m/images/girl.png', '294', '12', '416', '~小海豚~');
INSERT INTO `cook_list` VALUES ('https://pic.ecook.cn/web/265045529.jpg!wd320', '爆炒牛肚', 20, 'https://m.ecook.cn/caipu/265062602', 'https://pic.ecook.cn/web/264929927.jpg!s1', 'https://m.ecook.cn/resources/m/images/girl.png', '27', '14', '103', '琳子厨记');
INSERT INTO `cook_list` VALUES ('https://pic.ecook.cn/web/265048150.jpg!wd320', '红烧土豆', 21, 'https://m.ecook.cn/caipu/265063241', 'https://pic.ecook.cn/web/257722668.jpg!s1', 'https://m.ecook.cn/resources/m/images/girl.png', '9799', '20', '562', '抹茶16');
INSERT INTO `cook_list` VALUES ('https://pic.ecook.cn/web/265045542.jpg!wd320', '麻辣拌', 22, 'https://m.ecook.cn/caipu/265060599', 'https://pic.ecook.cn/web/263598156.jpg!s1', 'https://m.ecook.cn/resources/m/images/girl.png', '25118', '117', '330', '老方小雨');
INSERT INTO `cook_list` VALUES ('https://pic.ecook.cn/web/265037436.jpg!wd320', '川菜之灵魂–毛血旺', 23, 'https://m.ecook.cn/caipu/265062600', 'https://pic.ecook.cn/web/265040060.jpg!s1', 'https://m.ecook.cn/resources/m/images/girl.png', '9896', '67', '221', '橘子小厨');
INSERT INTO `cook_list` VALUES ('https://pic.ecook.cn/web/265036666.jpg!wd320', '桂花红糖糯米团子，口感糯叽叽，淡淡桂花香，让人食欲大开。', 24, 'https://m.ecook.cn/caipu/265063950', 'https://pic.ecook.cn/web/265063901.jpg!s1', 'https://m.ecook.cn/resources/m/images/girl.png', '99', '24', '264', '邱邱的厨房日记');

-- ----------------------------
-- Table structure for cook_menu
-- ----------------------------
DROP TABLE IF EXISTS `cook_menu`;
CREATE TABLE `cook_menu`  (
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `author` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `img1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `browse` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `img2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `count` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `id` int(10) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 31 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cook_menu
-- ----------------------------
INSERT INTO `cook_menu` VALUES ('饺子皮油泼面', '作者：茹絮', NULL, '4591', '', '1241', 'https://pic.ecook.cn/web/262979343.jpg!wd780', '今天给大家介绍一个饺子皮的新吃法，既简单又方便，又不会浪费饺子皮，开胃又解腻。今天这个饺子皮油泼面的做法，省去了繁琐的做面程序，太适合懒人党了，而且宽宽的面条总是觉得更好吃，做法简单到几乎没什么好写好说的，就连手残党也能轻松搞定。', 1);
INSERT INTO `cook_menu` VALUES ('香菇炒鸡蛋', '作者：我叫一尾鱼', NULL, '4624', NULL, '1507', 'https://pic.ecook.cn/web/262470642.jpg!wd780', '在鱼家，鲜香菇一般用来清炒，鲜嫩滑爽，干香菇一般用来红烧和煲汤用，味道浓厚而且多汁。鲜香菇跟蔬菜一起炒的话，又香又鲜，平时鱼喜欢拿来炒青菜、炒肉丝、炒西兰花、炒白菜、炒鸡蛋。今天跟大家分享的是香菇炒鸡蛋，特别美味的一道家常菜，鱼家二个孩子都爱吃，非常可口下饭。', 2);
INSERT INTO `cook_menu` VALUES ('西兰花炒虾仁', '作者：橘子小厨', NULL, '4171', NULL, '1499', 'https://pic.ecook.cn/web/262853689.jpg!wd780', NULL, 3);
INSERT INTO `cook_menu` VALUES ('蚂蚁上树', '作者：小姿0118', NULL, '13540', NULL, '4338', 'https://pic.ecook.cn/web/50503827.jpg!wd780', '蚂蚁上树，这是一道忽悠了全中国人的菜肴。这道菜并不是用蚂蚁炒的，其实就是肉末粉丝啦！细小的肉末沾在粉丝上，看上去正如蚂蚁在树上慢慢地往上爬，口味清淡，爽滑美味，色泽红亮，肉末贴在粉条上，肉沫香软，吃起来别有风味，而且烧起来特别家常简单！', 4);
INSERT INTO `cook_menu` VALUES ('河虾豆腐汤', '作者：乐食记', NULL, '4195', NULL, '1393', 'https://pic.ecook.cn/web/262430249.jpg!wd780', '豆腐和河虾一起煮汤，入味鲜美，营养又补钙，还能提高免疫力，做法很简单。', 5);
INSERT INTO `cook_menu` VALUES ('#猪里脊#  糖醋里脊', '作者：hb俗人', NULL, '3392', NULL, '1205', 'https://pic.ecook.cn/web/262818374.jpg!wd780', '外酥里嫩，酸甜可口', 6);
INSERT INTO `cook_menu` VALUES ('#猪年#红烧猪蹄', '作者：敏茹意', NULL, '4255', NULL, '964', 'https://pic.ecook.cn/web/262809592.jpg!wd780', '满满的胶原蛋白', 7);
INSERT INTO `cook_menu` VALUES ('黑椒土豆泥', '作者：-薄荷糖的味道-', NULL, '3078', NULL, '888', 'https://pic.ecook.cn/web/263527833.jpg!wd780', '超喜欢kfc的黑椒土豆泥，今天试做了一下。\r\n哇塞！软绵绵，夹杂着黑胡椒的香气，好吃到尖叫！喜欢的宝宝一定要试试看呀！', 8);
INSERT INTO `cook_menu` VALUES ('雪菜扣肉', '作者：郭新文美食', NULL, '3454', NULL, '765', 'https://pic.ecook.cn/web/256950708.jpg!wd780', '入口即化肥而不腻，雪菜吸收肉的香味更好吃。', 9);
INSERT INTO `cook_menu` VALUES ('香酥鸡翅', '作者：紫色勿忘我美食', NULL, '3319', NULL, '861', 'https://pic.ecook.cn/web/263495741.jpg!wd780', '今天给大家分享的这道香酥鸡块，外酥里嫩，而且还能保持长时间的酥脆，其实外面的裹粉很关键，这个方子是我做过好多次以后总结出来的，特别酥脆美味，就连我女儿都说妈妈做的鸡翅好吃到爆，比外面买的好吃多了。如果你家孩子也爱吃炸鸡翅或者炸鸡腿，只要学会鸡翅这个做法，以后再也不用出去买，香酥美味，好吃到爆。下面我就把做法分享给大家，喜欢的朋友记得收藏哦。', 10);
INSERT INTO `cook_menu` VALUES ('皮蛋瘦肉粥', '作者：薯条沾腐乳', NULL, '873', NULL, '87', 'https://pic.ecook.cn/web/264217677.jpg!wd780', NULL, 11);
INSERT INTO `cook_menu` VALUES ('家庭版自制烤鱼', '作者：沙小囡', NULL, '2254', NULL, '235', 'https://pic.ecook.cn/web/263728831.jpg!wd780', '冬天火锅，夏天烧烤，心里热闹时，才愿意做这道菜。\r\n和火锅一样，烤鱼也是群居动物的菜。\r\n一个人吃难免寂寞，一群人围坐才有气氛。\r\n想吃？\r\n那就自己动手，程序不算麻烦，味道棒棒哒。\r\n外面的烤鱼店生意也是非常红火的，只是人流太密集，囡姐去吃过几次，点餐后排队等候的时间太长，都要饿的不行了。因为家里没有烤箱，在家经常想吃烤鱼而不得法，但学会了囡姐今天分享黑大家的这个方法，就算在家也能做烤鱼了，快来一起看看吧。', 12);
INSERT INTO `cook_menu` VALUES ('琐碎金鳞软玉膏➕家常红烧黄鱼', '作者：阿晨悠悠', NULL, '536', NULL, '80', 'https://pic.ecook.cn/web/262947462.jpg!wd780', '\r\n胡萝卜：胡萝卜是一种质脆味美、营养丰富的家常蔬菜，素有“小人参”之称。', 13);
INSERT INTO `cook_menu` VALUES ('炸酥带鱼', '作者：妙江南', NULL, '522', NULL, '70', 'https://pic.ecook.cn/web/264046754.jpg!wd780', '酥炸带鱼色泽金黄，外酥里嫩！', 14);
INSERT INTO `cook_menu` VALUES ('椒盐里脊', '作者：茗茗爱美食', NULL, '581', NULL, '666', 'https://pic.ecook.cn/web/264743489.jpg!wd780', '不用油炸的椒盐里脊，比烤肉还美味！', 15);
INSERT INTO `cook_menu` VALUES ('金牌海蛎子煎', '作者：月色家的小厨房', NULL, '763', NULL, '167', 'https://pic.ecook.cn/web/263198536.jpg!wd780', '从小吃到大都吃不够的海蛎子，鲜美营养丰富，今天做的海蛎子煎，是福建地域的特色小吃，口感鲜香浓郁，鲜甜嫩滑又营养，适合所有人的一道海鲜小炒哟……', 16);
INSERT INTO `cook_menu` VALUES ('奶白鲫鱼豆腐汤➕朝看白水暮青山', '作者：阿晨悠悠', NULL, '883', NULL, '441', 'https://pic.ecook.cn/web/264351745.jpg!wd780', '\r\n感兴趣的小伙伴们，一起来看看吧', 17);
INSERT INTO `cook_menu` VALUES ('肉末青瓜', '作者：薯条沾腐乳', NULL, '1083', NULL, '54', 'https://pic.ecook.cn/web/264216683.jpg!wd780', '可以用来拌面条、下米饭，非常开胃的一款家常菜。', 18);
INSERT INTO `cook_menu` VALUES ('冬瓜薏米汤', '作者：薯条沾腐乳', NULL, '729', NULL, '64', 'https://pic.ecook.cn/web/264731615.jpg!wd780', '冬瓜润肺生津、化痰止咳、减肥降脂、美容养颜； 薏米有健脾去湿、舒筋除痹、清热排脓等功效。', 19);
INSERT INTO `cook_menu` VALUES ('胡萝卜炖羊肉', '作者：妙江南', NULL, '643', NULL, '67', 'https://pic.ecook.cn/web/264165336.jpg!wd780', '羊肉：羊肉鲜嫩，营养价值高，凡肾阳不足、腰膝酸软、腹中冷痛、虚劳不足者皆可用它作食疗品。\r\n胡萝卜：胡萝卜是一种质脆味美、营养丰富的家常蔬菜，素有“小人参”之称。', 20);
INSERT INTO `cook_menu` VALUES ('酸甜可口的草莓脆米粉球', '作者：西蘭', NULL, '656', NULL, '74', 'https://pic.ecook.cn/web/263100108.jpg!wd780', '宝宝不爱吃单调的米粉糊，所以总想着办法做成他爱吃的零食。这次做了草莓脆米粉球，松软香甜的米粉加上酸酸甜甜的草莓脆，出乎意料的好吃，来，喜欢的一起做吧～~', 21);
INSERT INTO `cook_menu` VALUES ('宝宝南瓜磨牙棒', '作者：满妈厨房', NULL, '802', NULL, '645', 'https://pic.ecook.cn/web/262144433.jpg!wd780', '这款磨牙棒，适合刚长出乳牙的宝宝，这个阶段因为出牙不适，所以总喜欢咬东西。\r\n\r\n方子里面只用了蛋黄，因为一岁内食用蛋白有致敏的风险。如果宝宝确认过蛋白没有问题，配方也可以换成全蛋。\r\n\r\n无油无糖，很适合孩子吃，做完我都吃了不少，是真的够硬，也够脆，磨牙的效果杠杠的', 22);
INSERT INTO `cook_menu` VALUES ('抹茶毛巾卷', '作者：V-VIP', NULL, '904', NULL, '128', 'https://pic.ecook.cn/web/259994045.jpg!wd780', '近来网红美食特别多，赶下时代的潮流，之前的雪花酥大获好评。亲戚朋友的订单是源源不断，趁着大好的形势，开发新产品——【毛巾卷】\r\n为了拍上美美的照片，买了专用的英文版油纸，把家里的话给摘了，开了瓶红酒当背景，当然一口红酒一块蛋糕，唇齿留香啊。麻烦大家多多点赞咯，味道是一级棒。', 23);
INSERT INTO `cook_menu` VALUES ('翡翠蛋花肉', '作者：吃货小佛爷', NULL, '1146', NULL, '756', 'https://pic.ecook.cn/web/262647493.jpg!wd780', '豌豆又名青豆，是豆科大豆属一年生攀缘草本植物。青豆含大量的蛋白质、膳食纤维、维生素、不饱和脂肪酸、大豆磷脂等，具有较高的营养价值。豌豆有补肝养胃、滋补强壮、乌发明目、延年益寿的功效与作用。孕妇也可以吃豌豆。', 24);
INSERT INTO `cook_menu` VALUES ('番茄鹰嘴豆', '作者：薯条沾腐乳', NULL, '225', NULL, '29', 'https://pic.ecook.cn/web/264730737.jpg!wd780', '鹰嘴豆跟红豆、黄豆、绿豆等一样属于粗粮，鹰嘴豆不仅含有淀粉，还含有大量的维生素B以及膳食纤维。淀粉可以解饥，有饱胀感，可提供一定的能量，因为含有一定的葡萄糖。鹰嘴豆含有大量的维生素B，该类营养素是人体心情快乐的源泉，所以它在医学上也被称为快乐因子，所以吃鹰嘴豆可以改善抑郁情绪。还有它含大量的膳食纤维，吃完后可以使人产生饱腹感，减少其它饮食的摄入，起到减肥的作用。', 25);
INSERT INTO `cook_menu` VALUES ('健脾胃松软山药小饼', '作者：沫沫美美妈', NULL, '460', NULL, '65', 'https://pic.ecook.cn/web/264158323.jpg!wd780', '宝宝不爱吃山药？\r\n我们用山药做山药小饼，宝宝一口接一个哦。\r\n特别的好处，全家都适合。', 26);
INSERT INTO `cook_menu` VALUES ('玩转苏泊尔醇浆机(二)紫薯豆浆', '作者：真馜花', NULL, '380', NULL, '60', 'https://pic.ecook.cn/web/256883502.jpg!wd780', '苏泊尔大磨头真磨醇浆机DJ12B-M05，它是用石磨技术碾磨，成品非常细腻。玩转豆浆，这次做的是紫薯豆浆。', 27);
INSERT INTO `cook_menu` VALUES ('醪糟蛋花汤', '作者：月色家的小厨房', NULL, '461', NULL, '74', 'https://pic.ecook.cn/web/263685024.jpg!wd780', '醪糟里面它有糯米，所以它能起到一个，滋补这个脾胃作用，而且它里边有少量的酒精，起到一个活血化瘀，促进血液循环的作用，对于这种脾胃虚寒，手足比较冷，胃寒的人群特别适合多吃，黄桃含有能够加快人体中血液的流动速度的营养物质，能够起到很好的活血的作用，对人们常会因为气血不畅而出现的紫斑和瘀血等一些症状都能起到很好的消除的作用。', 28);
INSERT INTO `cook_menu` VALUES ('红糖年糕', '作者：火火菇凉y', NULL, '1043', NULL, '148', 'https://pic.ecook.cn/web/258030266.jpg!wd780', '印象里只有过年过节大街上才会卖年糕，年糕也算是中华传统美食，我国很多地区都有讲究吃年糕，年糕还有个寓意“年年高”……', 29);
INSERT INTO `cook_menu` VALUES ('双米南瓜粥', '作者：妙江南', NULL, '1392', NULL, '337', 'https://pic.ecook.cn/web/263341450.jpg!wd780', '双米南瓜粥，搭配了大米、小米。营养丰富，清甜可口。', 30);

-- ----------------------------
-- Table structure for cook_new
-- ----------------------------
DROP TABLE IF EXISTS `cook_new`;
CREATE TABLE `cook_new`  (
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `id` int(10) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cook_new
-- ----------------------------
INSERT INTO `cook_new` VALUES ('冰淇淋', 'https://m.ecook.cn/zhuti/918/', 1);
INSERT INTO `cook_new` VALUES ('豆芽', 'https://m.ecook.cn/zhuti/120/', 2);
INSERT INTO `cook_new` VALUES ('炒饭', 'https://m.ecook.cn/zhuti/4386/', 3);
INSERT INTO `cook_new` VALUES ('奶粉', 'https://m.ecook.cn/zhuti/1124/', 4);
INSERT INTO `cook_new` VALUES ('小麦', 'https://m.ecook.cn/zhuti/511/', 5);
INSERT INTO `cook_new` VALUES ('饮料', 'https://m.ecook.cn/zhuti/10074/', 6);
INSERT INTO `cook_new` VALUES ('西瓜', 'https://m.ecook.cn/zhuti/605/', 7);
INSERT INTO `cook_new` VALUES ('肉末', 'https://m.ecook.cn/zhuti/442/', 8);
INSERT INTO `cook_new` VALUES ('橄榄', 'https://m.ecook.cn/zhuti/617/', 9);
INSERT INTO `cook_new` VALUES ('黄酒', 'https://m.ecook.cn/zhuti/894/', 10);
INSERT INTO `cook_new` VALUES ('咖啡', 'https://m.ecook.cn/zhuti/917/', 11);
INSERT INTO `cook_new` VALUES ('虾仁', 'https://m.ecook.cn/zhuti/287/', 12);
INSERT INTO `cook_new` VALUES ('芝士', 'https://m.ecook.cn/zhuti/935/', 13);
INSERT INTO `cook_new` VALUES ('芒果', 'https://m.ecook.cn/zhuti/598/', 14);
INSERT INTO `cook_new` VALUES ('料理机', 'https://m.ecook.cn/zhuti/12052/', 15);
INSERT INTO `cook_new` VALUES ('豆沙', 'https://m.ecook.cn/zhuti/6517/', 16);
INSERT INTO `cook_new` VALUES ('慕斯', 'https://m.ecook.cn/zhuti/8455/', 17);
INSERT INTO `cook_new` VALUES ('草莓', 'https://m.ecook.cn/zhuti/592/', 18);
INSERT INTO `cook_new` VALUES ('布丁', 'https://m.ecook.cn/zhuti/4165/', 19);
INSERT INTO `cook_new` VALUES ('菠萝', 'https://m.ecook.cn/zhuti/597/', 20);
INSERT INTO `cook_new` VALUES ('奶酪', 'https://m.ecook.cn/zhuti/884/', 21);
INSERT INTO `cook_new` VALUES ('咖喱', 'https://m.ecook.cn/zhuti/693/', 22);
INSERT INTO `cook_new` VALUES ('甜点', 'https://m.ecook.cn/zhuti/4985/', 23);
INSERT INTO `cook_new` VALUES ('牛油', 'https://m.ecook.cn/zhuti/854/', 24);

-- ----------------------------
-- Table structure for cook_shipin
-- ----------------------------
DROP TABLE IF EXISTS `cook_shipin`;
CREATE TABLE `cook_shipin`  (
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `id` int(10) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cook_shipin
-- ----------------------------
INSERT INTO `cook_shipin` VALUES ('https://pic.ecook.cn/web/261095277.jpg!wd320', '2:8', '一个能看世界杯的夏天，喝着啤酒再来盘五香花生，看球才过瘾', 1);
INSERT INTO `cook_shipin` VALUES ('https://pic.ecook.cn/web/262254139.jpg!wd320', '1:17', '鲜美多汁、入口即化的——清蒸鳕鱼', 2);
INSERT INTO `cook_shipin` VALUES ('https://pic.ecook.cn/web/262243262.jpg!wd320', '3:57', '黄豆莲藕排骨汤', 3);
INSERT INTO `cook_shipin` VALUES ('https://pic.ecook.cn/web/259748831.jpg!wd320', '1:38', '网红米饭', 4);
INSERT INTO `cook_shipin` VALUES ('https://pic.ecook.cn/web/260475756.jpg!wd320', '1:13', '最开胃的下饭菜毛豆炒肉末', 5);
INSERT INTO `cook_shipin` VALUES ('https://pic.ecook.cn/web/262771895.jpg!wd320', '2:14', '培根鸡蛋煎饼，吃完又是元气满满的一天', 6);
INSERT INTO `cook_shipin` VALUES ('https://pic.ecook.cn/web/262235157.jpg!wd320', '1:29', '快手番茄疙瘩汤', 7);
INSERT INTO `cook_shipin` VALUES ('https://pic.ecook.cn/web/50498501.jpg!wd320', '1:36', '厨师长拿手菜，农家回锅肉，必吃三大碗饭！', 8);
INSERT INTO `cook_shipin` VALUES ('https://pic.ecook.cn/web/260728527.jpg!wd320', '2:49', '木耳炒山药—脆嫩爽口、营养美味，吃的出的健康，赶紧做起来', 9);
INSERT INTO `cook_shipin` VALUES ('https://pic.ecook.cn/web/261896921.jpg!wd320', '0:50', '满杯西柚', 10);
INSERT INTO `cook_shipin` VALUES ('https://pic.ecook.cn/web/260376085.jpg!wd320', '1:27', '如何蒸出完美的水蒸蛋，有99%的成功率，包教包会。', 11);
INSERT INTO `cook_shipin` VALUES ('https://pic.ecook.cn/web/259752582.jpg!wd320', '1:56', '咸蛋黄虾仁炒饭，自制巨美味的炒饭，这些年炒饭都白吃了！', 12);
INSERT INTO `cook_shipin` VALUES ('https://pic.ecook.cn/web/261593699.jpg!wd320', '0:55', '网红爆浆珍珠吐司', 13);
INSERT INTO `cook_shipin` VALUES ('https://pic.ecook.cn/web/260429750.jpg!wd320', '3:30', '纸杯蛋糕', 14);
INSERT INTO `cook_shipin` VALUES ('https://pic.ecook.cn/web/261828159.jpg!wd320', '1:15', '这杯水蜜桃奶昔有着粉粉嫩嫩的外在，细腻柔滑的口感，好好喝', 15);
INSERT INTO `cook_shipin` VALUES ('https://pic.ecook.cn/web/260545799.jpg!wd320', '1:43', '牛肉丝这样炒很嫩哦，不妨试试看', 16);
INSERT INTO `cook_shipin` VALUES ('https://pic.ecook.cn/web/265062604.jpg!wd320', '1:2', '清蒸螃蟹', 17);
INSERT INTO `cook_shipin` VALUES ('https://pic.ecook.cn/web/265026414.jpg!wd320', '1:3', '小炒牛肉', 18);
INSERT INTO `cook_shipin` VALUES ('https://pic.ecook.cn/web/265003387.jpg!wd320', '1:12', '耳光炒饭（内附视频）', 19);
INSERT INTO `cook_shipin` VALUES ('https://pic.ecook.cn/web/265002933.jpg!wd320', '0:35', '酥脆的芝麻黄油薄脆', 20);
INSERT INTO `cook_shipin` VALUES ('https://pic.ecook.cn/web/264998104.jpg!wd320', '1:42', '耳光炒饭', 21);
INSERT INTO `cook_shipin` VALUES ('https://pic.ecook.cn/web/264994586.jpg!wd320', '3:7', '耳光炒饭', 22);
INSERT INTO `cook_shipin` VALUES ('https://pic.ecook.cn/web/264990751.jpg!wd320', '0:31', '【视频】耳光炒饭', 23);
INSERT INTO `cook_shipin` VALUES ('https://pic.ecook.cn/web/264917176.jpg!wd320', '0:14', '全麦坚果酸奶沙拉快手减脂餐', 24);

-- ----------------------------
-- Table structure for cook_step
-- ----------------------------
DROP TABLE IF EXISTS `cook_step`;
CREATE TABLE `cook_step`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `browse` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `count` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ask` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `step` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `publish` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cook_step
-- ----------------------------
INSERT INTO `cook_step` VALUES (1, '感冒可以喝胡萝卜、玉米瘦肉汤吗？', '550', '0', '', '感冒比较适合吃清淡的，这个还算清淡，感冒要多喝水，注意休息！', 'https://pic.ecook.cn/web/4606861.jpg!s1', '玉建芝鑫', '2020年01月06日 10:09');
INSERT INTO `cook_step` VALUES (2, '番茄薯仔玉米红萝卜瘦肉汤怎样煲？？', '485', '0', '', '猪瘦肉切三至四厘米的方块，先用加了料酒葱姜的水焯一下，取出冲去血沫.然后在汤煲中放入切成块的玉米胡萝卜蕃茄小土豆（或者大的土豆切成块也是可以的）再放入猪瘦肉块。添入鲜汤（也可以放入一个浓汤宝或者白水加上高汤精也是可以的）放入葱结姜片。大火烧开小火煲炖一个小时以盐少许生抽调味即可.', 'https://pic.ecook.cn/web/4783801.jpg!s1', '常盼', '2020年01月06日 10:09');
INSERT INTO `cook_step` VALUES (3, '胡萝卜与什么搭配做汤最好？', '627', '1', '', '????', 'https://pic.ecook.cn/web/11998013.jpg!s1', '厨友1596958955', '2020年08月09日 15:59');
INSERT INTO `cook_step` VALUES (4, '玉米猪肉鸡蛋怎样做汤', '426', '0', '', '二两猪肉切薄片，先加水500毫升，煮开；一根玉米切小段，3段，5厘米，另锅煮开；玉米段加入肉汤中，和一起，烧开，打一个鸡蛋花，下锅，开着锅盖，滚了就行。食物就是各自煮熟再混合的技术。', 'https://pic.ecook.cn/web/4681779.jpg!s1', '邵淋飞', '2020年01月06日 10:09');

-- ----------------------------
-- Table structure for cook_swiper
-- ----------------------------
DROP TABLE IF EXISTS `cook_swiper`;
CREATE TABLE `cook_swiper`  (
  `id` int(10) NOT NULL,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cook_swiper
-- ----------------------------
INSERT INTO `cook_swiper` VALUES (1, 'https://pic.ecook.cn/web/264460137.jpg!wh882', '芹菜拌腐竹');
INSERT INTO `cook_swiper` VALUES (2, 'https://pic.ecook.cn/web/264460061.jpg!wh882', '花蛤粉丝');

-- ----------------------------
-- Table structure for cook_tab
-- ----------------------------
DROP TABLE IF EXISTS `cook_tab`;
CREATE TABLE `cook_tab`  (
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `tab` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 65 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cook_tab
-- ----------------------------
INSERT INTO `cook_tab` VALUES ('夏日蜜桃红柚坚果蔬菜沙拉', 'https://m.ecook.cn/toutiao/2759', 1, '0');
INSERT INTO `cook_tab` VALUES ('在大理古城吃狗粮，在洱海湖畔爆龙虾', 'https://m.ecook.cn/toutiao/2601', 2, '0');
INSERT INTO `cook_tab` VALUES ('汤匙、茶匙的用量你了解吗？', 'https://m.ecook.cn/toutiao/1710', 3, '0');
INSERT INTO `cook_tab` VALUES ('西藏路上3：久别重逢来一顿牛肉火锅，失足跌落山崖竟滚回山中小院', 'https://m.ecook.cn/toutiao/2667', 4, '0');
INSERT INTO `cook_tab` VALUES ('给凉亭做个新发型，在凉亭下啃盆猪蹄，喝杯石榴汁', 'https://m.ecook.cn/toutiao/2752', 5, '0');
INSERT INTO `cook_tab` VALUES ('法兰西牛油果奶酪水果塔', 'https://m.ecook.cn/toutiao/2758', 6, '0');
INSERT INTO `cook_tab` VALUES ('新叶古村觅食游记', 'https://m.ecook.cn/toutiao/830', 7, '0');
INSERT INTO `cook_tab` VALUES ('最美的不是下雨天，是我们一起修过的屋檐', 'https://m.ecook.cn/toutiao/2715', 8, '0');
INSERT INTO `cook_tab` VALUES ('《野居青年》把院子里的老树根挖出来做个茶几，夜深了品上一杯清茶', 'https://m.ecook.cn/toutiao/1502', 9, '0');
INSERT INTO `cook_tab` VALUES ('泡面谁都吃过，可把泡面拍成大片你肯定没见过', 'https://m.ecook.cn/toutiao/2399', 10, '0');
INSERT INTO `cook_tab` VALUES ('手把手教你制作家常美味馅饼', 'https://m.ecook.cn/toutiao/2748', 11, '0');
INSERT INTO `cook_tab` VALUES ('西藏路上2：野外做陷阱捕获一头野猪，填饱肚子继续上路', 'https://m.ecook.cn/toutiao/2666', 12, '0');
INSERT INTO `cook_tab` VALUES ('甜甜失踪，肥圆失忆，洋气一个人如何走到青藏高原', 'https://m.ecook.cn/toutiao/2632', 13, '0');
INSERT INTO `cook_tab` VALUES ('回到深山小院，清除杂草，修缮狗窝，再做上三个家常', 'https://m.ecook.cn/toutiao/2675', 14, '0');
INSERT INTO `cook_tab` VALUES ('花看半开，酒饮微醺，是人生最好的状态，适合女生的酒！', 'https://m.ecook.cn/toutiao/2711', 15, '0');
INSERT INTO `cook_tab` VALUES ('我来到你的城市，只为打卡那家店', 'https://m.ecook.cn/toutiao/1538', 16, '0');
INSERT INTO `cook_tab` VALUES ('下饭菜的做法', 'https://m.ecook.cn/caipu/fenlei7136544/', 17, '1');
INSERT INTO `cook_tab` VALUES ('早餐的做法', 'https://m.ecook.cn/caipu/fenlei7136465/', 18, '1');
INSERT INTO `cook_tab` VALUES ('备孕的做法', 'https://m.ecook.cn/caipu/fenlei257353774/', 19, '1');
INSERT INTO `cook_tab` VALUES ('面包的做法', 'https://m.ecook.cn/caipu/fenlei257354223/', 20, '1');
INSERT INTO `cook_tab` VALUES ('夏季时令的做法', 'https://m.ecook.cn/caipu/fenlei257353359/', 21, '1');
INSERT INTO `cook_tab` VALUES ('宿舍的做法', 'https://m.ecook.cn/caipu/fenlei257354580/', 22, '1');
INSERT INTO `cook_tab` VALUES ('亲子派对的做法', 'https://m.ecook.cn/caipu/fenlei257354579/', 23, '1');
INSERT INTO `cook_tab` VALUES ('温补驱寒的做法', 'https://m.ecook.cn/caipu/fenlei257354386/', 24, '1');
INSERT INTO `cook_tab` VALUES ('家常菜的做法', 'https://m.ecook.cn/caipu/fenlei7136536/', 25, '1');
INSERT INTO `cook_tab` VALUES ('孕期的做法', 'https://m.ecook.cn/caipu/fenlei257353775/', 26, '1');
INSERT INTO `cook_tab` VALUES ('煲仔饭的做法', 'https://m.ecook.cn/caipu/fenlei257354603/', 27, '1');
INSERT INTO `cook_tab` VALUES ('披萨的做法', 'https://m.ecook.cn/caipu/fenlei257354234/', 28, '1');
INSERT INTO `cook_tab` VALUES ('春季时令的做法', 'https://m.ecook.cn/caipu/fenlei257353357/', 29, '1');
INSERT INTO `cook_tab` VALUES ('米食的做法', 'https://m.ecook.cn/caipu/fenlei234457427/', 30, '1');
INSERT INTO `cook_tab` VALUES ('凉菜沙拉的做法', 'https://m.ecook.cn/caipu/fenlei257353007/', 31, '1');
INSERT INTO `cook_tab` VALUES ('烘焙的做法', 'https://m.ecook.cn/caipu/fenlei257354226/', 32, '1');
INSERT INTO `cook_tab` VALUES ('冰箱冷藏里面会结冰，有什么解决方法', 'https://m.ecook.cn/wenda/6056', 33, '2');
INSERT INTO `cook_tab` VALUES ('香菜单独做一道菜，要怎么样才好吃？', 'https://m.ecook.cn/wenda/6080', 34, '2');
INSERT INTO `cook_tab` VALUES ('猪脚（猪蹄，猪肘，猪蹄膀等）都有哪些适用于家庭厨房，且美味绝佳的做法？', 'https://m.ecook.cn/wenda/6109', 35, '2');
INSERT INTO `cook_tab` VALUES ('使用不同的食器对享受食物的影响能有多大？', 'https://m.ecook.cn/wenda/6084', 36, '2');
INSERT INTO `cook_tab` VALUES ('盐放多了除了加水还有什么办法能去咸味？', 'https://m.ecook.cn/wenda/6212', 37, '2');
INSERT INTO `cook_tab` VALUES ('长期不吃米饭馒头面条等主食是什么感受？', 'https://m.ecook.cn/wenda/5976', 38, '2');
INSERT INTO `cook_tab` VALUES ('炒菜需要放多少盐，总是掌握不好，炒起来很难吃！！', 'https://m.ecook.cn/wenda/6184', 39, '2');
INSERT INTO `cook_tab` VALUES ('为何机械剁肉没菜刀剁肉好吃呢？？？', 'https://m.ecook.cn/wenda/6106', 40, '2');
INSERT INTO `cook_tab` VALUES ('馄饨（云吞）怎么包，有什么技巧没？', 'https://m.ecook.cn/wenda/6107', 41, '2');
INSERT INTO `cook_tab` VALUES ('怎么把西红柿做成那种浓浓的香味的汁？除开勾芡之外', 'https://m.ecook.cn/wenda/6146', 42, '2');
INSERT INTO `cook_tab` VALUES ('請問大家 什麼是料酒啊？', 'https://m.ecook.cn/wenda/6264', 43, '2');
INSERT INTO `cook_tab` VALUES ('为什么做饭锅里起火呢？', 'https://m.ecook.cn/wenda/6281', 44, '2');
INSERT INTO `cook_tab` VALUES ('面包机在什么地方买买什么牌子的好', 'https://m.ecook.cn/wenda/6292', 45, '2');
INSERT INTO `cook_tab` VALUES ('怎么做成都的冷锅串串香？那个盆子里面的汤底是什么？', 'https://m.ecook.cn/wenda/6108', 46, '2');
INSERT INTO `cook_tab` VALUES ('油炸食物凉了以后吃热量会不会更低？', 'https://m.ecook.cn/wenda/5855', 47, '2');
INSERT INTO `cook_tab` VALUES ('如何做一碗完美的葱油拌面？', 'https://m.ecook.cn/wenda/6085', 48, '2');
INSERT INTO `cook_tab` VALUES ('草菠萝主题', 'https://m.ecook.cn/zhuti/2391/', 49, '3');
INSERT INTO `cook_tab` VALUES ('缢蛏主题', 'https://m.ecook.cn/zhuti/1762/', 50, '3');
INSERT INTO `cook_tab` VALUES ('蛏干主题', 'https://m.ecook.cn/zhuti/1838/', 51, '3');
INSERT INTO `cook_tab` VALUES ('桃子主题', 'https://m.ecook.cn/zhuti/2407/', 52, '3');
INSERT INTO `cook_tab` VALUES ('覆盆主题', 'https://m.ecook.cn/zhuti/2416/', 53, '3');
INSERT INTO `cook_tab` VALUES ('九层皮主题', 'https://m.ecook.cn/zhuti/2343/', 54, '3');
INSERT INTO `cook_tab` VALUES ('蚝豉主题', 'https://m.ecook.cn/zhuti/1839/', 55, '3');
INSERT INTO `cook_tab` VALUES ('梨子主题', 'https://m.ecook.cn/zhuti/2404/', 56, '3');
INSERT INTO `cook_tab` VALUES ('肉牙主题', 'https://m.ecook.cn/zhuti/1832/', 57, '3');
INSERT INTO `cook_tab` VALUES ('青口主题', 'https://m.ecook.cn/zhuti/206/', 58, '3');
INSERT INTO `cook_tab` VALUES ('奶酪主题', 'https://m.ecook.cn/zhuti/884/', 59, '3');
INSERT INTO `cook_tab` VALUES ('蜜桃主题', 'https://m.ecook.cn/zhuti/645/', 60, '3');
INSERT INTO `cook_tab` VALUES ('血蚌主题', 'https://m.ecook.cn/zhuti/1784/', 61, '3');
INSERT INTO `cook_tab` VALUES ('红提子主题', 'https://m.ecook.cn/zhuti/2353/', 62, '3');
INSERT INTO `cook_tab` VALUES ('黄皮主题', 'https://m.ecook.cn/zhuti/2357/', 63, '3');
INSERT INTO `cook_tab` VALUES ('黄皮果主题', 'https://m.ecook.cn/zhuti/2355/', 64, '3');

-- ----------------------------
-- Table structure for cook_top
-- ----------------------------
DROP TABLE IF EXISTS `cook_top`;
CREATE TABLE `cook_top`  (
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `author` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `browse` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `count` int(255) NOT NULL,
  `share` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `id` int(255) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 81 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cook_top
-- ----------------------------
INSERT INTO `cook_top` VALUES ('一分钟学会养乐多的高逼格喝法，论如何优雅的喝一杯养乐多！', '葱油饼不带葱', '3353', 0, '每天一分钟，get新技能！', 'https://m.ecook.cn/toutiao/518', 'https://pic.ecook.cn/web/258936193.jpg!m3', 1);
INSERT INTO `cook_top` VALUES ('奶茶店二当家招牌奶绿，做法首次大公开！', '葱油饼不带葱', '2793', 0, '每天一分钟，get新技能！ 原料：炼乳、绿茶、白糖、冰块', 'https://m.ecook.cn/toutiao/519', 'https://pic.ecook.cn/web/258936198.jpg!m3', 2);
INSERT INTO `cook_top` VALUES (' 一分钟get【蜜菓】招牌鲜奶绿，两元就搞定，何必再花十几元！', '葱油饼不带葱', '2492', 0, '原料：炼乳50g，绿茶300ml、冰块适量 工具：杯子、长勺', 'https://m.ecook.cn/toutiao/534', 'https://pic.ecook.cn/web/258936212.jpg!m3', 3);
INSERT INTO `cook_top` VALUES ('筑地市場的壽司大', '喫饭饭', '2415', 12, '', 'https://m.ecook.cn/toutiao/572', 'https://pic.ecook.cn/web/255935513.jpg!m3', 4);
INSERT INTO `cook_top` VALUES ('山頭火拉麵', '喫饭饭', '56126', 8, '', 'https://m.ecook.cn/toutiao/577', 'https://pic.ecook.cn/web/255936345.jpg!m3', 5);
INSERT INTO `cook_top` VALUES ('歌舞伎町の虎河豚', '喫饭饭', '2202', 4, '', 'https://m.ecook.cn/toutiao/578', 'https://pic.ecook.cn/web/255936373.jpg!m3', 6);
INSERT INTO `cook_top` VALUES ('【成都探店】藏在城堡里的浪漫海鲜~', '树野酱', '1709', 8, '在城堡里不只是王子和公主~ 当然还得有美味吖 ~', 'https://m.ecook.cn/toutiao/582', 'https://pic.ecook.cn/web/256031241.jpg!m3', 7);
INSERT INTO `cook_top` VALUES ('一分钟学会牛奶别样新喝法！', '葱油饼不带葱', '1689', 4, '一分钟学会牛奶别样新喝法！', 'https://m.ecook.cn/toutiao/606', 'https://pic.ecook.cn/web/256000035.jpg!m3', 8);
INSERT INTO `cook_top` VALUES ('乡村 / 美食', '瀧Dinopuissant', '1454', 17, '终于起笔写你，我的家乡小村，一个温存我童年的地方。', 'https://m.ecook.cn/toutiao/614', 'https://pic.ecook.cn/web/256047080.jpg!m3', 9);
INSERT INTO `cook_top` VALUES ('早餐佳品鸡蛋三明治！', '葱油饼不带葱', '1680', 2, '早餐佳品鸡蛋三明治！早餐佳品鸡蛋三明治！早餐佳品鸡蛋三明治！', 'https://m.ecook.cn/toutiao/817', 'https://pic.ecook.cn/web/258936225.jpg!m3', 10);
INSERT INTO `cook_top` VALUES ('公爵的美食─威靈頓牛排', '厨房女汉子Rita\'s', '1558', 11, '西餐的起蒙─我和戈登•拉姆齐', 'https://m.ecook.cn/toutiao/864', 'https://pic.ecook.cn/web/256849192.jpg!m3', 11);
INSERT INTO `cook_top` VALUES ('厦门马巷的芋包，馅料让人胃口大开', '探视频', '1334', 2, '厦门马巷街头的芋包，看着不起眼，但却十分的好吃。', 'https://m.ecook.cn/toutiao/894', 'https://pic.ecook.cn/web/256791915.jpg!m3', 12);
INSERT INTO `cook_top` VALUES ('厦门人爱吃的沙茶面，配料就有近20多种', '探视频', '1780', 3, '厦门随处可见沙茶面，一碗面可以加很多料，吃多少买多少', 'https://m.ecook.cn/toutiao/895', 'https://pic.ecook.cn/web/256791938.jpg!m3', 13);
INSERT INTO `cook_top` VALUES ('吃了1000只螃蟹，这是唯一让人留恋的做法', '东篱的食事集', '1290', 23, '深海面包蟹，膏蟹之王，每年这个时候最垂涎的食物。', 'https://m.ecook.cn/toutiao/1093', 'https://pic.ecook.cn/web/257282030.jpg!m3', 14);
INSERT INTO `cook_top` VALUES ('寻觅一杯有温度的咖啡——咖啡庄园导览', '碧罗庄园咖啡', '1231', 2, '了解咖啡背后的故事', 'https://m.ecook.cn/toutiao/1214', 'https://pic.ecook.cn/web/257958653.jpg!m3', 15);
INSERT INTO `cook_top` VALUES ('【野食小哥】听说山泉水泡面特别好吃', '野食小哥', '1307', 18, '听说山泉水泡面特别好吃', 'https://m.ecook.cn/toutiao/1224', 'https://pic.ecook.cn/web/258005306.jpg!m3', 16);
INSERT INTO `cook_top` VALUES ('再不起眼的食材，都得认真摆个盘', '野食小哥', '1188', 4, '据说夏天不吃点这个，就白过了', 'https://m.ecook.cn/toutiao/1225', 'https://pic.ecook.cn/web/258007142.jpg!m3', 17);
INSERT INTO `cook_top` VALUES ('喝的是咖啡品的是时光——日本东京琥珀咖啡CAFE DE L\'AMBRE', '碧罗庄园咖啡', '2313', 7, 'About Coffee', 'https://m.ecook.cn/toutiao/1239', 'https://pic.ecook.cn/web/258068141.jpg!m3', 18);
INSERT INTO `cook_top` VALUES ('野食小哥：没什么胃口？那就简单吃碗面吧！', '野食小哥', '1319', 1, '没胃口，也得讲究点么不是。', 'https://m.ecook.cn/toutiao/1246', 'https://pic.ecook.cn/web/258068149.jpg!m3', 19);
INSERT INTO `cook_top` VALUES ('野食小哥：没什么胃口？那简单做碗面吃吧', '野食小哥', '1396', 7, '专治胃口不好', 'https://m.ecook.cn/toutiao/1247', 'https://pic.ecook.cn/web/258068149.jpg!m3', 20);
INSERT INTO `cook_top` VALUES ('让人吃到流泪的西安神级小吃！', '是西安', '306', 3, '回坊黑暗料理NO.1，你吃过吗？', 'https://m.ecook.cn/toutiao/1249', 'https://pic.ecook.cn/web/258069760.jpg!m3', 21);
INSERT INTO `cook_top` VALUES ('【红烧羊排】做一锅热乎乎的超嫩羊排，才能安稳度过大冷天！', '寻味手札', '225', 9, '暖冬进补红烧羊排最佳，教你在家做，鲜嫩入味，体内寒气驱光光！', 'https://m.ecook.cn/toutiao/1250', 'https://pic.ecook.cn/web/258071409.jpg!m3', 22);
INSERT INTO `cook_top` VALUES ('【可乐鸡翅】懒人小白也能做的美味鸡翅，端上桌分分钟被抢光！', '寻味手札', '1665', 68, '百吃不厌的可乐鸡翅，记住大厨级秘诀，懒人小白也不会失手！', 'https://m.ecook.cn/toutiao/1251', 'https://pic.ecook.cn/web/258071414.jpg!m3', 23);
INSERT INTO `cook_top` VALUES ('【老妈蹄花】别再吃什么胶原蛋白胶囊了，给自己做一碗老妈蹄花吧！', '寻味手札', '213', 12, '风靡冬日的老妈蹄花，做法这么简单？满满胶原蛋白入口就化！', 'https://m.ecook.cn/toutiao/1252', 'https://pic.ecook.cn/web/258079517.jpg!m3', 24);
INSERT INTO `cook_top` VALUES ('【西湖牛肉羹】在家也能做的西湖牛肉羹，鲜美顺滑一口滑到肚子里！', '寻味手札', '238', 8, '《海上牧云记》蒋勤勤同款牛肉羹，一生挚爱也比不上一碗冬日温暖', 'https://m.ecook.cn/toutiao/1253', 'https://pic.ecook.cn/web/258079477.jpg!m3', 25);
INSERT INTO `cook_top` VALUES ('【部队锅】美味一锅端的韩式部队锅，在家里也能吃的很满足~', '寻味手札', '245', 27, '外面100块钱的部队火锅，在家10块就能做，味道堪比星级饭店', 'https://m.ecook.cn/toutiao/1254', 'https://pic.ecook.cn/web/258079455.jpg!m3', 26);
INSERT INTO `cook_top` VALUES ('《寻梦环游记》点亮的美食故事', '翻滚的五花肉', '796', 7, '一个好的创意，可以传递温暖与思念……', 'https://m.ecook.cn/toutiao/1257', 'https://pic.ecook.cn/web/258095223.jpg!m3', 27);
INSERT INTO `cook_top` VALUES (' 【滋味烤蛋派】有肉有蛋有芝士，一口吃到丰富食材的大满足~', '寻味手札', '212', 3, '美滋滋！烤蛋派驾到，芝士下面是一口吃得到的大满足！', 'https://m.ecook.cn/toutiao/1261', 'https://pic.ecook.cn/web/258095788.jpg!m3', 28);
INSERT INTO `cook_top` VALUES ('【鹌鹑蛋红烧肉】没想到加了鹌鹑蛋以后，一盘简单的红烧肉美味得逆天啦！', '寻味手札', '295', 53, '儿时妈妈做的红烧肉，是记忆里最美好的味道！', 'https://m.ecook.cn/toutiao/1262', 'https://pic.ecook.cn/web/258095796.jpg!m3', 29);
INSERT INTO `cook_top` VALUES ('【南瓜粥】3分钟做好一碗香浓软糯南瓜粥，美味营养还不长胖！', '寻味手札', '248', 9, '秋粥滋补, 南瓜最养人！揭秘韩剧版香甜细腻的南瓜粥做法~', 'https://m.ecook.cn/toutiao/1263', 'https://pic.ecook.cn/web/258095876.jpg!m3', 30);
INSERT INTO `cook_top` VALUES ('【咖喱乌冬面】热腾腾的乌冬面配上香浓的咖喱椰浆，吃一口就忘不了的味道！', '寻味手札', '191', 9, '超简单的家常版咖喱乌冬面，浓郁爽滑一口吃掉温暖幸福！', 'https://m.ecook.cn/toutiao/1264', 'https://pic.ecook.cn/web/258115545.jpg!m3', 31);
INSERT INTO `cook_top` VALUES ('【彩椒焗饭】学会这道颜值与美味并存的彩椒焗饭，撩妹撩汉妥妥的！', '寻味手札', '216', 5, '想撩汉脱单？先抓男神的胃！颜值美味并存的彩椒焗饭！\n', 'https://m.ecook.cn/toutiao/1265', 'https://pic.ecook.cn/web/258115548.jpg!m3', 32);
INSERT INTO `cook_top` VALUES ('【牙签肉】冬日的周末，电视剧跟牙签肉更配哦！', '寻味手札', '3261', 44, '简单又好吃的香辣牙签肉，一口一个太过瘾！周末零食好选择~', 'https://m.ecook.cn/toutiao/1266', 'https://pic.ecook.cn/web/258115598.jpg!m3', 33);
INSERT INTO `cook_top` VALUES ('当鱼头遇见砂锅，温暖整个12月美味！', '寻味手札', '404', 9, '加班的寒夜回到家还没吃饭？试试这一道砂锅鱼头，快手又温暖！', 'https://m.ecook.cn/toutiao/1267', 'https://pic.ecook.cn/web/258115604.jpg!m3', 34);
INSERT INTO `cook_top` VALUES ('野食小哥：翻山越岭，只为做一只美味的叫花鸡', '野食小哥', '568', 11, '一只好吃的叫花鸡到底是怎么做的？\n', 'https://m.ecook.cn/toutiao/1269', 'https://pic.ecook.cn/web/258096596.jpg!m3', 35);
INSERT INTO `cook_top` VALUES ('这碗粉红色油茶，估计90%的西安人都没见过！', '是西安', '387', 11, '每年只卖一个冬天的老米家疙瘩油茶， 想喝一碗，还得靠运气。', 'https://m.ecook.cn/toutiao/1272', 'https://pic.ecook.cn/web/258096686.jpg!m3', 36);
INSERT INTO `cook_top` VALUES ('野食小哥：家庭自制烤串，不得比街头烧烤来得香?', '野食小哥', '1029', 5, '老在外面吃烧烤，又贵又不卫生，试试这个做法？', 'https://m.ecook.cn/toutiao/1284', 'https://pic.ecook.cn/web/258115646.jpg!m3', 37);
INSERT INTO `cook_top` VALUES ('素菜吃出鲍鱼味儿？这根2元的萝卜就能做到！', '寻味手札', '448', 9, '冬吃萝卜赛人参，入口多汁、鲜美香浓的鲍汁萝卜，吃完还想吃！', 'https://m.ecook.cn/toutiao/1288', 'https://pic.ecook.cn/web/258127124.jpg!m3', 38);
INSERT INTO `cook_top` VALUES ('这家老店每天卖掉几千斤的点心，竟然都是手作！', '是西安', '452', 7, '从小摊到走出坊上开了分店， 光明巷的老店依然全年无休。', 'https://m.ecook.cn/toutiao/1289', 'https://pic.ecook.cn/web/258127408.jpg!m3', 39);
INSERT INTO `cook_top` VALUES ('嫌弃外面的烧烤不干净？那自己在家做烧烤吧！', '野食小哥', '514', 3, '又干净又好吃的烧烤你吃过没？', 'https://m.ecook.cn/toutiao/1290', 'https://pic.ecook.cn/web/259944361.jpg!m3', 40);
INSERT INTO `cook_top` VALUES ('一碗鲜美的海鲜粥，专治没胃口', '野食小哥', '295', 3, '讨个小海，来一碗海鲜粥', 'https://m.ecook.cn/toutiao/1291', '', 41);
INSERT INTO `cook_top` VALUES ('原来妈妈会做饭，能让宝宝这么自豪啊！', '年年有小小鱼', '329', 12, '妈妈们的厨艺给孩子们的脑海中留下的，是不可磨灭的爱的印记。', 'https://m.ecook.cn/toutiao/1298', '', 42);
INSERT INTO `cook_top` VALUES ('左手黑咖啡，右手梆梆肉，且看新掌门如何做老西安味道', '是西安', '285', 5, '没吃过梆梆肉的都是假西安人，但人人都吃过，不代表人人都了解', 'https://m.ecook.cn/toutiao/1301', '', 43);
INSERT INTO `cook_top` VALUES ('最美丽传神的是你的眼睛  ', '年年有小小鱼', '310', 6, '想不到啊，一款巧克力的包装盒，成为雪人的画龙点睛之笔。', 'https://m.ecook.cn/toutiao/1302', '', 44);
INSERT INTO `cook_top` VALUES ('冬日贴心的红糖桂花芋头，暖男级美食！', '寻味手札', '220', 17, '别再叫女朋友多喝热水了！学学这道香甜软糯暖男届至尊美食', 'https://m.ecook.cn/toutiao/1306', '', 45);
INSERT INTO `cook_top` VALUES ('冬至别纠结吃饺子还是汤圆了！炸个鸡米花配啤酒才更爽歪歪~', '寻味手札', '210', 18, '大吉大利，今晚吃鸡…米花！不用油也能做出香脆口感~', 'https://m.ecook.cn/toutiao/1327', '', 46);
INSERT INTO `cook_top` VALUES ('圣诞晚宴美食详解', '寻味手札', '235', 4, '错过了平安夜一定不能错过圣诞晚宴，学会这几道菜轻松搞定餐桌！', 'https://m.ecook.cn/toutiao/1352', '', 47);
INSERT INTO `cook_top` VALUES ('史上最好喝的金桔柠檬茶，从此其他都是浮云！', '寻味手札', '1045', 73, '如何在家轻松复刻网红金桔柠檬茶？不能错过的冬日暖心味道！', 'https://m.ecook.cn/toutiao/1374', '', 48);
INSERT INTO `cook_top` VALUES ('野食小哥：在家没事，做点月饼尝尝', '野食小哥', '349', 8, '自制月饼，味道相当不错了', 'https://m.ecook.cn/toutiao/1404', '', 49);
INSERT INTO `cook_top` VALUES ('乡间狂野式家常红烧排骨做法', '野食小哥', '494', 6, '没啥，就是精细的排骨吃多了，想来点狂野的。', 'https://m.ecook.cn/toutiao/1406', '', 50);
INSERT INTO `cook_top` VALUES ('在广鹿岛，向大海寻味', '年年有小小鱼', '344', 6, '浪漫海岛上，自己找海鲜~', 'https://m.ecook.cn/toutiao/1407', '', 51);
INSERT INTO `cook_top` VALUES ('东坡曰鱼与荠菜可以兼得——完美', '美貌便当', '279', 4, '在苏东坡的眼里，鱼是灵动的美味，闲日里烹制一道浓郁适口的荠菜', 'https://m.ecook.cn/toutiao/1408', '', 52);
INSERT INTO `cook_top` VALUES ('跨年夜零嘴No.1 这碗鱼香茄盒你一定要学会！', '寻味手札', '1672', 15, '新年开运鱼香茄盒，一大口咬下去，满满都是惊喜！', 'https://m.ecook.cn/toutiao/1412', '', 53);
INSERT INTO `cook_top` VALUES ('新年快乐，你不会是一个人', '年年有小小鱼', '432', 1, '跨年夜里滨城夜空璀璨，市民徒步来看烟花的生活态度更令人震撼。', 'https://m.ecook.cn/toutiao/1418', '', 54);
INSERT INTO `cook_top` VALUES ('热气腾腾的龙利鱼，麻香四溢挡不住！', '寻味手札', '949', 15, '鲜辣味美的藤椒龙利鱼，不用摘刺更是重点！\n', 'https://m.ecook.cn/toutiao/1420', '', 55);
INSERT INTO `cook_top` VALUES ('一抹椒羞川味串串探店测评', 'MR. wrong', '355', 0, '一家名名叫#一抹娇羞#的四川串串，可以选择辣度的各类串串。', 'https://m.ecook.cn/toutiao/1428', '', 56);
INSERT INTO `cook_top` VALUES ('北宋唯一的杏酪蒸羔羊肉，还自带美颜功效！', '美貌便当', '432', 3, '甘甜的养颜饮品杏酪，和羊肉的搭配，冬天最适合了~', 'https://m.ecook.cn/toutiao/1439', '', 57);
INSERT INTO `cook_top` VALUES ('冷意难退的天气里，在家煮一锅辣嘶嘶的冷锅串串爽到爆汗！', '寻味手札', '187', 0, '超正宗的红油汤底轻松调，绝对大厨水准小白难度！\n', 'https://m.ecook.cn/toutiao/1453', '', 58);
INSERT INTO `cook_top` VALUES ('《野居青年》三小伙租下深山小院，自己动手修灶做了一碗腊肉鸡蛋面', '野居青年', '469', 13, '三小伙租下深山小院，自己动手修灶做了一碗腊肉鸡蛋面', 'https://m.ecook.cn/toutiao/1461', '', 59);
INSERT INTO `cook_top` VALUES ('《野居青年》自己动手烧泥碗 做竹筒杯 院子老树上的木耳弄下来做了顿回锅肉', '野居青年', '1424', 25, '自己动手烧泥碗 做竹筒杯 院子老树上的木耳弄下来做了顿回锅肉', 'https://m.ecook.cn/toutiao/1462', '', 60);
INSERT INTO `cook_top` VALUES ('古代文艺女青年如何吃梅，想不到的惊艳，细致恐极的美', '古人食', '543', 18, '寒冷的日子里，适以梅花入馔过冬天', 'https://m.ecook.cn/toutiao/1476', '', 61);
INSERT INTO `cook_top` VALUES ('北风呼呼吹的寒冷冬日，来块叉烧排骨甜蜜你的小心心!', '寻味手札', '547', 3, '秘制叉烧排骨，做法简单粗暴，肉食动物抵挡不住的诱惑！\n', 'https://m.ecook.cn/toutiao/1484', '', 62);
INSERT INTO `cook_top` VALUES ('冷天儿就得来顿串串才够味！', '寻味手札', '550', 31, '冷意难退的天气里，在家煮一锅辣嘶嘶的冷锅串串爽到爆汗！', 'https://m.ecook.cn/toutiao/1487', '', 63);
INSERT INTO `cook_top` VALUES ('立马上手又充满诱惑，除了叉烧排骨还有谁？！', '寻味手札', '397', 29, '秘制叉烧排骨，做法简单粗暴，肉食动物抵挡不住的诱惑！\n', 'https://m.ecook.cn/toutiao/1488', '', 64);
INSERT INTO `cook_top` VALUES ('【冰糖葫芦】童年记忆，恋爱滋味，想念串成了旧时光', '古人食', '403', 7, '儿时最热爱的酸甜味，大抵便是冰糖葫芦了。', 'https://m.ecook.cn/toutiao/1500', '', 65);
INSERT INTO `cook_top` VALUES ('《野居青年》把院子里的老树根挖出来做个茶几，夜深了品上一杯清茶', '野居青年', '1979', 25, '把院子里的老树根挖出来做个茶几，夜深了品上一杯清茶', 'https://m.ecook.cn/toutiao/1502', '', 66);
INSERT INTO `cook_top` VALUES ('不好意思，这碗“海上牧云记”奶茶可能要火整个冬季', '美貌便当', '346', 1, '黄轩、窦骁、周一围如果要三选一的话，选谁好呢？算了还是选草原', 'https://m.ecook.cn/toutiao/1513', '', 67);
INSERT INTO `cook_top` VALUES ('暖冬来道味美汤浓的番茄牛腩， 再来三碗米饭也不停不下！', '寻味手札', '564', 16, '做法简单，营养丰富，新手也可以做出一道美味可口的番茄牛腩煲！', 'https://m.ecook.cn/toutiao/1518', '', 68);
INSERT INTO `cook_top` VALUES ('屠苏酒丨古人春节必饮酒水，祛风散寒温中健脾', '古人食', '317', 6, '古人春节饮酒的风雅，暖了少年，醉了白首，美了岁月粉黛。', 'https://m.ecook.cn/toutiao/1521', '', 69);
INSERT INTO `cook_top` VALUES ('素菜上品在家也能巧手做，这样过新年，丰盛不油腻', '古人食', '317', 11, '佛系过年必吃，燃灯祈福，描佛绘团圆，时光更美了', 'https://m.ecook.cn/toutiao/1528', '', 70);
INSERT INTO `cook_top` VALUES ('素菜上品在家也能巧手做，这样过新年，丰盛不油腻', '古人食', '240', 6, '佛系过年必吃，燃灯祈福，描佛绘团圆，时光更美了', 'https://m.ecook.cn/toutiao/1529', '', 71);
INSERT INTO `cook_top` VALUES ('素菜上品在家也能巧手做，这样过新年，丰盛不油腻', '古人食', '202', 1, '佛系过年必吃，燃灯祈福，描佛绘团圆，时光更美了', 'https://m.ecook.cn/toutiao/1530', '', 72);
INSERT INTO `cook_top` VALUES ('当芝士遇见红薯，香糯软滑，能量百分百！', '寻味手札', '480', 30, '没想到芝士搭配红薯，竟然是一对让人完全无法拒绝的CP～\n', 'https://m.ecook.cn/toutiao/1533', '', 73);
INSERT INTO `cook_top` VALUES ('米烙已经满足不了我了，于是做了一个至尊升级版', '叮有料', '235', 32, '全网8000万点击的美食食谱，一定很有料！', 'https://m.ecook.cn/toutiao/1545', '', 74);
INSERT INTO `cook_top` VALUES ('一屋二人三餐四季，我用美食说爱你', '尖尖_实验室', '1370', 12, '那年夏天，我挽起了秀发，撸起了袖子，来到了厨房', 'https://m.ecook.cn/toutiao/1550', '', 75);
INSERT INTO `cook_top` VALUES ('简易家庭版剁椒鱼头，轻轻松松仅能学会家宴“大菜”！', '寻味手札', '216', 39, '只会煮鱼头汤？不要方，剁椒鱼头的秘方现在就告诉你！', 'https://m.ecook.cn/toutiao/1556', '', 76);
INSERT INTO `cook_top` VALUES ('腊八了，对自己好一点，学一道简单的滋补菜品。', '叮有料', '430', 16, '有趣有用废话少的网播美食节目', 'https://m.ecook.cn/toutiao/1558', '', 77);
INSERT INTO `cook_top` VALUES ('《野居青年》活捉一只猫头鹰，菠菜汁和面做一碗纯天然绿色饺子', '野居青年', '555', 28, '活捉一只猫头鹰，菠菜汁和面做一碗纯天然绿色饺子', 'https://m.ecook.cn/toutiao/1561', '', 78);
INSERT INTO `cook_top` VALUES ('《野居青年》隐居小伙深夜做出三道小菜，深山里的美味', '野居青年', '568', 21, '隐居小伙深夜做出三道小菜，深山里的美味', 'https://m.ecook.cn/toutiao/1563', '', 79);
INSERT INTO `cook_top` VALUES ('比《谜巢》还惊悚的昆虫美味大盘点', '美貌便当', '229', 2, '你敢吃么？！蜘蛛、蝎子......这些纯天然、高蛋白黑暗料理', 'https://m.ecook.cn/toutiao/1564', '', 80);

-- ----------------------------
-- Table structure for cook_typic
-- ----------------------------
DROP TABLE IF EXISTS `cook_typic`;
CREATE TABLE `cook_typic`  (
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `id` int(10) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 33 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cook_typic
-- ----------------------------
INSERT INTO `cook_typic` VALUES ('下午茶', 'https://m.ecook.cn/zhuti/142267/', 1);
INSERT INTO `cook_typic` VALUES ('紫薯', 'https://m.ecook.cn/zhuti/2643/', 2);
INSERT INTO `cook_typic` VALUES ('饮品', 'https://m.ecook.cn/zhuti/5315/', 3);
INSERT INTO `cook_typic` VALUES ('月饼', 'https://m.ecook.cn/zhuti/4697/', 4);
INSERT INTO `cook_typic` VALUES ('香草', 'https://m.ecook.cn/zhuti/3683/', 5);
INSERT INTO `cook_typic` VALUES ('螃蟹', 'https://m.ecook.cn/zhuti/307/', 6);
INSERT INTO `cook_typic` VALUES ('豌豆', 'https://m.ecook.cn/zhuti/148/', 7);
INSERT INTO `cook_typic` VALUES ('鸡胸', 'https://m.ecook.cn/zhuti/102/', 8);
INSERT INTO `cook_typic` VALUES ('吐司', 'https://m.ecook.cn/zhuti/585/', 9);
INSERT INTO `cook_typic` VALUES ('红酒', 'https://m.ecook.cn/zhuti/13418/', 10);
INSERT INTO `cook_typic` VALUES ('曲奇', 'https://m.ecook.cn/zhuti/5034/', 11);
INSERT INTO `cook_typic` VALUES ('萝卜丝', 'https://m.ecook.cn/zhuti/9141/', 12);
INSERT INTO `cook_typic` VALUES ('披萨', 'https://m.ecook.cn/zhuti/4051/', 13);
INSERT INTO `cook_typic` VALUES ('面皮', 'https://m.ecook.cn/zhuti/564/', 14);
INSERT INTO `cook_typic` VALUES ('糕点', 'https://m.ecook.cn/zhuti/4900/', 15);
INSERT INTO `cook_typic` VALUES ('饭菜', 'https://m.ecook.cn/zhuti/6245/', 16);
INSERT INTO `cook_typic` VALUES ('鸡腿', 'https://m.ecook.cn/zhuti/92/', 17);
INSERT INTO `cook_typic` VALUES ('麦片', 'https://m.ecook.cn/zhuti/589/', 18);
INSERT INTO `cook_typic` VALUES ('盒子', 'https://m.ecook.cn/zhuti/10068/', 19);
INSERT INTO `cook_typic` VALUES ('可可粉', 'https://m.ecook.cn/zhuti/920/', 20);
INSERT INTO `cook_typic` VALUES ('肉桂', 'https://m.ecook.cn/zhuti/3750/', 21);
INSERT INTO `cook_typic` VALUES ('西点', 'https://m.ecook.cn/zhuti/9703/', 22);
INSERT INTO `cook_typic` VALUES ('汉堡', 'https://m.ecook.cn/zhuti/4711/', 23);
INSERT INTO `cook_typic` VALUES ('培根', 'https://m.ecook.cn/zhuti/443/', 24);
INSERT INTO `cook_typic` VALUES ('三明治', 'https://m.ecook.cn/zhuti/4091/', 25);
INSERT INTO `cook_typic` VALUES ('薄荷', 'https://m.ecook.cn/zhuti/3760/', 26);
INSERT INTO `cook_typic` VALUES ('蓝莓', 'https://m.ecook.cn/zhuti/623/', 27);
INSERT INTO `cook_typic` VALUES ('果酱', 'https://m.ecook.cn/zhuti/2867/', 28);
INSERT INTO `cook_typic` VALUES ('桂花', 'https://m.ecook.cn/zhuti/450/', 29);
INSERT INTO `cook_typic` VALUES ('三文鱼', 'https://m.ecook.cn/zhuti/363/', 30);
INSERT INTO `cook_typic` VALUES ('沙拉酱', 'https://m.ecook.cn/zhuti/4856/', 31);
INSERT INTO `cook_typic` VALUES ('小菜', 'https://m.ecook.cn/zhuti/5598/', 32);

-- ----------------------------
-- Table structure for cook_video
-- ----------------------------
DROP TABLE IF EXISTS `cook_video`;
CREATE TABLE `cook_video`  (
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `author` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `publish` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `label1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `label2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `auto` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `com` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `count` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `id` int(255) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cook_video
-- ----------------------------
INSERT INTO `cook_video` VALUES ('一个能看世界杯的夏天，喝着啤酒再来盘五香花生，看球才过瘾', '作者：饭爷记', '发表于：2018年06月27日 21:24', '萝卜', '胡萝卜', 'https://video.ecook.xiaochushuo.com/76bd353630be47f0b5447ec06201ee56.mp4', '播放数：383249', '      最近，你熬夜看世界杯了吗？\r\n\r\n       不管支持哪支球队，大家对零食的热情都一样高涨，看球时总忍不住想吃点儿什么。\r\n\r\n适量进食补充能量是对的，但吃错食物，反而会造成肠胃负担。下面这份自制五香花生，保准好吃又健康，让你爽爽地看球赛。', '评论数：9', 1);
INSERT INTO `cook_video` VALUES ('鲜美多汁、入口即化的——清蒸鳕鱼', '作者：小圆食记', '发表于：2018年10月22日 09:58', '辣椒', '姜', 'https://video.ecook.xiaochushuo.com/e85a9d5a01a94158a0408b35293a12f4.mp4', '播放数：15029', '清蒸鳕鱼是一款生活中的美食，是一种健康的菜谱。\r\n\r\n鳕鱼具有高营养、低胆固醇、易于被人体吸收等优点。', '评论数：24', 2);
INSERT INTO `cook_video` VALUES ('黄豆莲藕排骨汤', '作者：罐头视频', '发表于：2018年10月20日 15:30', '莲藕', '莲藕', 'https://video.ecook.xiaochushuo.com/978498cdb4514163bf1642a22cd0989b.mp4', '播放数：9746', '', '评论数：26', 3);
INSERT INTO `cook_video` VALUES ('网红米饭', '作者：全娜拉', '发表于：2018年03月07日 23:43', '胡萝卜', '萝卜', 'https://video.ecook.xiaochushuo.com/f714d6cbaf304367a2fb0b6636657e75.mp4', '播放数：8609', '网红米饭 好吃简单 比较适合偷懒时做，有了它就不需要做菜了哈哈 快给我的机智点赞吧', '评论数：93', 4);
INSERT INTO `cook_video` VALUES ('最开胃的下饭菜毛豆炒肉末', '作者：语芳食记', '发表于：2018年05月02日 21:10', '毛豆', '姜', 'https://video.ecook.xiaochushuo.com/6df4e25aac0a4540922dfa9d2b97107e.mp4', '播放数：7421', '零基础学会做最开胃的下饭菜毛豆炒肉末，这道菜最重要的诀窍就是一定要用泡椒，泡椒的量量可根据个人口味增减。', '播放数：7421', 5);
INSERT INTO `cook_video` VALUES ('培根鸡蛋煎饼，吃完又是元气满满的一天', '作者：便当先生', '发表于：2019年01月24日 08:07', '番茄', '鸡蛋', 'https://video.ecook.xiaochushuo.com/0440c86a376d437aa9836e6098968879.mp4', '播放数：7339', '总是有那么一些人无肉不欢，但是早餐又不能吃太多肉，于是就想到了培根，清晨起来做一份培根鸡蛋煎饼，这样有肉有蛋，非常的丰富，方法也很简单，短短几分钟就可以全部搞定，绝对能满足你对早餐的美好期待。', '评论数：14', 6);
INSERT INTO `cook_video` VALUES ('快手番茄疙瘩汤', '作者：罐头视频', '发表于：2018年10月19日 10:39', '番茄', '鸡蛋', 'https://video.ecook.xiaochushuo.com/27ff5a55e80a465bbd261ae676d351db.mp4', '播放数：6392', '简单好吃又饱腹的番茄疙瘩汤\r\n一锅有菜有鸡蛋又有主食\r\n既饱了口福，又暖了身心~\r\n不管是宵夜还是早餐\r\n保证你吃了还想', '评论数：85', 7);
INSERT INTO `cook_video` VALUES ('厨师长拿手菜，农家回锅肉，必吃三大碗饭！', '作者：小圆食记', '发表于：2017年10月26日 10:50', '青椒', '姜', 'https://video.ecook.xiaochushuo.com/0dee9a44eb314ab489c9b474e01fe4af.mp4', '播放数：6129', '★★★★★\r\n小圆食记\r\nMenu\r\n回锅肉是汉族特色菜肴。属中国八大菜系川菜中一种烹调猪肉的传统菜式，川西成都一带称作熬锅肉，川东重庆一带称为回锅肉。\r\n 回锅肉一直被认为是川菜之首，川菜之化身，提到川菜必然想到回锅肉。它色香味俱全，颜色养眼，是下饭菜之首选。\r\n\r\n★★★★★\r\n创意指数\r\n农家回锅肉', '评论数：43', 8);
INSERT INTO `cook_video` VALUES ('芥蓝牛柳', '作者：心野小厨房', '发表于：2018年07月03日 14:16', '芥蓝', '鸡', 'https://video.ecook.xiaochushuo.com/390c99e360024c30b8baf98336c05545.mp4', '播放数：260', '芥蓝牛柳,粤味十足的一道开胃菜。脆嫩的芥蓝,遇见酱香十足的牛柳,味道鲜香。荤素搭配不油腻。', '评论数：6', 9);
INSERT INTO `cook_video` VALUES ('粉色牛奶椰蓉小方', '作者：罐头视频', '发表于：2018年07月08日 12:57', '牛', '牛奶', 'https://video.ecook.xiaochushuo.com/30faecda4a4f411d9220658ff325a0bc.mp4', '播放数：817', '#罐头小厨#宝宝们最爱的免烤甜品又来啦~【粉色牛奶椰蓉小方】萌萌哒少女色，Q弹软糯的口感，非常适合夏天哦~', '评论数：13', 10);
INSERT INTO `cook_video` VALUES ('隔着屏幕就能闻到香味儿，我都看不下去了！肉糜蒸蛋推荐！', '作者：小圆食记', '发表于：2017年10月30日 10:56', '姜', '鸡蛋', 'https://video.ecook.xiaochushuo.com/4dd10f6b85464cd6b0e662bd505941c7.mp4', '播放数：411', '★★★★★\r\n小圆食记\r\nMenu\r\n肉饼蒸蛋是一种极其简单易做的快手菜，材料很好准备，同米饭一起蒸可以缩短烹饪时间。\r\n 肉饼蒸蛋属于家常菜谱，主要原料是猪和鸡蛋，工艺是蒸，制作简单。\r\n\r\n★★★★★\r\n创意指数\r\n肉糜蒸蛋', '评论数：6', 11);
INSERT INTO `cook_video` VALUES ('蚕豆这样做又糯又嫩还清新爽口!', '作者：小圆食记', '发表于：2018年04月17日 16:28', '酱油', '蚕豆', 'https://video.ecook.xiaochushuo.com/2e05b69614604adfaa6a730e60a5e748.mp4', '播放数：327', '蚕豆，又称胡豆、罗汉豆、佛豆、倭豆等。\r\n蚕豆从嫩苗起到老熟的种子都可作为蔬食', '评论数：3', 12);
INSERT INTO `cook_video` VALUES ('萝卜丸子这样做可以当饭吃,没什么秘诀,关键就这一点', '作者：小圆食记', '发表于：2017年11月23日 12:42', '萝卜', '鸡蛋', 'https://video.ecook.xiaochushuo.com/9f19a7eee25a422a8de45eeaad164461.mp4', '播放数：395', '★★★★★\r\n小圆食记\r\nMenu\r\n萝卜丸子是山东省经典的特色名菜之一，属于鲁菜系。\r\n将萝卜擦成细丝、挤去水分后拌入面粉,加上葱末炸成金黄色的萝卜丸子。\r\n\r\n★★★★★\r\n创意指数\r\n萝卜丸子', '评论数：5', 13);
INSERT INTO `cook_video` VALUES ('上海小素鸡炖五花肉 ', '作者：罐头视频', '发表于：2018年05月18日 16:42', '鸡', '姜', 'https://video.ecook.xiaochushuo.com/9f9594b1ce614921b68e2c2ea08d3b73.mp4', '播放数：253', '#罐头小厨#小素鸡炖五花肉--来自上海老弄堂的好味道！学会这道菜，家里的米饭煮多少都不够吃', '评论数：14', 14);
INSERT INTO `cook_video` VALUES ('咸鲜美味，肥而不腻，快手又开胃的回锅肉', '作者：23煮厨', '发表于：2018年04月26日 10:42', '豆瓣', '姜', 'https://video.ecook.xiaochushuo.com/708cba148e8b4a62ad34d6b72321ae9a.mp4', '播放数：521', '      所谓回锅，是再次烹调的意思。精选五花肉煮熟后再切片炒制，很好的去除了肉中的油脂，使整道菜吃起来肥而不腻，入口浓香，别有一番风味。', '评论数：6', 15);
INSERT INTO `cook_video` VALUES ('小而美，糯而香，爱吃芋头的人必会的一道菜—葱香芋艿', '作者：饭爷记', '发表于：2018年07月15日 21:14', '鸡', '芋头', 'https://video.ecook.xiaochushuo.com/48a2194872da400086d55079f1714277.mp4', '播放数：428', '   今天特别向大家推荐这道葱香芋艿，一是因为它的口感软糯、营养丰富，非常适合孩子和老人；二是因为这道菜没有任何技术含量，即便不常下厨的厨房小白们也能做得好吃。\r\n\r\n       空闲时候做一道葱香芋艿吧，家人的心情一定会因这道菜而如春光般灿烂。', '评论数：6', 16);
INSERT INTO `cook_video` VALUES ('清蒸螃蟹', '作者：八面是Limno', '发表于：2020年10月12日 09:33', '', '', 'https://video.ecook.xiaochushuo.com/0e8bbddf1a304f529a6f9addffdd50a0.mp4', '播放数：1255', '清爽薯粉垫盘底，紧实菜鲟顶上蒸，有主食有海鲜，合二为一！', '评论数：6', 17);
INSERT INTO `cook_video` VALUES ('小炒牛肉', '作者：八面是Limno', '发表于：2020年09月28日 15:07', '', '', 'https://video.ecook.xiaochushuo.com/6db7eec64cd94d0aac015a3f07283d36.mp4', '播放数：2564', '胡萝卜丝芦笋小炒牛肉', '评论数：9', 18);
INSERT INTO `cook_video` VALUES ('耳光炒饭（内附视频）', '作者：八面是Limno', '发表于：2020年09月21日 15:18', '', '', 'https://video.ecook.xiaochushuo.com/1a2f7e5949174e759959d5f39941812f.mp4', '播放数：2450', '追剧《我喜欢你》，复刻女主同款耳光炒饭！（内附视频）', '评论数：9', 19);
INSERT INTO `cook_video` VALUES ('酥脆的芝麻黄油薄脆', '作者：麦子厨房', '发表于：2020年09月21日 12:02', '', '', 'https://video.ecook.xiaochushuo.com/05e224ea7953486ab79a0742ba8695a9.mp4', '播放数：1584', '做法非常简单，5种材料，混合搅拌均匀，玉米香气四溢，嚼起来嘎嘣脆，心动不如行动试试吧！', '评论数：6', 20);
INSERT INTO `cook_video` VALUES ('耳光炒饭', '作者：归家小厨', '发表于：2020年09月19日 20:20', '', '', 'https://video.ecook.xiaochushuo.com/b221dd6c8ef94e70a35136da402809ad.mp4', '播放数：1452', '因电视剧《我，喜欢你》大火的耳光炒饭，备受关注和宠爱。\r\n这耳光炒饭是何方神圣？耳光炒饭的叫法，源于吴语方言俚语“打着耳光都不肯放”，故名思意，就是形容耳光炒饭好吃到被人打耳光也不能放下。\r\n耳光炒饭鲜咸适口且香味浓郁，自此后一直念念不忘，今天我们一起来学学这碗征服霸总的炒饭吧。', '评论数：17', 21);
INSERT INTO `cook_video` VALUES ('耳光炒饭', '作者：菊娜JUJU', '发表于：2020年09月18日 17:55', '', '', 'https://video.ecook.xiaochushuo.com/bbfd1ba854d7481fa54e37e28fca27bf.mp4', '播放数：6073', '因为最近很火的一部网剧‘我喜欢你“而带火的一款炒饭——耳光炒饭~~\r\n其实耳光炒饭之前就火过一阵子，不过还是有一些朋友不太了解，特别是这个名字，耳光？炒饭？有什么关系吗？还是耳光是种食材吗等等，其实这是形容炒饭非常非常的好吃，刷耳光都不肯放手，哈哈是不是很奇特啊~~\r\n那到底这碗炒饭有没有说的那么好吃呢，想知道就动手试试吧~', '评论数：23', 22);
INSERT INTO `cook_video` VALUES ('【视频】耳光炒饭', '作者：网剧我喜欢你', '发表于：2020年09月17日 13:42', '', '', 'https://video.ecook.xiaochushuo.com/c9c2f534a83b4c40a1aff2a47f8812f7.mp4', '播放数：4448', '爱情是人间至味，可酸甜可辛辣\r\n我喜欢你，就像虾仁遇见裹了蛋汁的隔夜米饭\r\n一面鲜香，一面筋道\r\n翻炒间又别有洞天\r\n愿这世上所有的爱恋都像午餐肉配炒饭，一切刚刚好\r\n愿你的【耳光炒饭】每一口都绝妙鲜香回味无穷...', '评论数：13', 23);
INSERT INTO `cook_video` VALUES ('全麦坚果酸奶沙拉快手减脂餐', '作者：碧罗庄园咖啡', '发表于：2020年08月26日 15:55', '', '', 'https://video.ecook.xiaochushuo.com/55c1194a96b5437c86e345bef448b012.mp4', '播放数：3250', '    现在越来越提倡吃饱了减肥，那么问题的核心就是选择吃什么和喝什么了。对于大多数高级社畜来说，为了每天多睡10分钟，早餐往往是啃两口面包喝点牛奶随便对付一下......\r\n    但一顿营养丰富的早餐能使一个平平无奇的工作日变得格外高效，而且在绿原酸和咖啡因的催化下还能让身体在充满活力的基础上顺利减脂，如果你也想这样，那就试试这个美味的全麦坚果酸奶沙拉与黑咖啡的强力减脂组合吧☕️~', '评论数：9', 24);

-- ----------------------------
-- Table structure for username
-- ----------------------------
DROP TABLE IF EXISTS `username`;
CREATE TABLE `username`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `tel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of username
-- ----------------------------
INSERT INTO `username` VALUES (2, '111', '111', '111');
INSERT INTO `username` VALUES (1, '11', '111', '111');

SET FOREIGN_KEY_CHECKS = 1;
