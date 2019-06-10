/*
Navicat MySQL Data Transfer

Source Server         : zhouyingwei
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : vue

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2019-06-10 16:25:42
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for kongjian
-- ----------------------------
DROP TABLE IF EXISTS `kongjian`;
CREATE TABLE `kongjian` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ids` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `touxiang` varchar(255) DEFAULT NULL,
  `zan` varchar(255) DEFAULT NULL,
  `liulan` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `pinglun` varchar(255) DEFAULT NULL,
  `img1` varchar(255) DEFAULT NULL,
  `img2` varchar(255) DEFAULT NULL,
  `img3` varchar(255) DEFAULT NULL,
  `text` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kongjian
-- ----------------------------
INSERT INTO `kongjian` VALUES ('1', '1', '晚秋时分', '/static/4.jpg', '125', '21', '13:44', null, '/static/kongjian/1.jpg', '/static/kongjian/2.jpg', '/static/kongjian/3.jpg', '沉湎于希望的人和守株待兔的樵夫没有什么两样');
INSERT INTO `kongjian` VALUES ('2', '1', '完美的主题曲', '/static/5.jpg', '12', '212', '1:33', null, '/static/kongjian/4.jpg', '/static/kongjian/5.jpg', '/static/kongjian/6.jpg', '想想灰太狼，想想光头强，青春的路上，没有理由不坚强。');
INSERT INTO `kongjian` VALUES ('3', '1', '愿做听众', '/static/6.jpg', '313', '32', '6:14', null, '/static/kongjian/7.jpg', '/static/kongjian/8.jpg', '/static/kongjian/9.jpg', '成功不是将来才有的，而是从决定去做的那一刻起，持续累积而成。');
INSERT INTO `kongjian` VALUES ('4', '1', '不会说话的嘴', '/static/7.jpg', '12', '434', '12:55', null, '/static/kongjian/10.jpg', '/static/kongjian/11.jpg', '/static/kongjian/12.jpg', '\r\n不干，固然遇不着失败，也绝对遇不着成功');
INSERT INTO `kongjian` VALUES ('5', '1', '花重锦官城', '/static/8.jpg', '32', '445', '13:50', null, '/static/kongjian/13.jpg', '/static/kongjian/14.jpg', '/static/kongjian/15.jpg', '黄河走东溟，白日落西海，逝川与流光，飘忽不相待。');
INSERT INTO `kongjian` VALUES ('6', '1', '不及你美', '/static/9.jpg', '43', '63', '16:40', null, '/static/kongjian/16.jpg', '/static/kongjian/17.jpg', '/static/kongjian/18.jpg', '不达成功誓不休。');
INSERT INTO `kongjian` VALUES ('7', '1', '呼吸很轻回忆很重', '/static/10.jpg', '56', '23', '22:30', null, '/static/kongjian/19.jpg', '/static/kongjian/1.jpg', '/static/kongjian/2.jpg', '即使光环已不再也不要放弃你的梦想。');
INSERT INTO `kongjian` VALUES ('8', '1', '白衣不染尘', '/static/11.jpg', '43', '54', '4:12', null, '/static/kongjian/3.jpg', '/static/kongjian/4.jpg', '/static/kongjian/5.jpg', '平时没有跑发卫千米，占时就难以进行一百米的冲刺。');
INSERT INTO `kongjian` VALUES ('9', '1', '怜爱加醋', '/static/1.jpg', '72', '63', '11:11', null, '/static/kongjian/6.jpg', '/static/kongjian/7.jpg', '/static/kongjian/8.jpg', '不努力的男人只有两种结果，抽不完的低档烟和干不完的体力活。');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `wangming` varchar(255) DEFAULT NULL,
  `qianming` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '123', '123', '/static/10.jpg', '依山尽', '我拿你当兄弟，你却拿我当爸爸');
INSERT INTO `user` VALUES ('15', '123456', '123456', '/static/9.jpg', '闷骚泉', '你好骚啊');

-- ----------------------------
-- Table structure for xinxi
-- ----------------------------
DROP TABLE IF EXISTS `xinxi`;
CREATE TABLE `xinxi` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ziji` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `zhanghao` varchar(255) DEFAULT NULL,
  `fenzu` varchar(255) DEFAULT NULL,
  `shijian` varchar(255) DEFAULT NULL,
  `jilu` text NOT NULL,
  `qianming` text,
  `zhuangtai` varchar(255) DEFAULT NULL,
  `zhuangtai2` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xinxi
-- ----------------------------
INSERT INTO `xinxi` VALUES ('1', '1', '/static/1.jpg', '怜爱加醋', '21313132', '特别关心', '2019-5-25', '[]', '肥是一种精神，肉是一种态度。', '4G', '1');
INSERT INTO `xinxi` VALUES ('2', '1', '/static/2.jpg', '嗜毒尐女', '12131313', '依山尽', '2019-6-10', '[{\"src\":\"/static/10.jpg\",\"text\":\"111111\",\"shei\":\"ziji\"},{\"src\":\"/static/2.jpg\",\"text\":\"亲爱的，当天请求次数已用完。\",\"shei\":\"taren\"}]', '〆、青春、是一幕唱不完旳情歌，一遍又一遍上映着美妙。', '离线', '0');
INSERT INTO `xinxi` VALUES ('3', '1', '/static/3.jpg', '落空', '212131312', '依山尽', '2019-5-25', '[]', '上辈子一千次的卖萌，终于换来你今生一次的回眸。', '4G', '1');
INSERT INTO `xinxi` VALUES ('4', '1', '/static/4.jpg', '晚秋时分', '121343434', '依山尽', '2019-5-25', '[]', '除了喜欢 懂与陪伴更重要', '4G', '1');
INSERT INTO `xinxi` VALUES ('5', '1', '/static/5.jpg', '完美的主题曲', '547564545', '依山尽', '2019-5-25', '[]', '世界上最不能比的三样：友情 亲情 爱情。。。', '4G', '1');
INSERT INTO `xinxi` VALUES ('6', '1', '/static/6.jpg', '愿做听众', '2323243254', '依山尽', '2019-5-25', '[]', '你永远都不会知道自己到底有多坚强，直到有一天你除了坚强别无选择。', '4G', '1');
INSERT INTO `xinxi` VALUES ('7', '1', '/static/7.jpg', '\r\n不会说话的嘴', '2324342', '依山尽', '2019-6-10', '[]', '我抱着一个醉生梦死的枕头', '离线', '0');
INSERT INTO `xinxi` VALUES ('8', '1', '/static/8.jpg', '花重锦官城', '1213243245', '依山尽', '2019-5-25', '[]', '习惯了等待，于是，在轮回中我无法抗拒的站回等待的原点。', '4G', '1');
INSERT INTO `xinxi` VALUES ('9', '1', '/static/9.jpg', '不及你美', '32435435', '依山尽', '2019-5-25', '[]', '当看清了现实，放下就容易多了、', 'wifi', '1');
INSERT INTO `xinxi` VALUES ('10', '1', '/static/10.jpg', '呼吸很轻回忆很重', '232434535', '依山尽', '2019-5-25', '[]', '岁月的年轮上，标记我们曾经的欢笑。', 'wifi', '1');
INSERT INTO `xinxi` VALUES ('11', '1', '/static/11.jpg', '白衣不染尘', '23243253', '依山尽', null, '[]', '乐观而灿烂灿烂的笑容不但愉悦本身，也快乐着身边的每一个人。', 'wifi', '1');
INSERT INTO `xinxi` VALUES ('19', '1', '/static/1.jpg', '怜爱加醋', '21313132', '万古魂', '2019-5-27', '[]', '肥是一种精神，肉是一种态度。', 'wifi', '1');
INSERT INTO `xinxi` VALUES ('20', '1', '/static/2.jpg', '嗜毒尐女', '12131313', '万古魂', null, '[]', '〆、青春、是一幕唱不完旳情歌，一遍又一遍上映着美妙。', '电脑', '1');
INSERT INTO `xinxi` VALUES ('21', '1', '/static/3.jpg', '落空', '212131312', '万古魂', null, '[]', '上辈子一千次的卖萌，终于换来你今生一次的回眸。', '离线', '0');
INSERT INTO `xinxi` VALUES ('22', '1', '/static/4.jpg', '晚秋时分', '121343434', '万古魂', '2019-6-10', '[{\"src\":\"/static/10.jpg\",\"text\":\"11111111\",\"shei\":\"ziji\"},{\"src\":\"/static/4.jpg\",\"text\":\"亲爱的，当天请求次数已用完。\",\"shei\":\"taren\"}]', '除了喜欢 懂与陪伴更重要', '电脑', '1');
INSERT INTO `xinxi` VALUES ('23', '1', '/static/5.jpg', '完美的主题曲', '547564545', '登天路', '2019-6-10', '[{\"src\":\"/static/10.jpg\",\"text\":\"111111111\",\"shei\":\"ziji\"},{\"src\":\"/static/5.jpg\",\"text\":\"亲爱的，当天请求次数已用完。\",\"shei\":\"taren\"}]', '世界上最不能比的三样：友情 亲情 爱情。。。', '电脑', '1');
INSERT INTO `xinxi` VALUES ('24', '1', '/static/6.jpg', '愿做听众', '2323243254', '登天路', '2019-6-10', '[]', '你永远都不会知道自己到底有多坚强，直到有一天你除了坚强别无选择。', '离线', '0');
INSERT INTO `xinxi` VALUES ('25', '1', '/static/7.jpg', '\r\n不会说话的嘴', '2324342', '登天路', null, '[]', '我抱着一个醉生梦死的枕头', '电脑', '1');
INSERT INTO `xinxi` VALUES ('26', '1', '/static/8.jpg', '花重锦官城', '1213243245', '登天路', '2019-6-10', '[]', '习惯了等待，于是，在轮回中我无法抗拒的站回等待的原点。', '电脑', '1');
INSERT INTO `xinxi` VALUES ('27', '1', '/static/9.jpg', '不及你美', '32435435', '登天路', '2019-6-10', '[]', '当看清了现实，放下就容易多了、', '电脑', '1');
INSERT INTO `xinxi` VALUES ('28', '1', '/static/10.jpg', '呼吸很轻回忆很重', '232434535', '踏歌行', '2019-6-10', '[]', '岁月的年轮上，标记我们曾经的欢笑。', '离线', '0');
INSERT INTO `xinxi` VALUES ('29', '1', '/static/11.jpg', '白衣不染尘', '23243253', '踏歌行', '2019-5-25', '[]', '乐观而灿烂灿烂的笑容不但愉悦本身，也快乐着身边的每一个人。', '4G', '1');
INSERT INTO `xinxi` VALUES ('30', '1', '/static/1.jpg', '怜爱加醋', '21313132', '踏歌行', '2019-6-10', '[]', '肥是一种精神，肉是一种态度。', '离线', '0');
INSERT INTO `xinxi` VALUES ('31', '1', '/static/2.jpg', '嗜毒尐女', '12131313', '踏歌行', null, '[]', '〆、青春、是一幕唱不完旳情歌，一遍又一遍上映着美妙。', '离线', '0');
INSERT INTO `xinxi` VALUES ('32', '1', '/static/3.jpg', '落空', '212131312', '镜中花', '2019-6-10', '[]', '上辈子一千次的卖萌，终于换来你今生一次的回眸。', '离线', '0');
INSERT INTO `xinxi` VALUES ('33', '1', '/static/4.jpg', '晚秋时分', '121343434', '镜中花', '2019-6-10', '[]', '除了喜欢 懂与陪伴更重要', '离线', '0');
INSERT INTO `xinxi` VALUES ('34', '1', '/static/5.jpg', '完美的主题曲', '547564545', '镜中花', '2019-5-25', '[]', '世界上最不能比的三样：友情 亲情 爱情。。。', '4G', '1');
INSERT INTO `xinxi` VALUES ('35', '1', '/static/6.jpg', '愿做听众', '2323243254', '水中月', '2019-6-10', '[]', '你永远都不会知道自己到底有多坚强，直到有一天你除了坚强别无选择。', '离线', '0');
INSERT INTO `xinxi` VALUES ('36', '1', '/static/7.jpg', '\r\n不会说话的嘴', '2324342', '吹雪剑', '2019-6-10', '[]', '我抱着一个醉生梦死的枕头', '离线', '0');
INSERT INTO `xinxi` VALUES ('37', '1', '/static/8.jpg', '花重锦官城', '1213243245', '吹雪剑', '2019-6-10', '[]', '习惯了等待，于是，在轮回中我无法抗拒的站回等待的原点。', '离线', '0');
INSERT INTO `xinxi` VALUES ('38', '1', '/static/9.jpg', '不及你美', '32435435', '吹雪剑', '2019-6-10', '[]', '当看清了现实，放下就容易多了、', '离线', '0');
INSERT INTO `xinxi` VALUES ('39', '1', '/static/10.jpg', '呼吸很轻回忆很重', '232434535', '悍世刀', '2019-6-10', '[]', '岁月的年轮上，标记我们曾经的欢笑。', '4G', '1');
INSERT INTO `xinxi` VALUES ('40', '1', '/static/11.jpg', '白衣不染尘', '23243253', '悍世刀', '2019-6-10', '[]', '乐观而灿烂灿烂的笑容不但愉悦本身，也快乐着身边的每一个人。', '离线', '0');
INSERT INTO `xinxi` VALUES ('41', '1', '/static/1.jpg', '怜爱加醋', '23243253', '悍世刀', '2019-5-28', '[]', '肥是一种精神，肉是一种态度。', '离线', '0');
INSERT INTO `xinxi` VALUES ('42', '1', '/static/2.jpg', '嗜毒尐女', '21313132', '悍世刀', null, '[]', '〆、青春、是一幕唱不完旳情歌，一遍又一遍上映着美妙。', '4G', '1');
INSERT INTO `xinxi` VALUES ('43', '15', '/static/3.jpg', '落空', '12131313', '你的好友', '2019-5-28', '[{\"src\":\"/static/9.jpg\",\"text\":\"你好\",\"shei\":\"ziji\"},{\"src\":\"/static/3.jpg\",\"text\":\"你好啊，我们来聊天吧\",\"shei\":\"taren\"},{\"src\":\"/static/9.jpg\",\"text\":\"你贵姓啊\",\"shei\":\"ziji\"},{\"src\":\"/static/3.jpg\",\"text\":\"你先猜猜看哦！\",\"shei\":\"taren\"},{\"src\":\"/static/9.jpg\",\"text\":\"姓猪？\",\"shei\":\"ziji\"},{\"src\":\"/static/3.jpg\",\"text\":\"你姓啥\",\"shei\":\"taren\"},{\"src\":\"/static/9.jpg\",\"text\":\"是不是猪？\",\"shei\":\"ziji\"},{\"src\":\"/static/3.jpg\",\"text\":\"笑而不语是一种态度\",\"shei\":\"taren\"},{\"src\":\"/static/9.jpg\",\"text\":\"什么态度？\",\"shei\":\"ziji\"},{\"src\":\"/static/3.jpg\",\"text\":\"我敢有啥态度啊，冤枉。\",\"shei\":\"taren\"},{\"src\":\"/static/9.jpg\",\"text\":\"你到底姓啥？\",\"shei\":\"ziji\"},{\"src\":\"/static/3.jpg\",\"text\":\"这也是个秘密，不能随便告诉你的\",\"shei\":\"taren\"},{\"src\":\"/static/9.jpg\",\"text\":\"告诉一下呗\",\"shei\":\"ziji\"},{\"src\":\"/static/3.jpg\",\"text\":\"为什么要听你的？\",\"shei\":\"taren\"},{\"src\":\"/static/9.jpg\",\"text\":\"大姐 \",\"shei\":\"ziji\"},{\"src\":\"/static/3.jpg\",\"text\":\"尹妍\",\"shei\":\"taren\"},{\"src\":\"/static/9.jpg\",\"text\":\"还真有名字啊？\",\"shei\":\"ziji\"},{\"src\":\"/static/3.jpg\",\"text\":\"可能吧，我也不确定。\",\"shei\":\"taren\"},{\"src\":\"/static/9.jpg\",\"text\":\"12121212\",\"shei\":\"ziji\"},{\"src\":\"/static/3.jpg\",\"text\":\"12121213\",\"shei\":\"taren\"}]', '上辈子一千次的卖萌，终于换来你今生一次的回眸。', '离线', '0');
INSERT INTO `xinxi` VALUES ('44', '15', '/static/4.jpg', '晚秋时分', '212131312', '你的好友', '2019-5-28', '[{\"src\":\"/static/9.jpg\",\"text\":\"12121312\",\"shei\":\"ziji\"},{\"src\":\"/static/4.jpg\",\"text\":\"12121313\",\"shei\":\"taren\"}]', '除了喜欢 懂与陪伴更重要', '离线', '0');
SET FOREIGN_KEY_CHECKS=1;
