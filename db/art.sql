/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : ssm_manage

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2018-03-30 14:33:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `art`
-- ----------------------------
DROP TABLE IF EXISTS `art`;
CREATE TABLE `art` (
  `ID` varchar(255) NOT NULL COMMENT ' 主键ID',
  `ART_TITLE` varchar(255) DEFAULT NULL COMMENT ' 标题',
  `ART_SUMMARY` varchar(255) DEFAULT NULL COMMENT '内容',
  `ART_IMG` varchar(255) DEFAULT NULL COMMENT '封面',
  `ART_URL` varchar(255) DEFAULT NULL COMMENT '链接',
  `DATE_STR` varchar(50) DEFAULT NULL COMMENT '时间字符串',
  `CURRENT_PERIOD` int(11) DEFAULT NULL COMMENT '第几期 判断在同一期',
  `CURRENT_PERIOD_SORT` int(11) DEFAULT NULL COMMENT '本期的位置 1表示在第一个栏位 2表示在第二个栏位 依次类推',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT ' 创建时间',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT ' 更新时间',
  `STATUS` varchar(255) DEFAULT NULL COMMENT '-1已删除 1未删除',
  `SORT` varchar(255) DEFAULT NULL COMMENT '排序',
  `DESC_M` varchar(255) DEFAULT NULL COMMENT '其他描述',
  `MENU_ID` varchar(255) DEFAULT NULL COMMENT '系统菜单ID(这个是关联管理后台那个菜单的)',
  `PARENT_MENU_ID` varchar(255) DEFAULT NULL COMMENT '系统父级菜单ID',
  PRIMARY KEY (`ID`),
  KEY `ID` (`ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文章表';

-- ----------------------------
-- Records of art
-- ----------------------------
INSERT INTO `art` VALUES ('cc85e70b-a802-4ae6-9154-bb924d7e9fef', '一个女程序员第十二年工作总结', '这篇文章是我对过去一年的总结，心路历程也是在前面的基础上积累出来的。 工作以来每年都会准时写总结，我属于不太努力的人，懒， 随波逐流。所以十二年才这样，算是个反面教材吧。', '478bd5bd18314151932d7319e19e78ec', 'http://mp.weixin.qq.com/s/dQmcdu5M3ejOk7Xbr7Z-Yw', null, '1', '1', '2018-03-21 16:26:46', null, '1', null, '1', '111', '107');
INSERT INTO `art` VALUES ('d01a3d6c-f06c-4ba8-8c38-3f730687e902', '获奖名单 | 你的蛙，不，你的娃周末可以去耍嗨森了！', '使用时，请在“一个半小时旅游圈”公众号对话框导航栏：点击“福利”—“会员中心”—“我的卡券”，找到“活动福利|儿童职业体验二维码券”，由星期八小镇工作人员扫码核销，即可免费畅玩小镇！报上预留的姓名和手机号码也可直接免票畅玩。', 'ccc0baa520ab4a3f8bc5ff7eb4b7e088', 'http://mp.weixin.qq.com/s/w1dfs0YDdhHv6zS7gazJJw', null, '1', '1', '2018-03-08 17:24:56', null, '1', null, '', '129', '125');

-- ----------------------------
-- Table structure for `attachment`
-- ----------------------------
DROP TABLE IF EXISTS `attachment`;
CREATE TABLE `attachment` (
  `attachmentId` int(11) NOT NULL AUTO_INCREMENT COMMENT '附件ID',
  `attachmentName` varchar(50) DEFAULT NULL COMMENT '名称',
  `attachmentPath` varchar(50) DEFAULT NULL COMMENT '路径',
  `attachmentTime` datetime DEFAULT NULL COMMENT '时间',
  PRIMARY KEY (`attachmentId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of attachment
-- ----------------------------
INSERT INTO `attachment` VALUES ('1', '手动备份20171129142347.xls', 'logs/backup', '2017-11-29 14:23:47');
INSERT INTO `attachment` VALUES ('2', '手动备份20171129142641.xls', 'logs/backup', '2017-11-29 14:26:41');
INSERT INTO `attachment` VALUES ('3', '手动备份20171129142920.xls', 'logs/backup', '2017-11-29 14:29:20');

-- ----------------------------
-- Table structure for `commodity`
-- ----------------------------
DROP TABLE IF EXISTS `commodity`;
CREATE TABLE `commodity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `commodityName` varchar(255) DEFAULT NULL,
  `commodityDetails` text,
  `commodityStock` int(11) DEFAULT NULL,
  `commodityPrice` double(11,2) DEFAULT NULL,
  `sellerId` int(11) NOT NULL,
  `arrayImg` text,
  `commodityState` int(2) NOT NULL,
  `createDate` varchar(50) DEFAULT NULL,
  `invalidDate` varchar(50) DEFAULT NULL,
  `share` int(2) DEFAULT '0' COMMENT '是否支持分享。 -1 不支持分享，页面菜单中将隐藏分享的一系列按钮   1支持分享。(share)',
  `shareTitle` varchar(255) DEFAULT NULL COMMENT '分享标题。(shareTitle)',
  `shareDescM` varchar(500) DEFAULT NULL COMMENT '分享描述。(shareDescM)',
  `shareImage` varchar(255) DEFAULT NULL COMMENT '分享图片。(shareImage)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of commodity
-- ----------------------------
INSERT INTO `commodity` VALUES ('26', '明月村亲子春游踏青之旅——采茶制茶体验+捏陶制陶手工', '<p><span style=\"font-family: 宋体, SimSun;\">甘溪镇明月村位于大五面山浅丘地带，地处蒲江、邛崃、名山三（市）县交汇处，属浅丘地区。全村幅员面积6.78平方公里，森林覆盖率46.2%，以雷笋与春茶闻名。<br/><br/>每到春季，大片的茶圃欣欣向荣，芽尖嫩绿可爱只等采摘。穿梭于绿地中，清香的茶叶味芬芳扑鼻。更有竹林中春笋在雷雨动之后拔地而起，竹林修貌，绿荫遮天。可追逐其中寻找儿时之童趣。<br/><br/>明月村存着我国目前唯一“活着的邛窑”，于2012年间在村落中被发现 。&nbsp; “邛窑”，始创于东晋，成熟于南朝，盛于唐，衰于宋，主要分布在我国的四川省境内，以青釉、青釉褐斑、青釉褐绿斑和彩绘瓷为主，是我国著名民间瓷窑之一。 台湾“故宫博物院”陶瓷专家曾被邀请来考察明月窑，认为这座一直在烧制陶瓷的老窑，属于原汁原味的典型邛窑，其烧制工艺完整保存了唐代技艺。<br/>来自全国各地的陶艺家、收藏家逐渐来到这个偏远的存在，在松林间用手作和木头造就了这里的陶瓷展厅和茶饮空间。在此之后，作家、陶艺师、设计师、画家也逐渐涌向这里，逐步建立起各具特色的工作室。<br/>明月村只有一条主干道，之间散落着不同的小景点，如工作室，扎染坊等。不同小景点之间可以乘坐观光车。<br/>游有高低村落茶园竹林，食有明月食堂，住有画月民宿，可捏陶造物，也可扎染制衣，明月村春日之旅，尽在1.5小时旅游圈。</span></p><p><br/></p><p><strong>活动内容</strong><br/>1、参观车参观明月村落，讲解乡村风俗，浏览陶艺博物馆，了解明月窑历史。<br/>2、观摩农家茶园感与天然茶叶制作过程，感受茶乡之美<br/>3、参与茶叶摘采和制茶过程<br/>4、捏陶制陶，在老师带领下进行陶艺创作。<br/><br/><strong>具体行程安排</strong><br/>10:00&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 明月村村口集合<br/>10:00-10:30&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 观光车游览村落与竹林<br/>10:30-11:40&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 观摩茶园，采茶制茶<br/>11:40-12:40&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 午餐时间<br/>12:40-15:40&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 创意制陶<br/>15:40&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 活动结束解散</p><p>（本行程含专业摄影师，负责现场影像采集与后期制作，赠送当日照片影集）<br/><br/>（注：为安全考虑，一名成人最多可携带2名儿童）<br/>儿童价格包括：村内观光车4/次，采茶制茶体验1/次（茶叶不可带走，带走须现场支付10元），制陶烧陶体验1/次（陶艺品可带走），午餐1份。<br/>成人价格包括：村内观光车4/次，午餐1份<br/><br/><strong>预定须知</strong><br/>专享产品付款成功则代表抢订成功，逾期未付款则表示您放弃购买，我们会取消您的订单。<br/>专享产品价格仅限于“费用明细”中所列费用，如有其他未含费用敬请自理。<br/>团游产品请遵守集合时间，出行前，请您确保您自身的身体状况适合参加行程<br/></p><p><br/><strong>退变更限制</strong><br/>本产品不支持改退政策，购买前请确定出发时间。<br/><br/></p>', '0', '0.02', '12', 'b08506a97c5a4459b095c71c165329c6,6ec9daa77c5942af87bf618067c6b389,a07af1b7457d472e9a6abc8da0b05333,dd4a1cf0dd4a4f279326d66a7580e9bb,5e6246184ba246278879527ee7c75306,abced7f58008414eb6f7a82cf9c2aa6c,205653d0a1b144b9971f18a88a4658ae,31f220375bdb46b79b1db33f0838907c,', '1', '2017-12-15 0:0', '2018-5-2 10:12', '1', '活动报名 | 春访明月村——和孩子一起去春游', '1.5小时旅游圈专享，价值388春游套餐，一大一小只需199！', 'http://www.daxi51.com/ssm_file/upfile/image/2018322/1521700890293.jpg');

-- ----------------------------
-- Table structure for `commodityorder`
-- ----------------------------
DROP TABLE IF EXISTS `commodityorder`;
CREATE TABLE `commodityorder` (
  `co_id` int(11) NOT NULL AUTO_INCREMENT,
  `commodity_id` int(11) NOT NULL,
  `commodity_number` int(11) NOT NULL,
  `commodity_price` double(11,2) NOT NULL,
  `order_id` int(11) NOT NULL,
  PRIMARY KEY (`co_id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of commodityorder
-- ----------------------------
INSERT INTO `commodityorder` VALUES ('1', '26', '3', '5502.05', '307');
INSERT INTO `commodityorder` VALUES ('2', '26', '3', '5502.50', '308');
INSERT INTO `commodityorder` VALUES ('3', '26', '9', '5502.50', '309');
INSERT INTO `commodityorder` VALUES ('4', '26', '2', '5502.50', '310');
INSERT INTO `commodityorder` VALUES ('5', '26', '4', '5502.50', '311');
INSERT INTO `commodityorder` VALUES ('6', '26', '2', '5502.50', '312');
INSERT INTO `commodityorder` VALUES ('7', '26', '4', '5502.50', '313');
INSERT INTO `commodityorder` VALUES ('8', '26', '2', '5502.50', '314');
INSERT INTO `commodityorder` VALUES ('9', '26', '3', '5502.50', '315');
INSERT INTO `commodityorder` VALUES ('10', '26', '2', '5502.50', '316');
INSERT INTO `commodityorder` VALUES ('11', '26', '1', '5502.50', '317');
INSERT INTO `commodityorder` VALUES ('12', '26', '1', '5502.50', '318');
INSERT INTO `commodityorder` VALUES ('13', '26', '1', '5502.50', '319');
INSERT INTO `commodityorder` VALUES ('14', '26', '4', '5502.50', '320');
INSERT INTO `commodityorder` VALUES ('15', '26', '1', '5502.50', '321');
INSERT INTO `commodityorder` VALUES ('16', '26', '2', '5502.50', '322');
INSERT INTO `commodityorder` VALUES ('17', '26', '1', '5502.50', '323');
INSERT INTO `commodityorder` VALUES ('18', '26', '3', '5502.50', '324');
INSERT INTO `commodityorder` VALUES ('19', '26', '1', '5502.50', '325');
INSERT INTO `commodityorder` VALUES ('20', '26', '2', '5502.50', '326');
INSERT INTO `commodityorder` VALUES ('21', '26', '3', '5502.50', '327');
INSERT INTO `commodityorder` VALUES ('22', '26', '3', '5502.50', '328');
INSERT INTO `commodityorder` VALUES ('23', '26', '4', '5502.50', '341');
INSERT INTO `commodityorder` VALUES ('24', '26', '14', '5502.50', '342');
INSERT INTO `commodityorder` VALUES ('25', '26', '3', '5502.50', '343');
INSERT INTO `commodityorder` VALUES ('26', '26', '1', '5502.50', '344');
INSERT INTO `commodityorder` VALUES ('27', '26', '5', '5502.50', '345');
INSERT INTO `commodityorder` VALUES ('28', '26', '9', '5502.50', '346');
INSERT INTO `commodityorder` VALUES ('29', '26', '4', '5502.50', '347');
INSERT INTO `commodityorder` VALUES ('30', '26', '2', '5502.50', '348');
INSERT INTO `commodityorder` VALUES ('31', '26', '2', '5502.50', '349');
INSERT INTO `commodityorder` VALUES ('32', '26', '1', '5502.50', '350');
INSERT INTO `commodityorder` VALUES ('33', '26', '1', '5502.50', '351');
INSERT INTO `commodityorder` VALUES ('34', '26', '1', '5502.50', '352');
INSERT INTO `commodityorder` VALUES ('35', '26', '1', '5502.50', '353');
INSERT INTO `commodityorder` VALUES ('36', '26', '1', '0.01', '354');
INSERT INTO `commodityorder` VALUES ('37', '26', '1', '0.01', '355');
INSERT INTO `commodityorder` VALUES ('38', '26', '1', '0.01', '356');
INSERT INTO `commodityorder` VALUES ('39', '26', '2', '0.01', '357');
INSERT INTO `commodityorder` VALUES ('40', '26', '1', '0.01', '358');
INSERT INTO `commodityorder` VALUES ('41', '26', '1', '0.01', '359');
INSERT INTO `commodityorder` VALUES ('42', '26', '1', '0.01', '360');
INSERT INTO `commodityorder` VALUES ('43', '26', '1', '0.01', '361');
INSERT INTO `commodityorder` VALUES ('44', '26', '1', '0.01', '362');
INSERT INTO `commodityorder` VALUES ('45', '26', '1', '0.01', '363');
INSERT INTO `commodityorder` VALUES ('46', '26', '1', '0.01', '364');
INSERT INTO `commodityorder` VALUES ('47', '26', '2', '0.01', '365');
INSERT INTO `commodityorder` VALUES ('48', '26', '1', '0.01', '366');
INSERT INTO `commodityorder` VALUES ('49', '26', '1', '0.01', '367');
INSERT INTO `commodityorder` VALUES ('50', '26', '1', '0.01', '368');
INSERT INTO `commodityorder` VALUES ('51', '26', '1', '0.01', '369');
INSERT INTO `commodityorder` VALUES ('52', '26', '1', '0.01', '370');
INSERT INTO `commodityorder` VALUES ('53', '26', '1', '0.01', '371');
INSERT INTO `commodityorder` VALUES ('54', '26', '1', '0.01', '372');
INSERT INTO `commodityorder` VALUES ('55', '26', '1', '0.01', '373');
INSERT INTO `commodityorder` VALUES ('56', '26', '1', '0.01', '374');
INSERT INTO `commodityorder` VALUES ('57', '26', '1', '0.01', '375');
INSERT INTO `commodityorder` VALUES ('58', '26', '1', '0.01', '376');
INSERT INTO `commodityorder` VALUES ('59', '26', '1', '0.01', '377');
INSERT INTO `commodityorder` VALUES ('60', '26', '1', '0.01', '378');
INSERT INTO `commodityorder` VALUES ('61', '26', '1', '0.01', '379');
INSERT INTO `commodityorder` VALUES ('62', '26', '1', '0.01', '380');
INSERT INTO `commodityorder` VALUES ('63', '26', '2', '0.01', '381');
INSERT INTO `commodityorder` VALUES ('64', '26', '3', '0.01', '382');
INSERT INTO `commodityorder` VALUES ('65', '26', '4', '0.01', '383');
INSERT INTO `commodityorder` VALUES ('66', '26', '5', '0.01', '384');
INSERT INTO `commodityorder` VALUES ('67', '26', '6', '0.01', '385');
INSERT INTO `commodityorder` VALUES ('68', '26', '7', '0.01', '386');
INSERT INTO `commodityorder` VALUES ('69', '26', '8', '0.01', '387');
INSERT INTO `commodityorder` VALUES ('70', '26', '9', '0.01', '388');
INSERT INTO `commodityorder` VALUES ('71', '26', '10', '0.01', '389');
INSERT INTO `commodityorder` VALUES ('72', '26', '1', '0.01', '390');
INSERT INTO `commodityorder` VALUES ('73', '26', '1', '0.01', '391');
INSERT INTO `commodityorder` VALUES ('74', '26', '1', '0.01', '392');
INSERT INTO `commodityorder` VALUES ('75', '26', '1', '0.01', '393');
INSERT INTO `commodityorder` VALUES ('76', '26', '1', '0.01', '394');
INSERT INTO `commodityorder` VALUES ('77', '26', '1', '0.01', '395');
INSERT INTO `commodityorder` VALUES ('78', '26', '1', '0.01', '396');
INSERT INTO `commodityorder` VALUES ('79', '26', '1', '0.01', '397');
INSERT INTO `commodityorder` VALUES ('80', '26', '1', '0.01', '398');
INSERT INTO `commodityorder` VALUES ('81', '26', '2', '0.01', '399');
INSERT INTO `commodityorder` VALUES ('82', '26', '1', '100.00', '400');
INSERT INTO `commodityorder` VALUES ('83', '26', '1', '100.00', '401');
INSERT INTO `commodityorder` VALUES ('84', '26', '1', '100.00', '402');
INSERT INTO `commodityorder` VALUES ('85', '26', '3', '124.00', '403');

-- ----------------------------
-- Table structure for `focused_user_group`
-- ----------------------------
DROP TABLE IF EXISTS `focused_user_group`;
CREATE TABLE `focused_user_group` (
  `ID` varchar(255) NOT NULL COMMENT '主键ID',
  `GROUP_NAME` varchar(255) DEFAULT NULL COMMENT '分组名',
  `PERMISSIONS` varchar(255) DEFAULT NULL COMMENT '拥有的操作权限',
  `NUMBER` varchar(255) DEFAULT NULL COMMENT '现有人数',
  `MIX_NUMBER` varchar(255) DEFAULT NULL COMMENT '允许最大分组人数',
  `DESC_M` varchar(255) DEFAULT NULL COMMENT '描述',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  `STATUS` int(11) DEFAULT NULL COMMENT '-1已删除 1未删除',
  `SORT` varchar(255) DEFAULT NULL COMMENT '排序',
  `TEMP` varchar(255) DEFAULT NULL COMMENT '预留字段',
  `MENU_ID` varchar(255) DEFAULT NULL COMMENT '系统菜单ID',
  `PARENT_MENU_ID` varchar(255) DEFAULT NULL COMMENT '系统父级菜单ID',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of focused_user_group
-- ----------------------------
INSERT INTO `focused_user_group` VALUES ('18e13c56-6a71-43d8-9199-447672c45dbe', '水军', null, '3', '1000', '平台水军,此类用户 = 自己人', '2018-01-10 11:10:02', '2018-01-22 11:04:35', '1', '5', '21', '21', '12');
INSERT INTO `focused_user_group` VALUES ('2574eec5-f53c-4038-b802-7a0206cf4a30', '1', null, '0', '66', '1', '2018-01-15 11:59:41', '2018-01-15 11:59:49', '-1', '1', '21', '21', null);
INSERT INTO `focused_user_group` VALUES ('5455621d-0f9d-4f3b-aba8-6f5427b149bf', '普通用户', null, '3', '1000', '关注公众号的普通用户', '2018-01-10 14:14:03', '2018-01-22 11:04:39', '1', '9', '21', '21', '12');

-- ----------------------------
-- Table structure for `focused_user_info`
-- ----------------------------
DROP TABLE IF EXISTS `focused_user_info`;
CREATE TABLE `focused_user_info` (
  `ID` varchar(64) NOT NULL COMMENT '主键',
  `NICK_NAME` varchar(100) DEFAULT NULL COMMENT '昵称',
  `OPENID` varchar(100) DEFAULT NULL COMMENT '微信用户openid,用户唯一标识',
  `UNIONID` varchar(100) DEFAULT NULL COMMENT '微信用户unionid,多个公众号之间判断是否是同一个用户',
  `LANGUAGE` varchar(100) DEFAULT NULL COMMENT 'language用户的语言，简体中文为zh_CN',
  `COUNTRY` varchar(255) DEFAULT NULL COMMENT '国家',
  `PROVINCE` varchar(100) DEFAULT NULL COMMENT '省份',
  `CITY` varchar(100) DEFAULT NULL COMMENT '城市',
  `SEX` int(1) DEFAULT NULL COMMENT '性别GENDER=1表示男，=2表示女',
  `HEAD_IMG_URL` varchar(255) DEFAULT NULL COMMENT '头像',
  `SUBSCRIBE` int(1) DEFAULT NULL COMMENT '关注状态: 1=已关注，0=未关注',
  `SUBSCRIBE_TIME` varchar(100) DEFAULT NULL COMMENT '为用户关注公众号时间，注意：单位为秒，不是毫秒，要转换为毫秒要乘以1000，这个官网开发文档没有说明。',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  `USER_NAME` varchar(255) DEFAULT NULL COMMENT 'username用户名,备注名称',
  `PASS_WORD` varchar(255) DEFAULT NULL COMMENT 'password',
  `USER_PHONE` varchar(255) DEFAULT NULL COMMENT 'userphone用户名电话，也是非微信浏览器登录的账号',
  `STATUS` int(1) DEFAULT NULL COMMENT '删除标识符（1：正常  -1：删除）',
  `MENU_ID` varchar(11) DEFAULT NULL COMMENT '菜单ID',
  `PARENT_MENU_ID` varchar(255) DEFAULT NULL COMMENT '父级菜单ID',
  PRIMARY KEY (`ID`),
  KEY `ID` (`ID`) USING BTREE,
  KEY `MENU_ID` (`MENU_ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='关注用户信息表';

-- ----------------------------
-- Records of focused_user_info
-- ----------------------------
INSERT INTO `focused_user_info` VALUES ('00705133-3845-4619-a737-cb709a43b753', '\\u5927\\u6d77\\u2d\\u6c34\\u58a8\\u8bb0\\u5fc6', 'ophyRv6Cnl4rSuaoBBCBWratma4M', 'o5O6DxGXMKpXt38RrvqhG6dzhdtQ', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq1ouMaPavlofAEtibpWfhTGTmS17YO7zkB2JePX7uSbsVPKwxNLiaPutFuf5ZNic7qOYKBepV9RmIw6FbGEachkOoo/132', '1', '1506817908', '2018-03-08 16:02:02', '2018-03-08 16:02:05', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('00a1713f-9722-4b1a-9000-d90aa0088603', '\\u897f\\u884c\\u7684\\u8fbe\\u897f', 'o7QP0w08uWmGqhDiamTYyf4PZ_u4', 'o5O6DxPHQtGLO18IUjamKae4vjEg', null, '', '', '', '0', '', '1', '1514345231', '2018-03-15 14:19:27', '2018-03-15 14:19:29', null, null, null, '1', '108', '107');
INSERT INTO `focused_user_info` VALUES ('017cda85-6aca-478d-895d-2a75880318ae', '\\u82d7\\u82d7', 'ophyRv4Nmlg6kgw6NdY5fPf835MQ', 'o5O6DxCRP12RjxlSzRi4-MNUK2-Q', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq2qnYzLFqUFebzt7ib5VaRFw0ePqkHSfYDYTCJAENJ37iawN0FlQq0KjBKg1yclOkib6DS7xuE1egfHqRjpZiaeTtpib/132', '1', '1513815831', '2018-03-08 16:17:32', '2018-03-08 16:17:35', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('01fa67d3-6239-4d8d-8392-9f3ec29b15b8', '\\u70\\u67\\u6b\\u70\\u75\\u78\\u7a\\u64', 'ophyRvzqJz_MfQSya4SWIE8nR6oM', 'o5O6DxLk9LZ7SCV8ZXwr079uAnJU', null, '中国', '甘肃', '平凉', '1', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq3TQWAJMCliag5hUSOIUPKPhmqHbRswv7XuuibX8pUyNJkvyWopibqLFricecoj7Ujdeh4ic2adLXH6O1nHtHXGDweTL/132', '1', '1520344160', '2018-03-08 15:54:46', '2018-03-08 15:54:49', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('021888d0-3ee0-43eb-b312-5af8f491a571', '\\u5c0f\\u900f\\u660e', 'ophyRvyAtmmEacAABQo3Rmxu5qMI', 'o5O6DxKt11qrhCZq1vdE_kPsPUDM', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/rqvn1hjHytelqJK40pKa5sPoQiap5bqicB3SxUmkaSwL6ADOzibZj81FSogoTYB6dXGnu2fjHX68NfSxq5oEpIkpQ6RTJIG0XcH/132', '1', '1506136797', '2018-03-08 15:54:31', '2018-03-08 15:54:34', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('02859a7c-3cf0-48e4-9f0a-3e7527fdd517', '\\u6211\\u4eec\\u7684\\u5341\\u5e74', 'ophyRv5A4dVUkVY1ljj3BA1MmToE', 'o5O6DxDdUa8JWMiSo0VZ-TvOxsss', null, '中国', '北京', '大兴', '1', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvrzwwzGDGUoicF8hOCz6BT2xdj4yxhXibIauXlLDZ2KFsicNIKqL2pH4cC16EVRLPlenvt9AT3Psv5eh9byayjpGhT9/132', '1', '1515506027', '2018-03-08 16:20:26', '2018-03-08 16:20:28', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('02c468bc-4ac7-4855-a74e-b7bf978d3a14', '\\u575a\\u5b9a\\uff08\\u5f20\\u4fee\\u826f\\uff09', 'ophyRv2mZs3m3Sir0xp8GIrjIfTI', 'o5O6DxLivB1Qio9hlM3NCMUYBxkE', null, '中国', '四川', '自贡', '1', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq0CU41HGD0ia6FiaC3KXgLhnhyq2UXq5dhV1FfiaHksFjHmm4ib2X8ribicNjcwZibpu9Vh8iaev6kNBIA8xtJcXhLRJNbY/132', '1', '1506877452', '2018-03-08 16:07:04', '2018-03-08 16:07:07', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('0332c447-f37f-4998-b5e8-0efb7485eadf', '\\u77e5\\u6211\\u8005\\u6709\\u51e0\\u4e2a', 'ophyRv5PDXMDFLkROBs29s7MIk1o', 'o5O6DxDAof2ps21KvS0DF0hZQo2A', null, '', '', '', '2', 'http://thirdwx.qlogo.cn/mmopen/8qj9KWddOVGPibsNDYlpBAodVWicBZ6ibaskS8MZfm6Kz6XzeYkBtvicvut39Vnt7v8uRsocJpI4Yy4XpXtuDia84UdUZFcQ0HIEP/132', '1', '1520344182', '2018-03-08 16:10:24', '2018-03-08 16:10:27', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('0373f970-292a-4332-a168-2d5ee0383830', '\\u5706\\u5708\\u5988\\u5988', 'ophyRv94kkYgiXCdZ3N2cMU6kAtc', 'o5O6DxCFp-Qz8Dr--aVPHyUJ69Jw', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpNpJhgTlBjQcBMwvqYIt3gxounU4E6jMbvQmqib9wqwQdaa9yG11nf7kV0N95wzRZBE4XrNveQiatqu143avpn2Kb/132', '1', '1506235475', '2018-03-08 16:22:19', '2018-03-08 16:22:22', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('0380e25c-f119-4a22-b2ef-86b168601a67', '\\u957f\\u6b64\\u4ee5\\u5f80', 'ophyRv_ibPrR2647QzoEi-EioJtU', 'o5O6DxLcSxzRb9SndhAjtodWoUjo', null, '', '', '', '2', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvry5L4zJn2FaNvVGfWSSOWicagC5dh3PDRnbrKUjfmThricJHHLze0SicAoEODny9iaNoossbUHpickBahmYB7PQknqSg/132', '1', '1515506015', '2018-03-08 16:12:19', '2018-03-08 16:12:22', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('03971d10-016f-4ad0-bd89-1e9615800a62', '\\u73\\u6a\\u6e\\u68\\u4f\\u59', 'ophyRvytCSV47Pb8UHcNqTlyjaXQ', 'o5O6DxDFZq2yeplf-BmT0y2VQSIE', null, '', '', '', '0', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq3CiamWNXIql3zbLoCWqR3mWc4Au79FxysSILbGMRhw4BEaibR8oTZ4wO55SLqqPny2chNvzia7RQzFxeastKqKgZB/132', '1', '1520344237', '2018-03-08 16:17:09', '2018-03-08 16:17:12', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('03deb0e8-602f-47c9-994f-02ba5feb9961', '\\u6c\\u6e\\u74\\u72\\u6f', 'ophyRv_CpylvmQGw0cmgHmKqdy8E', 'o5O6DxFxlaA6OKsZavvQeQqkNd_4', null, '中国', '四川', '遂宁', '1', 'http://thirdwx.qlogo.cn/mmopen/ywAMlAnkjP9mreK6HvAQfKVphicAcG5g4EF1Kzg3MVQtZzttmjCshticiaC0iaoljhwtkqxWjAduwlI4as9x6QbJAU2FpSpccKO8/132', '1', '1506129934', '2018-03-08 16:14:33', '2018-03-08 16:14:36', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('04248e2c-e8ea-4dc6-97ac-233f00422ff7', '\\u84b2\\u84b2', 'ophyRv52wFYUtCv7vwRxLrDjmZHQ', 'o5O6DxK5wy4jdFhwJsdqGP-P14m0', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpNpJhgTlBjQcBmI6UMSdrlzGSj3cDpKEJMHE5eH80ib1hoNDiaoehJIj2DwdCeAurVvtufcWBaibzLcLe3oPATfLeh/132', '1', '1515070160', '2018-03-08 15:55:39', '2018-03-08 15:55:42', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('046e4bee-97da-4e9f-9dad-cbf51c1bbd45', '\\u674e\\u5c0f\\u9f99', 'o08dF1HlXQhIO7OeCtIF505BEJys', 'o5O6DxNIztELnWGuBXe2wPfXTjNI', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvrxV9PtqUqibccyhrGSVSWN7DtqkX5ZWuqNRny7be5wU7nJV2KYjuw1qtGO5RFVc4sISXGb9j0lyJEfI6VlxwLu5e/132', '0', '1514174366', '2018-03-14 13:31:29', '2018-03-14 13:31:30', null, null, null, '1', '119', '118');
INSERT INTO `focused_user_info` VALUES ('056e28aa-1a52-4621-8738-2f793ee671ea', '\\u68f5\\u68f5\\u5927\\u7206\\u70b8\\ud83d\\udc7b', 'ophyRv1UdxC9i9FNTFJVLcrW8YZU', 'o5O6DxOMMFVI_cSNdMzK_W4Q8pio', null, '埃及', '', '', '2', 'http://thirdwx.qlogo.cn/mmopen/rqvn1hjHytfaB2v9bcNXIMxic25feWVriaurVe2J67apamv999Mzc1FqL2GdBhOJDuicOkibRFZnAIldMIx2biaiaFCMbXpR5FSleY/132', '1', '1513824039', '2018-03-08 16:10:46', '2018-03-08 16:10:49', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('0616e22b-048c-44e8-b2f1-84b9bc11ac1e', '\\u542c\\u7740\\u9017\\u6bd4\\u5439\\u5618', 'ophyRv64KhYpwtoWVGy7jZeDZs_4', 'o5O6DxE0FVPMte7mG-lgjbVPp5wQ', null, '中国', '海南', '西沙', '1', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpNU8TmLtjWl95iciaPiaTicwaaHiaoVLZT8JwSbjTxy6S2ucb9dfnsbKq4BINLT34IIJWwHSJCiajoyLHyBsJj2MIBYzg/132', '1', '1520344171', '2018-03-08 16:17:13', '2018-03-08 16:17:16', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('06a0fe0c-9652-4061-a00d-63627af4058f', '\\u5f20\\u52c7', 'ophyRvw2LS-MSYuF4rQeZyZQ7CSI', 'o5O6DxDBKcC0NZvQdJ-ZlH5rSZK4', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvrxj22SYT69EiaZibt81bniaJtGVp0iaX0xq6nPGQI3LQeE4cEKRZOJm0oxXgApGric2vkFx0jEiaRXrGzctIKFbHg1sd2/132', '1', '1506134636', '2018-03-08 16:04:14', '2018-03-08 16:04:17', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('06a859af-bd24-4295-aa31-3009dfcb174a', '\\u51fa\\u552e\\u6b64\\u6811', 'ophyRvxThrss9QwPXOGYDe_5_8RQ', 'o5O6DxFtVGXtpIgVKxfaY2KGOEiQ', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvryjJCSEnVIQqgJFiaH5ick7lEs9JcvtfEkLozqgGFyvQiaIs7a6h5emUdm7yO8g2V1wcsInA4NCbqUNqaSLcXMO3p0/132', '1', '1506858135', '2018-03-08 16:08:38', '2018-03-08 16:08:40', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('06aa4d38-1998-43b4-a0bd-e35fc7d6ca18', '\\u5982\\u610f', 'ophyRv0qvYngRIJBgo2WWSB_AoGw', 'o5O6DxAx-h0d-lkpgxwey0FDDX4g', null, '', '', '', '0', 'http://thirdwx.qlogo.cn/mmopen/gqc1SG2j0z9nDcCefnBZ4PEUA198K4Bo5QpYoZuwFMaGyeG0TH2louYZdTZicOPuJtrw8NQDXbg7L9Smwc9pssPnaWJfibLl0E/132', '1', '1506132877', '2018-03-08 16:23:16', '2018-03-08 16:23:19', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('06d20b8e-fc4b-4cb7-bb42-441ecc20454e', '\\u5c81\\u6708\\u5982\\u6b4c', 'ophyRv2VYX7BZTFPTgOHkecMtZ6k', 'o5O6DxEZrsYsBkzOsfUPRcBY8JSk', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvrxjzF9Ta8uHXCZmnV2fRpRJicfXn2u0TxkdY0caicwrbUXgibuyqF0he8u8U0lazDqnVUmZDoCFo5toicQN8DtgLfiaK/132', '1', '1506236494', '2018-03-08 15:57:30', '2018-03-08 15:57:32', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('076a71b9-f815-4c96-8d8a-d3bf2be9e1c9', '\\u60c5\\u60dc', 'ophyRv7eKipk3eYE5OY6PjASkaWg', 'o5O6DxMja65DVJFDsaSf4t2lHNdk', null, '', '', '', '2', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpO9Jp2dHBOdxzPUsBdeuib404Y8BZ7VIpNLSjHFkkic7oATWIJvlibajyvTCuH4w2eQMic6PTAVxibGv8sLiaSRk4RQFs/132', '1', '1520344164', '2018-03-08 16:01:44', '2018-03-08 16:01:46', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('076d4f6c-db13-4c0c-80ec-183c473f18e8', '\\u738b\\u6625\\u9e4f', 'ophyRv2jrFId4vM553613AHOx2y4', 'o5O6DxEn3EdYppwaWhDZ56g7mSC4', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBQCbWk5zjXjlph5ExWo1vuwBLiatj0sAOgtGnS9xKPlCBHaWsiceqricgbofwTD5aK2Thot3BibazNlhtkuxORx8IpCCiacK0Uicnt8/132', '1', '1506680649', '2018-03-08 15:47:54', '2018-03-08 15:47:56', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('07eac4da-670c-491b-9646-a1da2bfcc9ad', '\\u946b\\u6c47\\u4e30\\u5e03\\u827a\\u5899\\u7eb8', 'ophyRv3l9-kdrsqYhSTzHYBAuJYE', 'o5O6DxNvjAOV5qoJQWQ935Xnndu8', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvryhb2g9lVSv9X4AXgMz8bgiaz0EmiauTmJvAtTYibPpjBIotBjdPmnRBahVvm2mW0vxnMhR6G2kZhemX3vwUic1pYicia/132', '1', '1509508208', '2018-03-08 16:20:50', '2018-03-08 16:20:52', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('0836ba3e-6f53-4e70-9323-10ca16bac25e', '\\u6327\\u5080\\u7e52', 'ophyRv0OmIBaTeNOOBQAr0wV0H4E', 'o5O6DxDjpQF9_wUNyB9GvNGtE7B8', null, '', '', '', '1', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq32q1pYc3nrTYqKxZDOiboKBQwRtaVg9mAc4dgiakib0QvgLicquBQGicRKQc7v5Ppco8AASKeKANa2h2YiawZhFsySky/132', '1', '1520344236', '2018-03-08 16:15:58', '2018-03-08 16:16:01', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('096a6ebe-4142-4054-85fd-f2bd7d19901f', '\\u4f60\\u8bf4\\u8fc7\\u6211\\u4fe1\\u8fc7', 'ophyRv93VAahFjME51KsQRzb9Juk', 'o5O6DxGbpmQZOn8MecbthK1qasIg', null, '', '', '', '2', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq1TrZmzsy4jWAy07TxDIj1tqcya73lj7QwMFG3T41ZibrWfEVStwrOiaj3mJMJUHnBuFjnOF6DNfQfiaLXOJeW2COib/132', '1', '1515506024', '2018-03-08 16:16:09', '2018-03-08 16:16:12', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('0991c079-7180-4894-90b6-2a4eefff920a', '\\u66\\u77\\u7a\\u63\\u68\\u6b\\u6d\\u71\\u75\\u79\\u63', 'ophyRv1wIow_tifDPsHBr_a1A30Y', 'o5O6DxKO4hw06Tk3oAbbMSt3k9Fs', null, '', '', '', '2', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpP5oibib89uQc3CXFticyBPjSWHoXK0ibMeEcCkOcYCSK3ichzy5hxmD9gKib4lUtZGL8w2dC4nibLMw8QQaapPJibUkdiba/132', '1', '1520344232', '2018-03-08 16:12:12', '2018-03-08 16:12:15', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('09e029a8-1b66-4627-92a8-3eb051a8c198', '\\ue119', 'ophyRvwtKVMPeRtf8Q0lX8cxtWxE', 'o5O6DxI5pS9GuqE_Gk0mxwmTkdCU', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvryQnquQc1CicdlLXWM1AdQClGt8eHeibvCVicuM5sBa1YSplMSTOp6oZEEicMMicDIJ3vpmf6CAKZVWkcj6lTU05yJgX/132', '1', '1506128341', '2018-03-08 16:18:54', '2018-03-08 16:18:57', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('09f6a66b-6f49-41d3-85aa-383f52b921d2', '\\u963f\\u4fca', 'ophyRv_zprK-AtDeNP8kti44RIqo', 'o5O6DxCvF0F6nzbdbzTEIZYrFNzs', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq2qnYzLFqUFeXicMqewyTeUibtfQ9mHuop879DRYenaG6NUA3PdNvI83dyWnQmiatzSa6yr97aESOKajYKFyKXLgEq/132', '1', '1520561434', '2018-03-09 10:10:35', '2018-03-09 10:10:35', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('0aa77990-3f02-45d7-93ed-390c2753070c', '\\u6de1\\u5b9a', 'ophyRv2gu07xfxUMvDZjP6A7upws', 'o5O6DxDCLOndoTwYNZj_W2QbkN7E', null, '', '', '', '1', 'http://thirdwx.qlogo.cn/mmopen/s1TK4SnsSzCvvpia6A6D78BAia50amWDN9iaAQ7XkwicpibNODHPBftfkttqRdiaUgafibiaC2iaZic0X1A3iaBQlicFuicQnvqE9hCICeXNE/132', '1', '1520344193', '2018-03-08 16:12:23', '2018-03-08 16:12:26', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('0b1b8292-125a-4ea0-aac0-0daa8a1d7560', '\\u6c89\\u9ed8\\u662f\\u91d1\\ud83c\\udf3a', 'ophyRv9Xum4Fi6y2Q10egyFB93Sg', 'o5O6DxEN_he0Dk6UokaTeOs6dM0s', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/bakJJxHl9V7tticuqgVafw5RzFGGl5L0s9640bVXQiaYKibTzRkUI0EepFcHkl5w7MfJ6YzXYusiauoBHKzic3D9uff0J55HibXjnt/132', '1', '1515056713', '2018-03-08 15:45:36', '2018-03-08 15:45:39', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('0b27d5fa-6347-4fdc-aa77-2397c4f75659', '\\u6708\\u5149\\u3002', 'ophyRv298lxy90dgY5p7vkT2JHWk', 'o5O6DxMYRocMunZKOevvOYguzcwE', null, '中国', '四川', '巴中', '1', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvrzhD9HHZiarrAb6GHfj4JMhfjjpQVmbpKVqp5riceRkCtElkyszkDibNll4qxVkpqQhRiahfqvGNofbh8ib2yTmwwha3/132', '1', '1506235675', '2018-03-08 15:50:26', '2018-03-08 15:50:29', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('0b7f9467-ccae-4096-978c-faf3664902c2', '\\u8521\\u9102', 'ophyRvzU2GyzUjTQVS2gawP4k9X8', 'o5O6DxEt6tT5xQmzAWDHX0TLMvdw', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpPunIibIcDGp3vgz7ennVRQk6zZGXJb7IjhDiaTibLK4CavicQVl1TpIENxrSS4TkAkcuaCEqd5BqYicSYg7iaOiaibwBK9/132', '1', '1506851616', '2018-03-08 16:12:45', '2018-03-08 16:12:48', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('0bb65aee-dd1f-421f-8e68-0ccfefe7b0ea', '\\u79\\u79\\u62', 'ophyRv4l2dnxHTwRGItwJo3xtDwc', 'o5O6DxMvY9H3Tqi6DbGdDnBEq2Hc', null, '中国', '北京', '朝阳', '1', 'http://thirdwx.qlogo.cn/mmopen/9EzCoJDswGzljgmq6Sjt2ibIZDPz5A8xx0cDTMiaoobQJ9Q9R8nXWU50G5bmyvlEca6RDxWkjBAlmEH0Qtia8juROnf1UicpNNeH/132', '1', '1516457451', '2018-03-08 16:13:11', '2018-03-08 16:13:14', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('0bce1c20-43b2-4a22-84a1-bc750794a7ad', '\\u77e5\\u9047', 'ophyRv_DJgDr6UTnDCm_HMOp5Drc', 'o5O6DxDpUHxYlo6Aswej0O_dx4wA', null, '', '', '', '1', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpNw5GP1fSWZK63tKK0zp26hUlX9iaJW1iaoIFEnMv8PRBepESHT9QXNuqMMm2xXau2qe67lOQLy0QzFzVYaHEcacy/132', '1', '1520344175', '2018-03-08 16:22:56', '2018-03-08 16:22:59', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('0c074d5e-e641-4928-b772-101fee12298d', '\\u83aa\\u5c08\\u696d\\u91d8\\u978b', 'ophyRv5BBr3bItLT-G6WoDlmxLDg', 'o5O6DxHzBiF-e85pTCpGTPgSg_io', null, '', '', '', '2', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvrxicgLzbDh5LDhmoKjSgkI3qp2XF5riao6HmtG6JOpauNF8dG5MHsIJky9tRANcLNN5OxDePaUlDHb6B4IX6TCjibs/132', '1', '1515506029', '2018-03-08 15:53:32', '2018-03-08 15:53:35', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('0c101700-392c-4b67-b9fa-8cbcee65ae9a', '\\u6ea1\\u7dd4\\u7bb9\\u874a', 'ophyRv1lHipWgkfc62-q563KQaxk', 'o5O6DxGHNOZCVflxAooVHyNfS1t4', null, '中国', '四川', '成都', '1', '', '1', '1506132156', '2018-03-08 16:20:18', '2018-03-08 16:20:21', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('0c36098b-76a0-4466-9f97-44e4b4b5beda', '\\u76ef\\u7740\\u4f60\\u5988\\u5531\\u5fd0\\u5fd1', 'ophyRv4ZCTCfEin0YwhJepqHEklQ', 'o5O6DxF2mRoXaeJ4ez6C8bOOlXvA', null, '中国', '宁夏', '石嘴山', '2', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvrwJEgYosiahNEibyYtXPe4jc5bXtwWmjEafnW8EajWwPWHCEHOjyJFW1OC8QicR6ey2YGztAPEUTAiarjEpCacjAJfg/132', '1', '1520344176', '2018-03-08 16:03:29', '2018-03-08 16:03:31', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('0c689391-cc0c-4272-9603-3e61d77d7b5b', '\\u7409\\u7483\\u2e\\u7d2b', 'ophyRv4Fpvc1JerQ4if1NtP43q3Y', 'o5O6DxGoT8wdwH82Sr7qe37BT2fw', null, '中国', '西藏', '拉萨', '2', 'http://thirdwx.qlogo.cn/mmopen/3b5dWBtwxUoAkMvIicW9KTOwCkMcHE59X8gAyiaBJJicfibBRY7T5SdYGmCmL7G64QVfp0kDev5qPvvicuoEoXIzEkSa6l1JSOVMia/132', '1', '1506857988', '2018-03-08 16:03:32', '2018-03-08 16:03:35', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('0c73a50f-5b6b-4595-9b1a-a1cec0e416f5', '\\u5c0f\\u4e94', 'ophyRvyBOJ1Ot_qfTR6yGarzbS_s', 'o5O6DxBZKm7VMRkSkvWYvTKM-4aY', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpNpJhgTlBjQcEzHUvVDOOSVHpvANicDN7OZvapqDzAdIccddEp17OdrZqI8qoJl5T4fXKafWYh59lVIdKgujpROA/132', '1', '1515055045', '2018-03-08 16:23:45', '2018-03-08 16:23:48', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('0ce3ddc1-b7f1-400b-b11b-399de2d5cf55', '\\u52c7', 'ophyRv-HYJ78Yk8WsfgIwmWNZ8mY', 'o5O6DxFZo3g3Qat-RD7WeNxH5jvQ', null, '', '', '', '0', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvrxg0SZp4PozVo8DSWEx27YnBteQN00HhOxJUWfJpL7pP1aw4sv6zicTfg0NzB42QH6ZrfgtDWdyscAiauT6SvMaDx/132', '1', '1506132190', '2018-03-08 16:03:40', '2018-03-08 16:03:43', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('0d0e3384-99ed-49f0-9837-0e78d536acde', '\\u5c0f\\u5a55', 'ophyRv2u--v8TT_5TrSAtC9B_COw', 'o5O6DxAayhR0Yxw-TlwrbuwdFvEE', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq2ekH3BFu6hzribsP84uBsiaJFXA37SaDDd1iaIiceKd7FMvKZKNULt1H7A0bxtpc7407QH9KPyuNEKfOrbdBPbxkAZ/132', '1', '1520910732', '2018-03-13 11:12:13', '2018-03-13 11:12:14', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('0d16449a-6455-4ba8-bd37-979cf85abf68', '\\u8bb0\\u5fc6', 'ophyRv9irS19UDtn_49D9TrRdsiU', 'o5O6DxFE_l8I-cop0ubEQS_2--zA', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvrwgmqzlcox0aJ8icbW3S2DJvasuXslZkibJy8RDlWfsjMnTkrdgYEclt7OB8FgdZQ6pzjBJ8MqibLsAD1nhQYLR6BV/132', '1', '1518702247', '2018-03-08 15:56:37', '2018-03-08 15:56:40', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('0d8fee53-d031-4641-af7c-648a12e531a1', '\\u5fae\\u7b11\\u7740\\u8bf4\\u518d\\u89c1', 'ophyRv1EVrzsxvKxUOHYegkyvKTA', 'o5O6DxHHiU8r7YzhTGHX6P7LrHzA', null, '', '', '', '1', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvrzMvM6ica2ck5FtpKFSiantGmAZcicicYvb5OtTS0zInWfp5dBsDaE5wiazQIbUXcJyk2asck7ZbQlUApQyCVOC26c1K/132', '1', '1520344189', '2018-03-08 15:53:43', '2018-03-08 15:53:46', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('0d9d1702-06e8-41a1-ade5-6dd55f4f1387', '\\u8001\\u5fe0', 'ophyRv0i5xtgBBqjKYGTk3eZ8RvA', 'o5O6DxOi_WQ44ZFZ0pumMDdOYtu4', null, '', '', '', '2', 'http://thirdwx.qlogo.cn/mmopen/gqc1SG2j0z8urSx7J8hHVe1nFMNVORPVAIDrUIvIr6ics3coloScuZicOL80KTgicIC5MlG5blskrM5SDzDgCM1kf9mibYfcIick2/132', '1', '1506221488', '2018-03-08 15:52:23', '2018-03-08 15:52:26', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('0dd7dafa-54a5-429e-a4f9-db18aadf304d', '\\u9ea6\\u7530', 'ophyRv0xDtL1FU399-QrRari-DJc', 'o5O6DxCe6K5oIywiRLukUsKLiWLc', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpNpJhgTlBjQcIVPbVqJw0VfK3vRDibBQkl5jMYyuUcR85XIicRo7RyMcsOflicVkY1pGBicyuSQ5kLTI8YznEib7ZImG/132', '1', '1509621445', '2018-03-08 16:04:41', '2018-03-08 16:04:43', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('0e05ceb4-3f00-4551-bb47-3a81e3442a60', '\\u84c9\\u59b9\\u513f\\ud83d\\udc97', 'ophyRv_PS9CYmhINBgtL0YKqyg4E', 'o5O6DxAzf3Dp9AgK8PXHn0N9Y_eY', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/rqvn1hjHytf6CsoiavCVp3f386YDbdVHlgiaBpTQNibZsHsg0MtqNQqNFe4GGSqREYVcBIOWsbicSCV7R0FWZ0dVcaLuaibA89qrJ/132', '1', '1520828124', '2018-03-12 12:15:25', '2018-03-12 12:15:26', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('0e1fe796-300b-42f9-9f08-793d592bd4f4', '\\u5014\\u5f3a\\u7684\\u5c0f\\u8681', 'ophyRv2TU-wSjZFbY7sF0cK9VFDM', 'o5O6DxEC1L-oLGm6cy-YjghIrvYM', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpPxw1djEX0mghib0wOkX1icvUnkpsWC3kxO1hyEKlCGCGcLbdG4k1Qw6fhg0J67feMOM8iaSb137CO7Pubbtr46HLn/132', '1', '1508887483', '2018-03-08 15:49:54', '2018-03-08 15:49:57', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('0e7d2f4a-1ffd-419e-991c-ef8fb6ab27e5', '\\u95ee\\u4e1d\\u51dd\\u8299\\u96e8\\u53cc', 'ophyRv1ND4TTd7ov3tmvpnWqwrM4', 'o5O6DxG1CT5eluPfj-LDRjB9vB_o', null, '中国', '海南', '澄迈', '1', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq0gYP7ACXpwNJMqoiaicN0KrkdwHZHyBKh1KtULY2FibC4r7fXTc9icQqK3fIpBnatC1Jic91Uw86aphab5iawvSPrD9t/132', '1', '1520344167', '2018-03-08 16:14:37', '2018-03-08 16:14:40', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('0ee4bedd-e958-46b9-95be-fbb52bb82965', '\\u6668\\u66e6\\u5bb6\\u5c45', 'ophyRv8YUqbxhCEVU7qms-VqTZPs', 'o5O6DxMKtV6gmoReJ3DWLfzH8oKI', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/rqvn1hjHytcqXZ5iazoWnhJeC5xgEp2ntj75YC13TD7An1H4UhY5WLiaNbaHOKccaJn6374uC3ibELFFLP3WVY2iaFfBe9Rd3TGI/132', '1', '1515122402', '2018-03-08 15:56:34', '2018-03-08 15:56:36', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('0f0ab68b-b233-4306-ad5d-969b899ebf85', '\\u5e73\\u84dd\\u68a6\\u65cb\\u9999\\u9732', 'ophyRv1omNUT00YwPg7NN5wW1hFs', 'o5O6DxOzN5Y-sIjqkyfwps8Xst7s', null, '中国', '甘肃', '甘南', '1', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvrzsZgX2NxSbWt1smyoWrDNJkluAEqnufFP0oYBxBic7tedsJWdLPmFGu4HyjqXjhaicjUOaP2obQpMXbXpm1MBEMk/132', '1', '1520344172', '2018-03-08 15:50:45', '2018-03-08 15:50:48', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('0f2d76c6-b57f-4057-a69c-f12253b0f92a', '\\u7b2c\\u4e8c\\u4eba\\u683c', 'ophyRv9GZgoTzjTwc2e9aKRqKI34', 'o5O6DxOlFo6mBoJu9mAI8PAsnSuA', null, '', '', '', '1', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq2KWl4f4bIx0xGrLLk9XpbegFqNDTO85AXN8wiaZxx7GM2nu771YMU0HsA7Zia6BRSMfTToEdIOyg3qO8OUlhicfv0/132', '1', '1520344179', '2018-03-08 16:14:11', '2018-03-08 16:14:14', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('0fc43827-9c6b-455d-be06-e3f051a92308', '\\u5ed6\\u654f', 'ophyRvy3LUO6LMHXF37oX-u5M7G4', 'o5O6DxCn748an7pwKZjA_N4m7RBQ', null, '中国香港', '', '', '2', 'http://thirdwx.qlogo.cn/mmopen/3iaiaGlffY5JEscKkQCpokddFNZZkfw6vowEdgtCuia5TMQMPsr8HRq8d6OGFQia5AbSKicREEFMibzGRvHuqY3V1ibWW5CphkvJlf9/132', '1', '1516453823', '2018-03-08 16:18:02', '2018-03-08 16:18:05', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('10a8a37d-f645-4e57-a273-d2aea848f488', '\\u9759\\u9759\\u513f', 'ophyRvy9pjCdkgmVqr5b8aLE9D7s', 'o5O6DxMpN1-4pQrJoe8E8Glg62n8', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/rqvn1hjHytdiaOBdqhmDelRKYV4Rz0zRVCVDIibelFJOnUMrkWRYvNiaGnGgP4xlsBzn72ZvozMRg0FzcMIjhhiaVrBCQoTWfFtW/132', '1', '1515504015', '2018-03-08 16:14:41', '2018-03-08 16:14:44', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('10da8f4f-7284-4314-9e7d-02a6801001c1', '\\u6210\\u90fd\\u8d62\\u9886\\u5730\\u4ea7\\u987e\\u95ee', 'ophyRvz6D4XuVdSpjiXzJSU3VjTw', 'o5O6DxECt5W1Yy4NNwXdQubGPYuU', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpNpJhgTlBjQcNCLyna0tzFrYHeY8SwSB5QYk5VQHh5KwpHANgYt2Z8jVpSqqOPHvicuA9iaiaf9T6vEBu3K45zHpAf/132', '1', '1506298296', '2018-03-08 15:53:36', '2018-03-08 15:53:38', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('11276c97-f393-4a8e-884c-adc322e74e74', '\\u897f\\u8d1d\\u4e1c', 'ophyRv7biSug5z0KZM9mNDX9CWTw', 'o5O6DxHhtR-CQj7sAyPM0rmKIoGU', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq2qnYzLFqUFeZZrYk8ge3fMxhgelyzCTs6auTMNeEvXyRWYia4LM6yvib0nTL0kKiayWeIzPvuELLNw9icjU81Y3k71/132', '1', '1506223212', '2018-03-08 16:03:15', '2018-03-08 16:03:18', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('112e7cf0-07d4-4c89-9845-33fabcde4096', '\\u542c\\u767d\\u6c9b\\u83e1\\u95ee\\u6885', 'ophyRv0347lZS7efRwlyjEQJcb4U', 'o5O6DxD1UDxFUpLRG1STHZc6NFPc', null, '', '', '', '0', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpNsTNjFBNhFmWTibcGLZQGJ8lHYs2L4OnY5ic4EojMeYibrB3sl1icSUuzsGrcNMoxh9LKb7HSxIXgc0ciah6TfTPvNL/132', '1', '1520344168', '2018-03-08 16:08:52', '2018-03-08 16:08:55', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('1198119a-70a0-462e-aa18-02333633fed0', '\\u6797\\u5cf0', 'ophyRv5OTNYAbwqgwjmylM7qMyQA', 'o5O6DxHigSQTrKhbp4z1QWtIMSDk', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpNIImmdQB818icficpficWEaXZm6rDutlP83GpY7KW9PiaOnk22CnojoNmTGwWDn6vEuJqXOjHXyYKuFp5QOL9dOeZM/132', '1', '1512616896', '2018-03-08 16:04:55', '2018-03-08 16:04:58', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('11f85345-747f-4321-b871-6fefc9f65807', '\\u59\\u70\\u68\\u66\\u74\\u7a\\u70\\u70\\u38\\u36\\u37\\u33\\u32\\u32\\u36\\u39\\u38\\u33', 'ophyRv7XcJ01822rw8Ft1CwqsZzU', 'o5O6DxF1phXHlAM0O_xodidpDURE', null, '', '', '', '1', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq3CnA1Fo5Jo7MiaftXOwqibOR9OGqpFawQosQebkoqKt6fRric8wtRmsy8up2fQQyic6aJSjEdaNCGs5pOa7JSBozIw/132', '1', '1520344164', '2018-03-08 16:20:15', '2018-03-08 16:20:17', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('12195219-1a08-4650-b104-c7eb9a4c22e9', '\\u6570\\u636e\\u4e3a\\u7a7a', 'ophyRv64cFZhzREPCBh8ADTsc4Pw', 'o5O6DxAkCFmTRuFZsqZOwBIev3AQ', null, '中国', '湖北', '襄阳', '2', 'http://thirdwx.qlogo.cn/mmopen/bo4l7DibEhDdTDVdp4FIOAKbuMYYicib5u1nbsHyUKAZibjaZwhsYXC2FIib1R3FHzhDx9zAjOyslo49j9kMtZF8jTDK6mZTdNic3I/132', '1', '1515506018', '2018-03-08 16:18:13', '2018-03-08 16:18:16', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('124019be-fe60-479b-81c9-deb00036f622', '\\u6768\\u52a0\\u6ee8', 'ophyRvz1p3uff-E9Zc6SjmQ29qDo', 'o5O6DxGgCn9l8Kq3D2xlxZ3GODTU', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpNQkIC9Sj8jYvicJjZibXYWyyhdw5n6HAommdicdpPMIWXwyeTT1UzXOe0ibNKRN9Z8W7tm8dSicoC3bR2CLI13J5tX8/132', '1', '1506224818', '2018-03-08 16:15:00', '2018-03-08 16:15:03', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('1241a337-c954-4409-b1cd-4db74d7e75c1', '\\u5899\\u4ee5\\u5149\\u5e74', 'ophyRvylU7aMs5-Cz4VH_qu9peoU', 'o5O6DxFDDOMl7n3rKFpRHPj-nfSk', null, '中国', '辽宁', '葫芦岛', '1', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpPJmufmFtvKKSS4CPSPib0IygGaXDTiaUuZ5VqG4Rp4bF9ed1SD8sUicibL1CYpSWjc9fPD6h2K83FH9yJdqVibaBibibz/132', '1', '1520344218', '2018-03-08 16:19:30', '2018-03-08 16:19:33', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('137417e4-9423-4424-9525-7e50f0b6f4b7', '\\u4c', 'ophyRv4PqA8KapnHMBAxLWRt_mBY', 'o5O6DxMMbjXm9JH-1wBcYJWQmFcA', null, 'TD', '', '', '2', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq1S7Y5WPTrPSxCxrYkrS47njmUbSxJcCzN4rT3RWH0gDcmOLqsgfru7BicJFxcSyRPUibukzPSHddsI5XficBWDibjZ/132', '1', '1515310783', '2018-03-08 16:19:27', '2018-03-08 16:19:29', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('137de376-6d35-43d6-848d-6443d5b45b88', '\\u4c\\u79\\u6e\\u6e\\u20\\u6d77\\u51cc', 'ophyRv07daHNLYgnqq0MWFMRvqUU', 'o5O6DxECOtO5woaW3jH-RypAYYog', null, '中国', '四川', '', '2', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpMJzTqRcG25gnwM1EIVNtvLZK7pFWaiawpUkmmiaRx9HpSeiahJNwmOQypRKPc61MRBII8EpQ8o00RNibkBTCBqYW9k/132', '1', '1504053470', '2018-03-08 16:15:37', '2018-03-08 16:15:39', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('1381709a-e2a3-481b-ad5e-69df029d17d3', '\\u9017\\u6bd4\\u4f60\\u597d\\u6bd2', 'ophyRv5KsN-4vYJicQeU6G1uPpbY', 'o5O6DxJOQJobpl6qpqouwH5za0l0', null, '', '', '', '1', 'http://thirdwx.qlogo.cn/mmopen/PiajxSqBRaEIzwfcO2yQqynLfH5wtGJoOGkEPTabRrDzpmGMH6fu6I33tV1fwIZ1yYicuArjDLyUa12B5eVna0NicfFdyBPK9QOZ35DMEGKCg4/132', '1', '1515506027', '2018-03-08 16:19:01', '2018-03-08 16:19:03', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('14081652-b88f-409c-a81c-603e0153f337', '\\u82b1\\u751f\\u679c', 'ophyRv94RwdgNDExf5oFB0cjegtI', 'o5O6DxPpK_d5TkVjkMe5JR4gHaJg', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvrxeMx485fSAF4cQmaEgwib5soWEeKG0XpgTF1z9RHibNiaXOlgqficVXtNZSdc0m50OiaPkA1iciaxpq3tXnTFFO9BAQtW/132', '1', '1506232791', '2018-03-08 16:07:23', '2018-03-08 16:07:26', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('1462d5f4-55cd-437c-acff-06779b082557', '\\u4ee5\\u4e39\\u7d2b\\u4e1d\\u9752\\u4ea6', 'ophyRv0egBcTQ2kukhmL4agcRpic', 'o5O6DxIFI91ChQ7Ox9Ocjg9ONqpQ', null, '中国', '福建', '厦门', '1', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq15kv7ibfJRc0ia29V3wphIuMEgumVVtOtJCNRJgANdxcQgliaDXyb6Uu3jvr3bpdYp8nvzU556JkntDgBZ457ufRL/132', '1', '1515506018', '2018-03-08 16:20:46', '2018-03-08 16:20:49', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('14cd5fe5-e27e-4db2-981d-bbc1279804d8', '\\u51e1\\u521b\\u6587\\u5316\\u2d\\u5218\\u9633', 'ophyRv7Xg9KVH1TfrIWSjPYCfeOU', 'o5O6DxL7ePUY6O6t4L_LB0XJMI_Q', null, '', '', '', '0', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvrwTBpMOrvno0bummatAQib3wOzSnB7E5SFOcfJKqU8HojFoP0puzibqdK7mOm9bJA0TazkJ66A8Q6MjRd3I4FUGQe/132', '1', '1521017738', '2018-03-14 16:55:39', '2018-03-14 16:55:40', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('1531abf2-0438-42ca-b041-3ef27ea2326a', '\\u5c0f\\u6b63\\u59d1\\u5a18', 'ophyRv6FFQMEbAIg1kRjfCNyy1-U', 'o5O6DxLcZfA1pN6YfriJByU_uPIg', null, '中国', '四川', '达州', '2', 'http://thirdwx.qlogo.cn/mmopen/Q3auHgzwzM6afmdmdHrG5biaJNvCchxO6dpcQWQ48lMjDibPQI5ffaaqovpbCNbMg4Sr95aicElTmyfBAxcXeBsHUiaiaWnXVlicnD7TzfBkD087A/132', '1', '1506407152', '2018-03-08 16:08:07', '2018-03-08 16:08:10', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('156a6912-4dab-4402-8a9a-72c420e994f2', '\\u6211\\u7528\\u547d\\u6362\\u4f60', 'ophyRv0dzBCT5-rTPur1JqWroc54', 'o5O6DxAsAIhl-xRhnRcYesFUhVeY', null, '', '', '', '2', '', '1', '1515506022', '2018-03-08 15:56:22', '2018-03-08 15:56:26', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('1570c7d6-f5d3-459b-84ee-caaaa2d1428b', '\\u75f4\\u60c5\\u82b1\\u5c11', 'ophyRvxRuRscuRB70Oyt3-07kE5o', 'o5O6DxM13--u7vjiFUZffrYH9ut8', null, '', '', '', '2', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpNDribNCeuYKrg8iaBJXtiapmsh2nd3v0Wwpqp0fFJ78VxRYkmYDF0V5fFk5WFQjqDk75sPuafafVianQRXZQZHx5F5/132', '1', '1520344169', '2018-03-08 16:20:42', '2018-03-08 16:20:45', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('16b2edbf-c4bd-4135-9cea-753c3ce809de', '\\u795e\\u7ecf\\u5988\\u54aa', 'ophyRv3gYLoymMPlOn1DoHLZkCxU', 'o5O6DxFl0Fsr82RYBqx2f8dT3mjE', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/r2GcoAqc0BicHu6CmWwSTPom3gBzJUzib2nxakMANU0VaumLIWRz5ibFq3JFDbU5ZIcTYo8UE3nziaWKO6fn58kjrEXGFTtKKBCO/132', '1', '1506297842', '2018-03-08 15:57:41', '2018-03-08 15:57:44', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('17558e75-c6d8-4a24-b6af-401dc507b1d5', '\\u6570\\u636e\\u4e3a\\u7a7a', 'ophyRv7kkRC7puVqNEtQD6Ys61EI', 'o5O6DxD9p3k298yGyuOiNYGCpqs8', null, '', '', '', '1', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpNnzbEYlClbS2eI65Os8728jWe9BsS98lJDyYh3qLXokFCTBaKZzIm3GibD1SOcQur3gkIJCsyFUg8ib4iblZQ16xf/132', '1', '1515506014', '2018-03-08 16:07:27', '2018-03-08 16:07:30', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('176aefad-f9dd-414e-bdf1-274104930abe', '\\u6211\\u4eec\\u8fd8\\u592a\\u5c0f', 'ophyRvy0ykBea8bimgaoraGDZWeQ', 'o5O6DxEIPwNe_ud4hjOttZxCfs4Y', null, '', '', '', '2', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq0yo4WS2BueLxWeXvouxhRVfL6PqIlYYJicbEPv0werb1qaL8yTaic2x6Pyt4mNslF62rBdJ5mYKe7Yex72hKBUb2/132', '1', '1520344176', '2018-03-08 15:58:07', '2018-03-08 15:58:09', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('17bc2ee6-907d-41d4-8f29-f1a2dbaa1abf', '\\u6210', 'ophyRv7-jbFRHRTJTS0iAcljSSJY', 'o5O6DxOaMMw1PuxVJP1ee_zPnwKE', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq15VRWwhUUgIiaWaFXiaWhiannWa8J98wSlAJg4fIic60pRVQ1nwgO8NAw9YIp8sglQS6SrlOUiaUiaeH1RNUqaLCD4Al/132', '1', '1506223915', '2018-03-08 15:45:58', '2018-03-08 15:46:01', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('1a415411-5316-4826-9181-b02d600e6c15', '\\u95ee\\u5b89\\u4e50\\u8377\\u51cc\\u7476', 'ophyRv2kaYRc-qTRcYf6oSkWLsMY', 'o5O6DxDW70bfhSFLCdXpqWNiwdho', null, '中国', '安徽', '安庆', '1', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvryNlib8QMJCiasibdjgEHe5O0jMybVlFnHW9s5cWIkcjbliahRKlDaxDW9PeDo0bz9BU6libeI8IlI1v5wRgFKbZqGJQ/132', '1', '1520344168', '2018-03-08 16:15:26', '2018-03-08 16:15:29', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('1adae470-6e97-4f89-b64c-d02aaa6195ac', '\\u8be5\\u653e\\u624b\\u4e0d\\u8981\\u8d70', 'ophyRv-QzWJk17m_U1HLWJMtPwf0', 'o5O6DxM06TZN11kMLormMg7f789U', null, '', '', '', '2', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvrzW5ibBMhy2y2MibQFFjIbTqzeDqwYTCIav9LrFHVAI8AzJRPF6ZbZiaE9mzTLCYY2l00JDEKRgbXz3tvpf9lkUWCK/132', '1', '1515506018', '2018-03-08 16:10:50', '2018-03-08 16:10:52', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('1aed90e3-7e07-4f9b-8879-f6986d24e7f0', '\\u44\\u67\\u73\\u6b\\u67\\u74\\u6a\\u34\\u31\\u35\\u34\\u31\\u33\\u33\\u35\\u39\\u30', 'ophyRv5ucOkAYL3vWQH6fvxXWM_o', 'o5O6DxMnZg0_dTTz08N3KVpCZ-fc', null, '', '', '', '1', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvrx3wdicC1v4MBhr5zpwicrM4on4qkmFkY0XunbbSOdho6IAa89cRia0G9G5EFtvIgrOZibibHrfTJVpbcvztdicf0y3SU/132', '1', '1520344163', '2018-03-08 16:23:04', '2018-03-08 16:23:07', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('1b487896-685a-40d9-b255-87484e721ffb', '\\u4ee5\\u6cab', 'ophyRv-arXfOq5_s_fQnXfYDlViQ', 'o5O6DxK6lzwrZNo85c_6h-M8JeBA', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpMJzTqRcG25gkumKaiahHDCgB336rndYvm9BHfDdey6yNOvTER144CeJRxgdgWjo5se0V805cPbvCTGldp6iaVcg4/132', '1', '1517241295', '2018-03-08 15:53:58', '2018-03-08 15:54:00', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('1b57092c-c60a-4e99-9a29-602e1b7cba7b', '\\u6807\\u7684\\u561b', 'ophyRv8m2im6s7J0lm1u5RU8pbb4', 'o5O6DxJRUbJbaiKmFnN5l5D6PLu0', null, '中国', '四川', '成都', '0', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLAOIDOqeLapbgPibu3DD4d5ZdiaYibdQtZBco4LvdHia5nLcVhOCYX7QnxPZZMuYCGEiaeqG5EAGetUreTIWxQ9pEeLT0NqAOuNXy6I/132', '1', '1509603771', '2018-03-08 16:04:18', '2018-03-08 16:04:21', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('1bcc2754-1afd-4ca3-9b6f-1d3b0febd7f9', '\\u8d75\\u5e73', 'ophyRvx1Jdo0WqXvliIGBTilnUs8', 'o5O6DxPMezap67CwH1KNVF63j3lo', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/rqvn1hjHyte29pd7lDZ7eYqolYkM0XBj4iccBOVcoAAkibQrRs90vjGHahRzYVjPeQ8mmA3UUicB0oG8u319BDg3eqppzdQDDIw/132', '1', '1506133118', '2018-03-08 16:01:25', '2018-03-08 16:01:28', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('1bfb2006-64b8-4278-8cad-d0e19e3b2d4c', '\\u8d3a\\u5a07', 'ophyRv82K866sTsplRqXZiyVGM-A', 'o5O6DxKQnvCKcnONu1PD9PafrGuI', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/GsAGZkFJ7fTjnruMvicW7pbOiaRNoObvREBdVlNPpndxBhTkcEZtWsvgEEgShwWA1p4w6WtHwPctYYoBLC9TFQ1R5n5TltCErE/132', '0', '1506223032', '2018-03-08 16:09:17', '2018-03-08 16:09:19', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('1c2da8e2-c0ce-41a0-823f-73e044ae208d', '\\u4f60\\u7792\\u4f4f\\u6211', 'ophyRv1KdVb9-5gRUvUhMa78B0ow', 'o5O6DxPB3qSW-hfOPdzCFUEG-2-o', null, '', '', '', '2', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLA7jicXZcdxSkq9VyibjXibu1UhtdBbGiay59pkdWVd2CXswiazBtiaN4HdsbnkgdbcSMDYg1APmMKHFWKxX35fOAvoYBOtpwibia8tCG0/132', '1', '1520344185', '2018-03-08 16:21:27', '2018-03-08 16:21:30', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('1c54acba-a390-4790-8672-407f1891302e', '\\u54\\u69\\u6d\\u42\\u75\\u74\\u6c\\u65\\u72', 'ophyRv0A3ZSd7B5AUHR-sNTajPz0', 'o5O6DxCPSNpcXBJBZ4XBQmD284gg', null, '中国', '', '', '1', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvrxpCkib7fdI5lPscOlxs406RlpJmxTn3NzLusVZ8Yuib1K7rdFSe5DkHZDR7Fia0lKYLQDciauvDHamYNmSoyIsgdss/132', '1', '1515506026', '2018-03-08 16:21:05', '2018-03-08 16:21:07', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('1c6fe39f-3493-441c-aa47-5232fb8030b3', '\\u8ba4\\u771f\\u4f60\\u5c31\\u55b5\\u4e86', 'ophyRv_oA5TpALqEnYmGCUpsh9j0', 'o5O6DxKpJSCKppycm74xRqh9FjBo', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/Q3auHgzwzM7ibOLwmh1qa0cg7omqAee3XyTPhcTjUiaWWfO1ickscAicKCj926ZdJeb7yq2f0of9ibTGnZKwAW2rwF3PFzw5Aas6iaMdd1FEurEjA/132', '1', '1516329783', '2018-03-08 15:59:44', '2018-03-08 15:59:46', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('1c93f50b-52e2-4d9d-8009-19e5fbf2f085', '\\u9a6c\\u94c3\\u85af\\u4e0d\\u5403\\u571f\\u8c46\\u7c89\\ud7', 'ophyRvxFXWkp9cQ6E15lWft261d8', 'o5O6DxE6fot3JkIuSCVPQa_avXPw', null, '中国', '四川', '资阳', '2', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpMtcvVARxpe9djZv2KGvBHKJXCfe3KfILVDO4b7ZiaXXogtpBxEqko0XDNkyjWQqLfxsNE7HfFA1orTGUNXMEtyj/132', '1', '1506235678', '2018-03-08 16:19:45', '2018-03-08 16:19:48', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('1cd302fe-6cb9-443d-9076-b0ddc17b6d32', '\\u51b0\\u5983\\u96ea\\u4f0a', 'ophyRv63jCDS2pb4IEvzxXBUbEYM', 'o5O6DxARC7HzDPs0uzCzkGV1AfvQ', null, '', '', '', '0', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpNnzbEYlClbS3L7jtwEr8LLz141QADRiaQmiakQ0JxMYlUpF6wPC5x2kYwqMQt77fKQ5aic4x503CZ4iaEBMxZb8wHb/132', '1', '1506674758', '2018-03-08 15:54:35', '2018-03-08 15:54:38', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('1cd853f9-490d-4a9d-8e87-b0360a970da7', '\\u76ca', 'ophyRv6F-J4vFzZVKl21qyZE_VVI', 'o5O6DxBHf6jMCp32sFVDvGZBUxiw', null, '', '', '', '1', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpNDribNCeuYKrqxjreNKicfHaA8JfXhjWiadaAdb37v1N2VqTkQFWlgzBzL5WpwN63ZmV2IcQgIibhlVjic5Ixt0yDFY/132', '1', '1520344189', '2018-03-08 16:20:22', '2018-03-08 16:20:25', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('1d1058a0-ab85-481a-b8ea-482994c1533f', '\\u7f18\\u6765\\u662f\\u4f60', 'ophyRv-XYAtvq7vy4H-DlpFjJWLw', 'o5O6DxBjctjLaaqIlxZryXocTrsU', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvrxqG2Y0xTKorWT9nnqA2alSulSGgdrmUPDyf0sw8jyAuYpQx3M6LlvWTjT9gwxdFpO8DJEJKWLW6ibAhdBe0SLKv/132', '1', '1515068537', '2018-03-08 16:22:52', '2018-03-08 16:22:55', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('1d5c11d3-50f2-40df-b5aa-b968ea2aabf4', '\\u7e41\\u82b1\\u4f3c\\u9526', 'ophyRv9bABIc3KxejxolPI6XJ-Rk', 'o5O6DxLbczU2a-lDpvBzaI3kZiPw', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq3Y4VoPNy4NAkfS1Z9zjgpJ9ChhKfKgsibibkX9d9CUvUtAIK8TfE6wGlo4ia6mlibW6FicHCulZXrSRwxzk2lDXfhhx/132', '1', '1506146542', '2018-03-08 16:04:30', '2018-03-08 16:04:33', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('1db2e5ef-f4ea-4ccd-8e23-d120a7f4bea8', '\\u5c0f\\u4f19\\u513f', 'ophyRv2UzBhLKO_Dh7q344SpLaNI', 'o5O6DxFhF7XMoUxToxzzDNguZdfY', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/Q3auHgzwzM6MkjVzp9yKdmjEb9j1U4ZUEiaelge4tycv6oIgaNZFdbAMNv9gOHBgfBtFKPwJkg7w99kfRibLgemqwBWRS5gsLIX0pZpvV0O7g/132', '1', '1506256224', '2018-03-08 16:19:04', '2018-03-08 16:19:07', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('1db88a34-9c60-4b97-8ea0-5bf5ecd1b450', '\\u7d66\\u8fe9\\u8138\\u5c31\\u62ff\\u7740', 'ophyRv6GD4BfyYZdJOgsdskkDudQ', 'o5O6DxET8p2kvbs4YsGzyTA20Gu8', null, '', '', '', '1', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpMuG7j0n9ZVjGXgBBUMeicth2a0UNFgQnQnVS2tHckUM9YgaS7FfMpjhKXd0SNDynMtOBGAQ9hZ5PO2RY0hB6pJic/132', '1', '1520344248', '2018-03-08 16:15:30', '2018-03-08 16:15:32', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('1e0ee8d2-ead9-408a-9e66-510f39d1a3e0', '\\u60f3\\uff0c\\u6211\\u4eec\\u4e00\\u8d77\\u60f3', 'ophyRv6jfs0G9o9N6iIUFw_YYKaI', 'o5O6DxKWdyi6lWKJ5RLnAzkkkioM', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvrzL9xztA8p8WrHK7XuzOXmYw96TDJ06gOE8viadPIRpYV6OuxGVyS5Kw4MvcwicAOaTwSMZAFTtGHjz1zl7d7XBBs/132', '1', '1506869553', '2018-03-08 16:21:38', '2018-03-08 16:21:41', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('1e82137a-3489-4c17-85e4-a391945e24cb', '\\u59dc\\u6615', 'ophyRv_-wQoH7jFd0oTykVGubpZY', 'o5O6DxC_ZxQATjWUeMZEWsQSI_oY', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq2qnYzLFqUFeRSC8cny26Pcia43L6UR5LibicqkJHPRr5bwno7nuO8O6uOfguPRGk90kWSyZticn3CmCliaeZo2ib1plB/132', '1', '1515563755', '2018-03-08 15:49:36', '2018-03-08 15:49:38', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('1eb688d9-3d8d-4cf0-9678-b286835d59d0', '\\u677e\\u9f20\\u5c0f\\u59d0', 'ophyRv0xWyOQ6e0lQZx0t0l-L1f0', 'o5O6DxBxt97TkMnRhQMKhiVuo_zk', null, '安道尔', '', '', '2', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq1dFPbB3eBeWIp4otQ0Tc0zXdQJetuCx9CFbSIr2habZqxu6c9LlMQukNotp8gsxzqoeueo9LV63dGceN7EAoFT/132', '1', '1506674835', '2018-03-08 16:09:51', '2018-03-08 16:09:53', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('1eedec35-cd19-4967-927c-b74bb3c28eab', '\\u43\\u68\\u72\\u69\\u73\\u74\\u69\\u61\\u6e\\u4c\\u65\\u77\\u69\\u73', 'ophyRvzoyP5mZb9iwA4xvif5BNlE', 'o5O6DxD-nshDrN7COxB9vrW6TKw8', null, '中国', '', '', '2', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpNcIgHsF4e59HXJAfRKGCu1Wm6WlEyVkb8t8q6oMrAHKL7cIbUJH3TTv8OGnPRMHTx5PxDy9q3tvPM4I8EicNz2W/132', '1', '1515506023', '2018-03-08 15:45:40', '2018-03-08 15:45:43', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('1f9956e4-2163-463e-ae6f-2c7b2371b959', '\\u82ac\\u82b3', 'ophyRv3HCdSfjeMi-4ODFhQPZaDg', 'o5O6DxLF9rNMnU14B9QawhcHoDn8', null, '', '', '', '0', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvryQnquQc1Cicdn2ian5vB1DQ2PPfS3TsPkrWs52rIfLJpcibwHqHjnicO927QzTOMRdLHbpdSqtRw9libSGld0FS574ib/132', '1', '1506858047', '2018-03-08 15:59:20', '2018-03-08 15:59:23', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('1fdc5a19-3e1e-4539-920f-83f0239ebc8d', '\\u27\\u20\\u8c46\\u82bd\\u3002', 'ophyRvz_kO0xgIN_WTvv3oqBxDgE', 'o5O6DxDrEZj1--ZGDPO2i7cEHAzo', null, '安道尔', '', '', '2', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq1UIwic63gBpRtnxDZ8mAzxibibSSSOic3Tx3BiatHWCcn4BG4R3FRLfky8N4m9AfMvXvibf6l3o9Mjns048LXznnH97r/132', '1', '1520494416', '2018-03-08 16:14:30', '2018-03-08 16:14:32', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('20009961-19c2-4cca-b153-84f320bd874c', '\\u6211\\u4e00\\u751f\\u7684\\u552f\\u4e00', 'ophyRvxNePaWJQP9NaJlxAh7v8B4', 'o5O6DxFE-CrGiIF1bvSumC3DaTE4', null, '', '', '', '1', 'http://thirdwx.qlogo.cn/mmopen/rqvn1hjHyte7QVLl2WbiaSCbmqVVOge2ibzJ0IVMaxxarkgelj5TPTpBU8V2eKQ5906vX7Kyy6R91j2qr35eJd8YTqiaCjhWz9ia/132', '1', '1520344184', '2018-03-08 15:57:52', '2018-03-08 15:57:55', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('2013dbfd-9835-4c2a-894a-c4c236806651', '\\u5fae\\u7b11\\ue327', 'ophyRv3ur6Oz9SYx1jxzriNcK_G8', 'o5O6DxJ98P8HjihxL0RmfsRPtgeA', null, '中国', '四川', '德阳', '2', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpPvydsJrdQMd0MaN7RibTqia5gpDpbeh1bSDibVKtUkDqQLYZgiahcpOBzOhV6CHSGVMfHticht12F0t5bUzSQ7n4picR/132', '1', '1512365118', '2018-03-08 16:05:21', '2018-03-08 16:05:24', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('209bde2d-a971-45fa-a0e8-f7c7c99ed8c7', '\\u68a6\\u60f3\\u662f\\u6ce8\\u5b9a\\u5b64\\u72ec\\u7684\\u65c5\\u884c', 'ophyRv3zL0zZ9A3tMcQf0NIZ8y04', 'o5O6DxE87TOrhTurKnc2gOcyMI0Q', null, '', '', '', '1', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq0uY3f5icLBshdU41gfd8K4VmRGqbgce8PECuVoVohNia42yTvLMNsghB2LeeicZacuBEL4G9iacXmzLGic7YEAxhIMia/132', '1', '1506236334', '2018-03-08 16:24:07', '2018-03-08 16:24:10', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('20c82b61-9add-45d1-8a3c-fbaa6d3de336', '\\u4eba\\u8d31\\u4eba\\u788d', 'ophyRv6OyXoyXmbBvlmkoe3_zi0I', 'o5O6DxCZEKqseqQKVV2yYzoIC79k', null, '', '', '', '1', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpNgnUAvbJmMlWP1HXiasnkKYtz8WqhoFxtRGwbJ0WHmUpEdVuwAuK1c7iavkiba7PDbs3EOFx4PcRhLxyJtrjzvSha/132', '1', '1520344177', '2018-03-08 15:49:24', '2018-03-08 15:49:27', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('20fb5b39-7ed5-4fd0-9a6f-f339a7921434', '\\u5f04\\u865a\\u4f5c\\u5047', 'ophyRv5Z1PSmx09uw5H37uERVmSY', 'o5O6DxMnZz4zTwGRgpHd066nWCfg', null, '', '', '', '2', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpOyLoGKUibBZrdwibmS1hibZHBFULl85YdNvEC5eh2DjYje8EkdenIZdfOKKIaxRSXtJBdsQBIkYbjcyrpD5nxMp9x/132', '1', '1520344176', '2018-03-08 15:54:16', '2018-03-08 15:54:19', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('21128398-acfb-41ac-a449-5506dd6e69fb', '\\u747e\\u4e03', 'ophyRv8ZnkFYUGY-WmhxL_Mow08o', 'o5O6DxBHzdKTcE1I4Iy3rNvVIKmc', null, '中国', '四川', '宜宾', '2', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvrwQxgdiaOsyueMzpZxH7b3c2xxfSiaYbHJ17uzbOG6Y8ynAiaeFh6QFDOpaZKpVxP32yyvtB8qbo391iczMWYiaMyXPn/132', '1', '1520480979', '2018-03-08 16:00:37', '2018-03-08 16:00:40', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('211312d1-7d4e-450c-b25a-863b3645d1b3', '\\u7b26\\u6b63', 'ophyRv75hwWlxHGx4hmwTnIXMrPU', 'o5O6DxGM2qo7MSv3t4CzAfpRmLxg', null, '', '', '', '1', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpPjOia5iaY4zQ2LyODsbU5IibQWunvYvLJibohymDlSsg0DXgZ8doftGvcPLfkdJanmqxLuHs9CnJrnXwVG1QIrTkMs/132', '1', '1520344176', '2018-03-08 16:02:23', '2018-03-08 16:02:26', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('2140e071-d85f-4c19-82d3-78770aff2c47', '\\u9999\\u6c34\\u767e\\u5408', 'ophyRv8JgAIAMkIiCHh0pCyB7Bco', 'o5O6DxFHfGNl6v4fC43lxwCtSD1w', null, '爱尔兰', '基尔代尔', '', '1', 'http://thirdwx.qlogo.cn/mmopen/rqvn1hjHytficVnSezP845yUMhOL7I2CMKsWesLuXqLEnlSeexHRxj13ZZzS1vG6GdfFvLoIqhwjLWqDWJcoSQVZaDXv3bPAZ/132', '1', '1506131418', '2018-03-08 16:20:11', '2018-03-08 16:20:14', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('216f50c5-f59b-4a20-8b71-c99699d8cee0', '\\u5c0f\\u7434', 'ophyRv5TEqN4ImRz8o--R2lakNs8', 'o5O6DxHaGvPOrBQO-1ZwzJxk23R0', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpOnhhyazHGaUiaDaMuelBia2xRXOgJmkEGZRibMDNZJGa79Jzibu2o5NxBamoe9dxbicq1nPAniaYsqqvlKTCO4TibHpfO/132', '1', '1506866879', '2018-03-08 16:18:06', '2018-03-08 16:18:09', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('2173a9e2-d4a2-49a4-a355-119cc74d345d', '\\u6c5f\\u9e4f', 'ophyRvyelUhg0i01Ra89pWLSh7RI', 'o5O6DxL48iJmtte9BPF-3Q0OsFmI', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/rqvn1hjHytdMVJdJYBXUVkIkux2hNgdAia9icTOmYahIRbljXteuWbMzJJX65a5547EepH6j0vChX1Dt3Ipq9guztP4jndZg9n/132', '1', '1506139295', '2018-03-08 16:14:56', '2018-03-08 16:14:59', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('218ec530-fd1a-4771-9720-834fe5325abf', '\\u67e0\\u962e', 'ophyRv4wovwKvr16ZGDH9HO8o9Dk', 'o5O6DxKHf9Cf81RjjOl0MQjET9Q0', null, '', '', '', '2', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpMmXz1ribwkawFo5jEKUxHYo3xsCrHBGr1D9CAic7CTeXXOMFRTEDM03hKiao83McF4cyAyFRaMW3WbpD89rOYk5Eia/132', '1', '1520344187', '2018-03-08 16:02:35', '2018-03-08 16:02:37', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('221f3b08-9ba0-43a4-9cf1-9d69e565ae19', '\\u8fdc\\u4e0d\\u53ef\\u53ca', 'ophyRv86xSxqhVnFCZeuwrIiDoG0', 'o5O6DxDWKb_HqgcwjPqYL376oOVw', null, '中国', '河南', '周口', '2', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvrzDAKOumXpKAL7jb1VjmicBrEVsessG3h8Z5VxloahjkGpepTFKyUBsbjtgU97wG68v1fkoMUAIpfEojWennpMK4/132', '1', '1515506018', '2018-03-08 16:22:01', '2018-03-08 16:22:04', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('22a8767d-1159-4378-87b7-fc368f4a1ada', '\\u82e5\\u6751', 'ophyRv14lqYu6T3b4NRtuFkjgJN8', 'o5O6DxFH2q5rEftMz-bIGnAngVBc', null, '中国', '四川', '乐山', '2', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq2qnYzLFqUFeQGlL3H9bkdoibg3M9E7pgT3bvW6cyhFQVrZdKriaJqvaib4qVW7pUicFDSFWH6WysN7dkkT6a5nslEZ/132', '1', '1513785693', '2018-03-08 16:07:38', '2018-03-08 16:07:42', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('22bd28f0-ce00-474b-99a6-91147ef4e447', '\\u91d1\\u20\\ud83d\\udc7c\\u20\\u52\\u65\\u76\\u69\\u61\\u6e', 'ophyRv12Ky11fed6deN13hWe8Un8', 'o5O6DxJy4xKhNOld2nllTmkfKlAg', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpOGd4FuB8uFRSLMRbAhbyhxxg4dKiawcWD8IpOibkBqofEvsHJTbBDHpZFDR8h1paKR60mWZsKowLGlDCYia8ibk1Mg/132', '1', '1513866668', '2018-03-08 16:20:57', '2018-03-08 16:21:00', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('233e9d34-040f-4ec6-8b2f-ecabba4b3bd9', '\\u5b8c\\u7f8e\\u4e16\\u754c', 'ophyRvxdgZtIVAjobVSshYlry03A', 'o5O6DxPFq8dfBZYCjMd0-dF0Jz34', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq2IgDl972HZ9ibibrDNhDLdXicg3RLzkUfAgxZJo5nJVibicKdI5Ck7zfMdLLwqPpgmDtbuYLXZsvICXMusKbMnTWIGk/132', '1', '1506133792', '2018-03-08 16:03:19', '2018-03-08 16:03:21', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('23528479-9ad1-4341-b220-a315dc6e2a02', null, 'ophyRvzu6KaHaY0zngzJV-sfSeKo', 'o5O6DxOp2cYnQjQ0kSV5c18yr2lM', null, null, null, null, null, null, '1', null, '2018-03-08 16:05:35', null, null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('23736031-7d72-4916-9698-e860c4310b9c', '\\u73\\u75\\u70\\u65\\u72\\u6d\\u61\\u6e', 'ophyRv0iUlMyri7K3rpOjZ0Azad0', 'o5O6DxHnL8S4R2gzNVjvYNRcfbs0', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/Q3auHgzwzM6afmdmdHrG5biaJNvCchxO6ke5lLpM10AnMyibYU7A7VVOyQEHFcu00iaOVH1EOhFJKkAdKUCG0hbJTukUrEznqq2obxicTE0Re5U/132', '1', '1515068867', '2018-03-08 16:20:53', '2018-03-08 16:20:56', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('23743d06-4996-4065-a12a-26071029a638', '\\u5f20\\u7433', 'ophyRvxgPhQ_tSfW84LYTf42BItA', 'o5O6DxO_opK_noIWsl9PSHqJYtVo', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpNpJhgTlBjQcBSHAly4WewQRR51cTyJWibytFoCsRMquK8Y3BYQJZ4UgWguwadqvvCVRDmbmFHic0TzwU28icWkkVK/132', '1', '1506254739', '2018-03-08 16:03:36', '2018-03-08 16:03:39', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('2386e0f9-4b03-4165-9c61-ae7ee84d08a8', '\\u4f69\\u89fd', 'ophyRv5jqf11FMza0VU-EkyrhbVU', 'o5O6DxBS8g44o00AtsBdABfO5qm4', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq0a42NFBib2icH7KIur6ElpzbsiczEKmgFmT0iakmkOicibDmlZicMO1zXy9iboA5y8KxFRTKejk5icO9dX5e34wIGUTLYEz/132', '1', '1516352606', '2018-03-08 16:03:04', '2018-03-08 16:03:07', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('246b220c-5465-49ba-b516-6996862b5bca', '\\u4f9d\\u548c\\ud83c\\udf40\\u6768\\u7231\\u6885', 'ophyRv7iAyVb6t7BYb_Yu-0wJd9w', 'o5O6DxIsSklwTLjoywagSF7NnnOI', null, '不丹', '', '', '2', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvrxdgrOcWrec2xiczp2df3zZfcWeicA1QEtoXuibq9Ir64MYB9KRicibXzuvBk8X2PoGDTyYW45FLmFP5Ul7VQm7dSdRb/132', '1', '1506066865', '2018-03-08 16:20:37', '2018-03-08 16:20:41', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('24702039-a7be-4a03-8427-b2ad5a0278b4', '\\u68\\u79\\u68\\u74\\u6a\\u6a\\u37\\u37', 'ophyRvyUNHPNoyP6WfSmWwVsgJpI', 'o5O6DxBWRZkzNJE8bb31U_YyBTlk', null, '中国', '安徽', '蚌埠', '1', 'http://thirdwx.qlogo.cn/mmopen/PiajxSqBRaEKkPzoPdsGG6GkVoLribqDV5l44QaYX73AZ6Ig0JeVZSCAcvGlKE9trDqH1dOqg73uWqfGG3F2UVtGmWG8ba8FALUnJiaibsB6n3E/132', '1', '1520344169', '2018-03-08 15:45:43', '2018-03-08 15:45:46', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('249b0749-3f0e-43e8-8851-b9807bccf04e', '\\u591c\\u5929\\u6daf', 'ophyRv3UZr6hP_JTXNilqS3Rn6iM', 'o5O6DxCtW5hcQLlb5ZuKFK2kNtBI', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvrx2zs2Stiajv9iagCbQibEeagcAVcr3DsjAVQDQDsVrjuib0pEvsKKy97UkKgLwJOedFIvvcEL31qvtDqfibAs6Uz6hK/132', '1', '1506679577', '2018-03-08 16:08:56', '2018-03-08 16:08:58', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('25258cb8-c636-4d5d-a480-12fac6d1037b', '\\u75f4\\u6885\\u9189\\u8776\\u542c\\u5bd2', 'ophyRv6xkid21yzny4fHsHWP1WR0', 'o5O6DxIUIbLFvHOrDm2eN0A4QRcI', null, '中国', '海南', '昌江', '1', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpNDribNCeuYKrkxSpCtMCU9EqduwxciaoU3PDdiacqnR0Nf3644czQEj4BiaiaWuB0CAwwu7o1fq0RyZCA8r5lMOKKXf/132', '1', '1520344170', '2018-03-08 16:13:23', '2018-03-08 16:13:25', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('25340231-39e5-4f29-bb35-7fc0337058d3', '\\u4c\\u69\\u76\\u69\\u61\\u6e\\u845b\\u20\\u52a0\\u5dde\\u4e2d\\u5fc3', 'ophyRv49rcxsluoXimesx-imnHSU', 'o5O6DxEtvN32Yqar9FbMX83_egZw', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/rqvn1hjHytfaB2v9bcNXIKK5y49YVquCAhkkQOaIT6LTjAWpoQIibAsWGibc4gjThY276NUjhZ3HvOAjricKMSQsZuDEDHHeqvs/132', '1', '1513818151', '2018-03-08 16:19:52', '2018-03-08 16:19:55', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('253cef47-3979-4069-8610-019e412ec872', '\\u80d6\\u54e5', 'ophyRvxaq2COLpBCFwMvCCrucHKc', 'o5O6DxJWlqhyAa4pmGRpwNaXhQ8k', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/rqvn1hjHytfaB2v9bcNXIH3H0wyDSLCcRHnXeRJxhIUkpic76futEAZIB1OV65wR3qVjzW1z947kVS9hy56NO375cBGrH6UQq/132', '1', '1506235272', '2018-03-08 15:58:44', '2018-03-08 15:58:47', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('25cc48f4-d486-45d9-8395-f3712839433c', '\\u5fc6\\u5f80\\u4e8b', 'ophyRv2ihzu3vYtH23-YToayqn7M', 'o5O6DxFuxfI3-t_nFBeMeFtG2_qs', null, '', '', '', '2', '', '1', '1515506027', '2018-03-08 16:08:41', '2018-03-08 16:08:44', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('26219101-fb34-45cf-a8e9-1e13ed5febc2', '\\u91ce\\u9a6c', 'ophyRv4CX0WCjxBNgaX4qm9tldS8', 'o5O6DxD0NRvs8AkfDhKRUu0gXAu4', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpOqrKsKbG0ia6z7hStrc470DGYxLb117icWpxRLibLz1aq7HNmYlI0NpvIgh3OJMO7MHpKIXp0xCaJicY31fiaiaszTjh/132', '1', '1509453630', '2018-03-08 16:05:55', '2018-03-08 16:05:57', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('262e6a35-5a9c-48a7-aa30-571b60d3c8af', '\\u7199', 'ophyRvzKQh1BSHjVF8MzSR9zweSw', 'o5O6DxFF0qEZfc37rx7eBqJ2miUY', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq12WPia6HyzmKYcfc4HOSfAWaw1R3H3t0y0HCibX0ZuyjypFtBrtA8y0oWExBfD1ERJpdBAdB5HdKv1U7kJDObyibg/132', '1', '1518702258', '2018-03-08 15:53:54', '2018-03-08 15:53:57', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('267f870c-5da2-49f9-bef2-5261fe0620a5', '\\ud83c\\udf43\\u20\\u840d\\ud83e\\udd42', 'ophyRv53H0i4iKz8JR9m28YY8Rfs', 'o5O6DxHq3SIANLMbcCXdbKHDR_d0', null, '法国', '巴黎', '', '2', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvrzCdLulauzfy8s0IicFjoqJxyKaj1PjA3eUFCf2UaZekxsYly9hODrrMuhDlcIvZZGvYoKZaSvuPcfia1A9tYZzXv/132', '1', '1506232655', '2018-03-08 15:54:42', '2018-03-08 15:54:45', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('26fdbc9a-4e5e-4add-bda7-17ddb1bc5486', '\\u5357\\u98ce\\u8fc7\\u5883', 'ophyRv6Yx8RfdYWKcWBpCEWd3AtY', 'o5O6DxIcvDpjwh3gh99GDVRklQws', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvrzkoJygmp2vGvQVib0WMR625T3NicCozYwpGZvu255xSBV6wb8XicoedMGfX6iaXoLvF6bAI1GCUO2zbicXdhcsQgZ8H/132', '1', '1513131785', '2018-03-08 15:57:49', '2018-03-08 15:57:52', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('2718c655-4948-4638-9ec8-51c15e13865f', '\\u846c\\u82b1\\u9b42', 'ophyRv90yNg0ggIJOY_WvO5raQXM', 'o5O6DxBFSEC-qr7nhPKO3ahvWWbA', null, '中国', '黑龙江', '哈尔滨', '2', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBGyoMPU5nl96ibsRXevyq8SwaiaNIW455L2at2OrYwDePJ1KJeTyzjuoLmcVw3ccuPZpPE466iahk3uJt8ORng6DOBJF2hF79ibU8/132', '1', '1515506014', '2018-03-08 16:16:32', '2018-03-08 16:16:35', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('2764cd91-fad5-412b-a6a2-4af2a03b8945', '\\u51\\u65\\u72\\u6f\\u63\\u74\\u64\\u66\\u79\\u74\\u76\\u76', 'ophyRv4gReLPJE4qtgrX_tGnIABQ', 'o5O6DxOmHmsAvIKRQjQYhj3J3VdQ', null, '', '', '', '1', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvry7femNQfQpbT2mLkW56qXmHicWiaSe0xsRVyUxnwIBKUoTicbuPjCV0pGMjOzczYbgLl8PNwMRKaCSYEfI4uM5lGN/132', '1', '1520344167', '2018-03-08 15:56:26', '2018-03-08 15:56:29', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('2785816d-334c-414c-8730-89dfd9eb11e0', '\\u72\\u69\\u63\\u6b\\u79', 'ophyRv-qSeVxWxfmMrJ0oYIbQE74', 'o5O6DxM-wNsiF9PLdZ59qqlzVpT0', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq0JbudeicsQ5toPgnU0jdOaDjdQdZsGhaeKABDPRLOibjbZ1sickkWSLXJVQWssQhDXzbe6BORO3Ye1KhTFOVlLMOg/132', '1', '1513819289', '2018-03-08 16:09:13', '2018-03-08 16:09:16', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('284d4210-08b1-4ce2-8baa-b4c8c6e1a8c7', '\\u53\\u65\\u76\\u65\\u6e\\ua9', 'ophyRv1yqx2UL5v9l8Xq_b2FweNo', 'o5O6DxJMFommbXmsQjypJNVS2VcY', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLDdiayg9gFc5emIQpXCBdicQPsvAm7c8W3xOjNBR5XFficbXlHNR8BwMM4CrAouA2WVZzGuPfH0V3a7A/132', '0', '1520584788', '2018-03-09 16:39:49', '2018-03-09 16:39:50', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('29419243-1949-4739-8156-63ddc0c38d19', '\\u7c\\u25cf\\u46\\ue1\\u6e', 'ophyRv_WnIO4ROcNsXXywSnHGWR0', 'o5O6DxOWpianwyez5RMAaieECu2I', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/bakJJxHl9V7tticuqgVafw9gTOEwXXeIkcE4f4IEcPILLLcAmIYbz8FgrENQiciaLXiaYCcZ18PsKh7j4nTRTV8seibWMCAgKeiaOQ/132', '1', '1506135671', '2018-03-08 15:47:21', '2018-03-08 15:47:23', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('29ba4d1b-39b8-4ee9-a66b-a278c893f219', '\\u7eff\\u84c9\\u8c37\\u5c71\\u9756\\u6613', 'ophyRv5GhP6bmdig3b8ixkN61y44', 'o5O6DxAA5Jk8xP8SB5OfM8XqMBys', null, '中国', '甘肃', '嘉峪关', '2', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpNcIgHsF4e59Oialuyyg0ux6zJ25thSMB9uZvXIRzWB0ubKBia40q0SNZAcLcNLfwPWK1xic9HckiavEObla7v0oYQl/132', '1', '1520344236', '2018-03-08 15:48:08', '2018-03-08 15:48:11', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('29be6f23-21e5-4838-8d02-97a24b37ee70', '\\u60e8\\u6de1', 'ophyRv3QcQH_Mqey_rCxo7EFDoPY', 'o5O6DxJd-C9PEd-uTqh7xuGWs5EI', null, '', '', '', '2', 'http://thirdwx.qlogo.cn/mmopen/Q3auHgzwzM6ib1qsYoIhoDTVhC3JMM25ZE1dibm1ybUiaCTJ1j3vUudBr0ctico5cvCXDL2KHpgPkxnuzoI5ASjNUgPHg7mq6uCoGSHeuJia3H2c/132', '1', '1515506025', '2018-03-08 16:13:56', '2018-03-08 16:13:59', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('29c08681-6797-4678-a788-ba11f2c860f1', '\\u4f59\\u6446\\u6446', 'ophyRv18cwUmzubWCWaLsSL90fn8', 'o5O6DxJMjvssOp4ngFAQAhC7EBN0', null, '中国', '四川', '成都', '0', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq2qnYzLFqUFec0RQ3IFgkDbZicsKSqjib1uicbMtTbunMia5ObbdWKNibs9LYKMlu7CalvPm7xNiczjUTX52YWFavkzPl/132', '1', '1506266391', '2018-03-08 15:50:33', '2018-03-08 15:50:36', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('29fb67ee-b309-4d2a-b222-df77c8c9b9a7', '\\u50b7', 'ophyRv37sNi_7EMdz47R8lq-WzuY', 'o5O6DxPZvVFRj_2WMEly9PCJTTxY', null, '', '', '', '1', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpM7KH9kzjE2TIictp19maw1Ff11IMhVm5QeR5hUfF8EffTiakDibtqV9W5Yu594CqOajvoHWCJOl6jKQ6Ngu3R4bGa/132', '1', '1515506020', '2018-03-08 16:22:04', '2018-03-08 16:22:07', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('2a2651a5-fb19-48b6-ae43-cda44b888ddf', '\\u59da\\u6c81\\u54f2', 'ophyRv0KT9kXar4R3f49bqs1O9S0', 'o5O6DxHn-PT6XAEctiouz3m08upE', null, '', '', '', '0', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpMP3sXAXQ7ibGIHrFCQq4uEvic9oGrQ1PmAzX5lUicylYM2Du7Dk437tatRMNYsegS3ImiaicHMTice1fKzWvpfjPpPicV/132', '0', '1520945953', '2018-03-13 20:59:14', '2018-03-13 20:59:15', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('2a490f64-ca51-49bd-a91c-108f0823a669', '\\u54c1\\u724c\\u5f00\\u5173\\u706f\\u5177\\u4f9b\\u5e94', 'ophyRvyk4DPZUvv16cP0I1ZZVIPM', 'o5O6DxH7mDEqa4OW2ejVwjsJ4Wrg', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpOuRzNRZ2eOG4RgJ45l4f4EKiaJlJvVYJGHIDwDxCGeO4QUthmY3cpSmKepYiba7t9Av60CjUZIAoGhib97wlcqPNj/132', '1', '1506152034', '2018-03-08 16:03:47', '2018-03-08 16:03:50', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('2ba50cf3-97e8-4069-a206-48812857adc0', '\\u65f6\\u5149\\u265b\\u901d', 'ophyRv0u6aws_dL3DjOfH7xP0bV8', 'o5O6DxOccNgp40eq5qqLw4BgJ40g', null, '中国', '四川', '自贡', '1', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpMqSQk1GeRf3CEyvkUgw7lRWur6rYbNoTjstaYDOdTddjXWWAbf6IHO2Mhpb6gA6lTFH1c3esMYSq5RhqD0sPAO/132', '0', '1506152556', '2018-03-08 15:52:02', '2018-03-08 15:52:05', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('2bb46cdc-19a2-4439-b479-ae6ab7cc6bf3', '\\u7b80\\u3002', 'ophyRv_2daSx9e3ow4vaWSHX5xKE', 'o5O6DxOu990oJnIsX1gV2SFIKyws', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq2qnYzLFqUFeVIwX7hUtkMnc4aO0bsEJ93KiakOFCFg7Fpxxq5XibkMG5kPxrH2tZR6klVw93rL9KB6JaGKA1kQXib/132', '1', '1506135746', '2018-03-08 16:11:49', '2018-03-08 16:11:52', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('2bd8a4c0-f81e-4cd2-8b0f-de8e4ed32118', '\\u5eb7\\u864e', 'ophyRv5eEOiKTC-8qycBkjYPWwfI', 'o5O6DxCfDggo_7fnqPR2KFhEG5vw', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/bakJJxHl9V7tticuqgVafw0XTMhXMsdOT6fwq5aopK47kY2PawtGrFMDdcb32Pibia8Jy0WfvDr1TmDkDm8Tpqd8gHU7vcYsiaof/132', '1', '1519780262', '2018-03-08 15:46:02', '2018-03-08 15:46:05', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('2bd9d564-75fb-4e7a-b668-aaa49fb7d96c', '\\u4eba\\u751f\\u5982\\u5b5f', 'ophyRv6GJD4aPSQw_K6M9tqXiCIk', 'o5O6DxAghkveduPLz9MJQMZw-vIg', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/Q3auHgzwzM4ra3XvGLmfQvwnVAeA71GdQlpBA25LUuglw90YTzibYzvHVfMjuCtjf1xCoBofg40BRFPtmTVOtph2AuDqbxk8g4QyXcZM6MRE/132', '1', '1506914007', '2018-03-08 15:52:20', '2018-03-08 15:52:23', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('2c1958ab-ef73-4f79-9507-7731c44e9ede', '\\u793a\\u7231\\u8a93\\u7231\\u901d\\u7231', 'ophyRv7IANDlejwyE31XM7ap0pX8', 'o5O6DxDutoFXxwoMv1saRAvQ4mew', null, '', '', '', '1', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq1OSUndNwOht7XHmm9nNJdEQXe0B35l2yibjTcBgKytoBnFUmKLMjRPGianGIvbLTXCVkfxJJngRklY9iaBkxnnWkN/132', '1', '1520344198', '2018-03-08 15:49:50', '2018-03-08 15:49:53', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('2c82dff1-beeb-445f-ba03-34ea66fbda0f', '\\u5cb3\\u4e50\\u6c11', 'ophyRv3fM63fWxJXwcku0ab9df5c', 'o5O6DxAaKCXVxy-0i9NsIkPCyXqs', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq0JbudeicsQ5tovzVXvstk5d9pOlJ8J3tT7IKrglTkguUa4xbzx9ibAnfiboPlXcBDKombTGK3V30iauJHDibI8FpWlD/132', '1', '1506136941', '2018-03-08 16:19:08', '2018-03-08 16:19:11', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('2d96e60d-f962-40de-86a1-ac88fe370588', '\\u6211\\u4ea6\\u98d8\\u96f6\\u4e45', 'ophyRvxDfRnON9rg3q3MGvv0lfdc', 'o5O6DxL0SLqb6aqLertleCG4Pbj4', null, '中国', '黑龙江', '齐齐哈尔', '2', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpNS5rPXPLcUPFgicgBuSarMibCuz0UuoGeic4jZKk3o03amFdJIm7LMyjVHXqiaGKzqbanJtHeNw7qHvMCNazBPWHWI/132', '1', '1520344197', '2018-03-08 16:10:38', '2018-03-08 16:10:41', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('2d98b06a-eb8a-4ca5-a38a-0d47842d259a', '\\u602a\\u6211\\u591a\\u60c5', 'ophyRvx-rpcI4CVVD6xZfbfFxgjM', 'o5O6DxMBJ6soZj7bHrGH3fA1gQyg', null, '中国', '黑龙江', '鸡西', '2', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpP4xy8QYURxyywparTPjDsvic3Y9dMsmGA7KUBjSHN8iciaOwyMd5Fjib1Pwgfq3HaWMwUclQSpjveP3BUhgosSE4ya/132', '1', '1520344206', '2018-03-08 16:17:58', '2018-03-08 16:18:01', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('2f328722-64c1-49bc-86f4-168c7c6a9755', '\\u6de6', 'ophyRv9GrMRdLhqNrTCvUJc4CigQ', 'o5O6DxOZz7doUeyK0hdoMgGy9GjI', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpNIRKffWBecSTXicDODDZP3xaLibRWs20Pquu6s0ibOsibvvIdA6f1mKzTqvNmCWVDFkhK6t7NeMj3GqWjuJBjTzr6U/132', '1', '1506137216', '2018-03-08 16:23:42', '2018-03-08 16:23:44', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('2f6ec80c-bd57-419e-a597-3241638e5cc5', '\\u98ce\\uff20', 'ophyRv3eSUQgz_ASOuvNxjWrxXhc', 'o5O6DxO3EgKzXVur17Vac2xSYk2E', null, '中国', '内蒙古', '阿拉善', '1', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvrwTLgy7a3RDLwefH8Bh0m2jgclNf3JTCfQGiaJhfwqteiccnheXbOeCNFQvAnAhKOAchoMJ18MQ6CNibICXABaof6v/132', '1', '1510726248', '2018-03-08 16:08:18', '2018-03-08 16:08:21', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('2f778faf-c624-4855-8e65-38fa892a46a6', '\\u45\\u46\\u2e', 'ophyRv5HgIHm5ztSLgC9eBaDHn9M', 'o5O6DxKYmj3FiRLbrtmYjbEQ3yQU', null, '中国', '四川', '', '2', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvrzWoiaBOvBnS18oWibJRH09S4bgP6CLJfRtTvyvUkNeJraicIOI7O1nrX9BW41EFUrlu9PW0Xh2AeXrtOaC4YbGlE1/132', '1', '1506129675', '2018-03-08 15:47:47', '2018-03-08 15:47:49', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('2fc563a9-d78f-4284-9afb-e68c5e0ab49e', '\\u80e1\\u73\\u69\\u72', 'ophyRvztWuzs4unRNT-M7-_F35gA', 'o5O6DxJAAE7CYkk3Mt2tjeKBIDZw', null, '中国', '内蒙古', '阿拉善', '1', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvryQnquQc1CicdlgFf5QbD98tP5iacrNRuf54yN4qJ0znzQ6PMTnlGU7ROIBEjTj0U62icQpgYNbtcVL61SEmj2muzO/132', '1', '1510726192', '2018-03-08 16:05:14', '2018-03-08 16:05:17', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('2fcd5200-7291-4a18-8f37-1296c9a06144', '\\u6df1\\u62e5\\u592a\\u9633\\u70ed\\u4e0d\\u70ed', 'ophyRv-31cI1DNj6HkdnR72hUmFA', 'o5O6DxEgOG4wgHtDeogFy0TB1zNM', null, '中国', '海南', '三亚', '1', 'http://thirdwx.qlogo.cn/mmopen/Q3auHgzwzM4BHPaCDQj9g4Sq0vTvXicEpDZzdRSUB0rItPPlRIp5JJEibX7pBPcpwMb73EofpMek4ZGib02Ha1RPTf4xjlEIMhic5eLnUCiaEsA4/132', '1', '1520344171', '2018-03-08 16:12:04', '2018-03-08 16:12:07', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('310dd497-a17f-4def-a49e-e1a59cde0233', '\\u6587\\u73cf', 'ophyRv0n-zZj798fqAeJe2AB_KRU', 'o5O6DxDqxpiWTES08PgCb0n35K-8', null, '安道尔', '', '', '2', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvrzWoiaBOvBnS1z3AZ7k9jgMaY82U1h9Km8WmmbdhZBAgP0xGicUjNdaCYsIn2WOo9X4B5L5FWQQrWRHW2FvZP69z9/132', '1', '1508454262', '2018-03-08 15:45:11', '2018-03-08 15:45:14', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('317d0398-725e-4519-a37f-c16e23720406', '\\u96e8\\u9732', 'ophyRv7osnrrmuEj2o9HBquuWQlE', 'o5O6DxDIZ7Cd2YxqbhHBmoqhsQBw', null, '', '', '', '0', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq2qnYzLFqUFedmuxgKsPxBf4iaxvL7kgJaVCXp07UEd08iaSHFgKicatgUuGWU2vDXGIgg7ybrW8cLlcPOpDJSCib81/132', '1', '1506857981', '2018-03-08 16:06:06', '2018-03-08 16:06:08', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('31f7b06c-e635-4567-b525-c7907b15bb7a', '\\u4ece\\u7075\\u6d77\\u96ea\\u68a6\\u83f2', 'ophyRv36mGXvP2ln_sVvIpj7wsWw', 'o5O6DxC_ybzMKt-U8jQwQ7jN4VdQ', null, '中国', '广东', '广州', '1', 'http://thirdwx.qlogo.cn/mmopen/rqvn1hjHytdpU3hHuDrOYDtPfWsibIGpGjfqbT57a7ibmnicsOWAHDblib3cMibZdEd38icY2X5l2IH9w4pSlwyUmq8xeh1RM4MSCX/132', '1', '1520344174', '2018-03-08 16:15:47', '2018-03-08 16:15:50', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('31f7ea27-8d33-42f9-bd56-1f0c04630fc8', '\\u47\\u44', 'ophyRv7ZD3JTAVJD_kxrHUMnUqUs', 'o5O6DxLb16TdWGuRu5c9T89OQlYY', null, '韩国', '首尔', '', '2', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpMKIjpAribmChsOFN4m1Mnkg3iajvORyxIeCqkjDia8TZt5YReBjYk86Y5uGEWbZOnBh5z7HyM3lJCwUeXy2Dhn5iay/132', '1', '1506858157', '2018-03-08 15:50:08', '2018-03-08 15:50:10', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('326ed7be-e088-4aad-990f-3900dd69e4ac', '\\u4ea6\\u975e', 'ophyRvzPq3R6_5s660xTaljzCU6Y', 'o5O6DxB1qXam5zjwi8e9HYBrXii4', null, '阿尔巴尼亚', '', '', '1', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpONQV4QO14LibMXUzCCyjFQA04txWhzJyRU1cvicFQs7jpuZ6YJOpLlEZV11Mic3UMkJgFDBe8fZnvxhURwZ3IBBdF/132', '1', '1506140131', '2018-03-08 16:09:43', '2018-03-08 16:09:46', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('32e1696c-7f46-4945-9963-87238b831bce', '\\u534a\\u5b89\\u5ff5\\u771f\\u9759\\u7af9', 'ophyRvz76RIIRCa4aZ1IJcTq6u0g', 'o5O6DxD0QXgjOgZN3Bl2GzyvoRks', null, '', '', '', '2', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvrzgOBTWcJ7AbGicz2vwpWyx5TCKDfQBM9SypIy96k1cYAyo7NHwf3miaMV95uFHoa4QggcReCFtREf3ZJqva6gdRU/132', '1', '1520344171', '2018-03-08 16:02:53', '2018-03-08 16:02:55', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('32fdd380-9a31-4082-bc60-dad12cc3f25c', '\\u94f6\\u674f\\u6811', 'ophyRv_CrJMEgHrVNmRk1qQYBJyQ', 'o5O6DxCrkTs8caSsMeTCLvLx1nv4', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq02FBbf60ZG1e54LmRticJx0u0m661hG4gJz6Egb0AWXKL0LjNic0WBic0zibqVTj9XHGx6YiaEtcSOqOxrRe7WavUHW/132', '1', '1506402208', '2018-03-08 15:55:24', '2018-03-08 15:55:27', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('345379e5-37d9-4290-86c5-a62d30b5b71d', '\\u5f\\u65\\u64\\u69\\u66\\u69\\u65\\u72', 'ophyRv1z8jXWYIwxgve29ChAlBdA', 'o5O6DxATlktqk577AMMgggPVnBtE', null, '智利', '', '', '2', 'http://thirdwx.qlogo.cn/mmopen/bo4l7DibEhDd0TxIHNpcibA6LMRa2CG14qEJL6x0rRiagMGPQhhJcR214X0hONHBb3vF7qaQRMklhthVicySktiaccibPIxgOe2fyX/132', '1', '1506675615', '2018-03-08 15:55:50', '2018-03-08 15:55:53', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('34608f40-7598-4aa9-858b-92d96ec6115c', '\\u61f5\\u5c0f\\u4ed9\\ue314', 'ophyRv1KFq9QIu4_SUsq89QRa90Y', 'o5O6DxAO0SPqa0_XFDX5K2p-710E', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpNpJhgTlBjQcO629jxSOYA9ylJkvibnra0bx0n9BGUg8vEiaCmps9KJafWia0dH2t4icEe5r6Lkae7NHtZZnicR4QTeF/132', '1', '1506303934', '2018-03-08 15:56:57', '2018-03-08 15:57:00', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('346fd051-46ce-43b8-954d-56bf33e58e5a', '\\u751c\\u751c\\u5988', 'ophyRv3VCnK8wVxqXN6Ht0NxprCo', 'o5O6DxDoyeTlpIGCxgu-EenXitaI', null, '安道尔', '', '', '1', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpPubrFfJicCyuDKOELic9AkUOp7dNYKqEX8JqQhGVKgDYoGDt2B7xX1fx76hpBb5ny1RlfXqs0FxsDUModj6V9F04/132', '1', '1506233739', '2018-03-08 15:54:39', '2018-03-08 15:54:41', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('34e5c8c8-9a83-4b85-a83e-c6915b4c0d92', '\\u39\\u35\\u5f90\\u971e\\u5ba2\\u40\\u628a\\u76cf\\u996e\\u6e05\\u6d41', 'ophyRv8eOZr4OnmHTLD1ey-yD6CQ', 'o5O6DxOdKczVPbS-BV27fUx6Qq44', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq1QFwukVKXFJ8J0uohnvCBRVRBlE5fvSrNwTlZKqTmOfnVM07jRv2oSCZMkwvHJ06vfPLic9esYLXH3KUVeYCrDR/132', '1', '1509496387', '2018-03-08 15:54:58', '2018-03-08 15:55:00', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('34eec9fe-3ae9-41db-930f-4605e7e191da', '\\u4e09\\u7f8a\\u54a8\\u8be2', 'ophyRv5ui6aQQfaEjweCOjhgFNiA', 'o5O6DxM3WtldOzbdelY7URdcOm7E', null, '澳大利亚', '维多利亚', '墨尔本', '2', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq0PgEM0p8OhWlcRialu2qIGUAJhIiaTg4PTYDBrfDgm2022l19xHELFW0EcLe5uvpUGhGseAhzNmziaavKfcQPicAKg/132', '1', '1506137846', '2018-03-08 16:24:11', '2018-03-08 16:24:14', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('35130cf9-697d-4baa-b19a-5901c876906d', '\\u9c7c\\u513f', 'ophyRvyma9iy6GDXnl9WdBIerqLw', 'o5O6DxB0EZZxP5fYjz_o7CFaN62s', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpOTlGhOAB75KBaokeU8zcav5arLECsseoicq0XVIStBC0QzSuiarhibWXAIFmnx1YlvvJniarlUfpOVuvcNmslKZGRG/132', '1', '1514437523', '2018-03-08 16:12:34', '2018-03-08 16:12:37', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('358d59a9-8807-477c-81d6-1049bbe7d3e4', '\\u66\\u6c\\u79', 'ophyRv2Uvhk_OVbw_U5kZdqiA8pA', 'o5O6DxCCGbGMEbyzSzpljg4BWDZY', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq2JVibgHY6KjE8iab4I5qqDbuWUWzEll9sbNxydHBDoib8FTQkIzxs3G2lAxkQaTx9qYib8O1cgYicma3rcevichF4sS9/132', '1', '1515995510', '2018-03-08 16:05:17', '2018-03-08 16:05:20', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('361e7d99-f180-4370-a3ba-ccc62e04e19e', '\\u73b0\\u5728', 'ophyRv8XmPHog4gLWzWOZV27S5jg', 'o5O6DxJ0ZS2syrTf88dUNQE7ukKY', null, '', '', '', '0', 'http://thirdwx.qlogo.cn/mmopen/3b5dWBtwxUoAkMvIicW9KTIWpJT0J54WEuCmEA6I6UekAzWjqUhhVcVBgMnaj9RbAW0jgh6LA8ia4YHAgrOT8DJpFAeCzQX3cP/132', '1', '1506219591', '2018-03-08 16:16:28', '2018-03-08 16:16:31', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('36c1b9c3-df91-445d-bb7d-c26b69d18e7c', '\\u5ff5\\u6ce2\\u53cb\\u5bb9\\u51dd\\u8776', 'ophyRv1gba9vKnEGlfvnKAf-JXc8', 'o5O6DxAteEOboNQ6EMfxij1zw_vk', null, '中国', '海南', '白沙', '2', 'http://thirdwx.qlogo.cn/mmopen/rqvn1hjHytfvzBdw4ibzzzAVn8UGICVicTgAGIibhJicseC5Ic89MJ0PujVBtvdQPUgq7C0vrMEVanHGy87fMoVaM8TUpISwiaL8p/132', '1', '1515506018', '2018-03-08 16:17:55', '2018-03-08 16:17:58', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('381a5dcc-d49c-40f6-bdd2-3ad8a858697f', '\\u41\\u20\\u5c45\\u4e4b\\u5bb6\\u604b\\u5de2\\u88c5\\u9970\\u96c6\\u56e2', 'ophyRv2x0tKTzqfwcoivPRmsI1aU', 'o5O6DxJ7WtA5NdiwjboQbf6X0giA', null, '中国', '', '', '1', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpMVBRyibFsGsicpxj1uBfBd2tMnwv2XiaJtzgQ8bqAyJBVtfMb3IhHPXrWt4l6VrlFsQ3eBb1oSLLeXrMb0H5xrj1E/132', '1', '1506130371', '2018-03-08 15:55:08', '2018-03-08 15:55:11', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('384f6d28-7ba2-49b4-b1d5-aa72f90fec36', '\\u66fe\\u78ca', 'ophyRv-wD9sQBzjDUEat_rMfDHLg', 'o5O6DxMCqU_3P5NW3PYZPah35kng', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq3lTOs9FahqNJX5hOHUABzceica3eo8QiaVxib57fP3bCs0q4Fnw2f4Q5UdsBlLTuIuLOFKPdwNZsm8XWxuyic3eHDJ/132', '1', '1506133721', '2018-03-08 16:19:23', '2018-03-08 16:19:26', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('3855c7d6-854f-4d36-b6cf-e70f818b5869', '\\u6aea\\u7836\\u4f6b\\u6d25\\u83b6\\u6741', 'ophyRv9On64v6BGCEViIjUVephHU', 'o5O6DxHDvOyAL511cbzyAshAavsk', null, '中国', '福建', '福州', '2', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpMuG7j0n9ZVjHQDcgwWdLYNg9HcsPK2TpC6ianBLqQe5yTtib0pnYLVRmAicXeEEotVzQzhTeHwiaUSp15iaQJvF2VAj/132', '1', '1520344238', '2018-03-08 16:09:20', '2018-03-08 16:09:23', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('38621da4-a1d5-481a-b70a-2898961e1ee9', '\\u42\\u65\\u76\\u69\\u6e\\u7ec3', 'ophyRv-kEPdagznuz6KYS-dW3ZHM', 'o5O6DxK1IdtKlc9S266DTxa4UYw0', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvrzWoiaBOvBnS18MicJMAuSB2cGemUtWeywKWCWSNtmia3P4CcNSKbvSsNicejqzjgnXUJ2QlbYic44KexcniceAdcZYBj/132', '1', '1513816495', '2018-03-08 15:46:47', '2018-03-08 15:46:50', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('3872adfa-1370-4182-8f80-f2376db127c1', '\\u3010\\u521d\\u9192\\u3011', 'ophyRv4K0-lMjKRhrX7BDXtRwsZg', 'o5O6DxGqsQSyktpUq10J7dbhagw8', null, '中国', '四川', '眉山', '1', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpMVBRyibFsGsicgtRicrIhr2OBA62GVuJWTcg2ShkelOaJwDYEVib6EZQCv2YdPUx1QxF1FRAEWolU5w8MIPzH4qoJO/132', '1', '1506147055', '2018-03-08 15:50:30', '2018-03-08 15:50:32', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('387d293d-4006-4149-9277-daec710fe3ed', '\\u31\\u38\\u30\\u5ea6', 'ophyRv9TnZ_5MC5u715nGo_DGhZk', 'o5O6DxIwR94c-d9orU_mEymHJ7fI', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/Q3auHgzwzM6zToZp9etkOJvLF634Vxm34lkxuIPwVdJ5LWIb6HTR8fwDzTqD2TUTThkKSpEOnGNycLVUIzFlWTDtL8pujMe7tibup1lA8GXM/132', '1', '1519887633', '2018-03-08 15:48:54', '2018-03-08 15:48:56', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('3958d886-4f97-4543-9d7a-dd4d8ae2e84b', '\\u949f\\u840d', 'ophyRv-0CRWOfS5Ip33ShwbvQ1RM', 'o5O6DxGNVa367VyoPMzVh2PO6YgI', null, '', '', '', '2', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq1MCoUyrol5vbqNfC9eGtkLia9Qa0lh4zty14yPbm6hD1pOZPhYpSNV8Jdx3iaAgrwnpAehC1X7MBNuicfYGzUHlEW/132', '1', '1506268112', '2018-03-08 16:22:49', '2018-03-08 16:22:51', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('39725d8d-2163-45ab-9ac9-7ba1c3b997ff', '\\u4c\\u57\\u59', 'ophyRv2FKDmfTOGoTZe9BvxsW2TI', 'o5O6DxDC71g8H0m3Q0XhpD0CwE1c', null, '中国', '四川', '自贡', '2', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpOnZ9Gdv9A2GPRhOZqsydo29G6Rp75YwJZxZtvIiadY3qhlSKojVnF4cmwpNic85alkFQlPicxe4EWolU5Tlk055YZ/132', '1', '1506152575', '2018-03-08 16:23:08', '2018-03-08 16:23:11', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('3a1854fd-f623-4456-b550-80f3f7bf7b29', '\\u963f\\u8f89\\u54e5', 'ophyRv-dZgvE2jYXgR9_Kqnehycc', 'o5O6DxCMWv719fWJOGEm8ELmT46E', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvrwfH4oCoCEzNvpSDCqOallCl7cC0deoCJATDHz8qicn7MVHr7qyZjuNgFfC2mxuWYBicwr4uicV7HNL3vNvbaPjU72/132', '1', '1506227160', '2018-03-08 16:04:02', '2018-03-08 16:04:05', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('3a476c94-e3d1-4a12-aa00-8e9690b0d995', '\\u48\\u7a\\u78', 'ophyRvxZeFXBz1w8WoPet51_G4Ik', 'o5O6DxADt97EmsahxStQZFV_3uUs', null, '', '', '', '0', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvrxXk3EUiapGZCppZR5Jhr4CuuCrlu0Y72A9RDS5rqkcibjFjxIeTm3Mnrqy1M2bNfqQiaTmGs8eIUpNDj4o3xPsZ9q/132', '1', '1506225790', '2018-03-08 15:51:37', '2018-03-08 15:51:40', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('3a80eb05-b12e-43a9-8856-65c05abfc69f', '\\u6c\\u61\\u6e\\u63\\u79', 'ophyRv7WOaZ4T9vl-wFGwymzfBpg', 'o5O6DxP1pq7CELM6IOVLLY5r5ZBU', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvrzIvuVqia3GZz6fbSn9jCCK7cXlM2shKIJEDIOljicic8CT1RyV5xOPribS3RCzIURTDsbKGxoSuzOn5nFIMPyCzic4I/132', '1', '1519973136', '2018-03-08 16:07:56', '2018-03-08 16:07:59', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('3b919fdf-d2dc-4657-ae2e-96fe6b07cd0e', '\\u6768\\u73c2', 'ophyRv0JVakfwA0tKhR0GGGy3GN8', 'o5O6DxJQCFGk2eCDKyTle63840_A', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpPYTYsPnPWicaianentYOtXpaqzzwJ7AQUub77wRxajjFNGJ28ibtAxhQEIr5z9kNCgSxudXicwBx9c3grnqyd0w8Y1/132', '1', '1506218828', '2018-03-08 15:55:57', '2018-03-08 15:56:00', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('3c394506-ec53-4e82-b206-ffa3d24b5d61', '\\u41\\ud83d\\udc8e\\u5ed6\\u59b9\\ud83d\\udc8e', 'ophyRvzma0aJNGdUuqBnzmFp8yPE', 'o5O6DxIrhKFD-smTAjAG_aZ352JU', null, '', '', '', '0', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpNcIgHsF4e59AdSU6Y5iahibImHmdo7yQzSc31mVnvLBzabK6FSLozeQmQrlPE7xJRnCxcQKfSnQuh775UyQzV24B/132', '1', '1506153047', '2018-03-08 15:46:55', '2018-03-08 15:46:58', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('3c3ef51b-52bf-4d55-b2da-e07c6aee4ad1', '\\u738b\\u745b', 'ophyRv52RjfQ1hrlsWgfatvXyQb4', 'o5O6DxBXFM7lKh3bm3767ZTwrSJU', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvrxUszojGibtnTa15FibkI5icGsqicicOeZn5wWrK8onfWnC4WYYB1h58jCNtChice8QXJo3oAqIoCm3gYWssCEtrKlMiaq/132', '1', '1509514312', '2018-03-08 16:04:48', '2018-03-08 16:04:51', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('3c3fdc17-e599-4ada-8692-db45a9ec4e88', '\\u5e73\\u9732\\u51dd\\u8299\\u79cb\\u7fe0', 'ophyRvyHU1-rIMhm1aDpHCXIz-Xs', 'o5O6DxGKFCtM6K4IyQhbR6nchR5I', null, '中国', '黑龙江', '黑河', '2', 'http://thirdwx.qlogo.cn/mmopen/8qj9KWddOVFR0CxiccK0A9H6NrQ8OezO2TIH1ffDZwAcqH5ojksy9BHL4tCA2fibAFC13hyTQ3pgXE254eQJndfgMzDj9iaMFH9/132', '1', '1520344172', '2018-03-08 16:23:27', '2018-03-08 16:23:30', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('3d005a99-dec7-4768-8ee6-317eb5f7e1cd', '\\u4f0a\\u4eba\\u5b58\\u5fc3', 'ophyRvzgl4aTOcH5A0t4hIUwzw34', 'o5O6DxLlGhoAeWgdH_XhwdUWKRXY', null, '', '', '', '1', 'http://thirdwx.qlogo.cn/mmopen/rqvn1hjHytfRksXKUPJ8mibZ12EKvH73IDX59ogNBwdF17poia64HHJ4UOEnufJecIglpqPmMLEkibG7s2pryibxuwfvMBibldqVf/132', '1', '1520344170', '2018-03-08 16:11:30', '2018-03-08 16:11:33', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('3f43902d-8995-48cb-b9dc-44a1d264c17a', '\\u6e\\u75\\u64\\u67', 'ophyRv68uUsMSWQawIYyH9ZBzQEg', 'o5O6DxMrFZO7ihzrIMIBGhzXPsnQ', null, '', '', '', '1', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpNAwuj9wic0pMIHUWj0hMpZhtMK8IaQVtRRTDhrjSZq7SNGZrZ7aSRY3QxotBgiaIYaHKmEcHnmzpNicyB7Kkd9Qqib/132', '1', '1520344233', '2018-03-08 15:51:33', '2018-03-08 15:51:36', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('40234a9c-37ab-4550-915a-df978c300e55', '\\u90dd\\u9ece\\u6167', 'ophyRv7oefIfSZxsVfb5v_8Si3D0', 'o5O6DxM2Gcqx5VANRFxOdOF3D_GY', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvrx1aNaoluAHly4YlSPstv9CgUeJiajqz5p93rYQhYuB3IVQq4wib8N8KUR9uxr7icFUBAlMiag5ujKdN4m73fuYzWV8/132', '1', '1506674732', '2018-03-08 16:01:58', '2018-03-08 16:02:01', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('40876f29-660d-45e7-aaa8-8bc2c694d27a', '\\u5982\\u610f', 'ophyRv9lai9kp4SJLMRQj-siRCJg', 'o5O6DxC5OICUOSvlB1YOWYrx-OJM', null, '汤加', '', '', '2', 'http://thirdwx.qlogo.cn/mmopen/rqvn1hjHyteFlaCiaLlyv1oWd2fhsuBwogTeEadEWBoWI558torklrRP9T0lRQkgew7fZRGY1u4Fd4hdWSQqkttTr2yqKVWOz/132', '1', '1506857948', '2018-03-08 16:04:07', '2018-03-08 16:04:09', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('40959f7a-5fe8-4155-acec-7244b07ac076', '\\u5377\\u5377\\u513f', 'ophyRv_tSHrsdFfYxc7JLsY-JkWQ', 'o5O6DxM58H9R8-WGal4xe91hGlGc', null, '中国', '四川', '南充', '2', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvryyTb8wSbmXJxQbtFjNd9aakv9NDWFOFibAMibzibBRRINBSQ8njtbibHL3KY5vbPy4bHUbIjhDC9ZXB8Giaiac2vNouG/132', '1', '1506130591', '2018-03-08 16:10:05', '2018-03-08 16:10:08', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('40c8a406-406b-4655-b94f-5eacfcac9df1', '\\u4ea1\\u6d77\\u6eba\\u6c34', 'ophyRv8s1ana2vW2q8YeYS_2P7KI', 'o5O6DxAMn_Bs9SJmFNgYYdeB59Yo', null, '', '', '', '1', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq0q0CvEvcePty8XG68EtPdSIuPfCtclPfrgqkuKVeL21ictZD9UHVfAQxxoiaGxcA4oGfpp2bvC50jrhtRTCLauaA/132', '1', '1515506028', '2018-03-08 15:54:20', '2018-03-08 15:54:23', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('425618ef-b5d1-4848-850a-a22b0d47eade', '\\u6bdb\\u6bdb\\u20\\ud83d\\udc31\\u20\\ud83d\\udc31', 'ophyRv0sO6MIhkA1z_rMCp5N-cck', 'o5O6DxP37HZwZEvWqahPKLfyV6QA', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpOMx8qI1DpHLIfYBb6XOKDuKaOKXicWMV8wITGEbPNVRJR3epb6oXDDcia44CgMXoQWyOgpAG6GN9IvbxJmaTBIf7/132', '1', '1505892163', '2018-03-08 15:53:09', '2018-03-08 15:53:12', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('440463a6-fe5e-45b0-87ac-73195eef0011', '\\u5170\\u8349\\u82b1\\u854a', 'ophyRv6EbFYEYSbj9XN9nFrCXFRU', 'o5O6DxKELw5lQeyX078F1pbRX50A', null, '', '', '', '0', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpNpJhgTlBjQcFfNHPrg9pAk0u1ORqLLBicEjLXo8ClsM1uGfmIX4d7YQXHBVfBlVaMz6iaxAVCLDnKELmTYvBsGTY/132', '1', '1506237638', '2018-03-08 16:08:59', '2018-03-08 16:09:01', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('44267514-bc9e-4328-a68c-7e21c15eb0b6', '\\u5728\\u8def\\u4e0a', 'ophyRv5GG3KjX8Aj7UtwtddEF7rk', 'o5O6DxJqEkQUK6ocWKxWCfHUQeqY', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpNTDf7Ze3MWiaNSBxzp6oq4k9QWFSMiaZlGwNBFe78LviacJMvVznkVwTrRaAvDvLVr3Mv0d4bXIwbR9W4UgnhB0Lb/132', '1', '1506145889', '2018-03-08 16:03:22', '2018-03-08 16:03:25', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('44c01e54-330e-4acf-a0c3-b069ed5ee672', '\\ue319\\u6a31\\u82b1\\u8349\\ue13e', 'ophyRv_7nxOpXX72ZjM0gVmRGSNE', 'o5O6DxM3xV6wkahpBAFK0DJGvWsk', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/rqvn1hjHytcCRFICAX4g0BJasDumKjz73oIibsvVJS0vlyQQb8S6Dhe5V5d6dtTkvL71yPbdjcAGU27X1txLicQiaQ3B6nIetY4/132', '1', '1515068877', '2018-03-08 15:57:37', '2018-03-08 15:57:40', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('44e16ee2-a71b-4de3-b049-127acfe2817b', '\\u767d\\u5c71\\u4ece\\u9633\\u590f\\u65cb', 'ophyRvynE4GB0vcKqUVosk-aBcak', 'o5O6DxFVdqhy71cxiXMZoqynkBGE', null, '中国', '贵州', '黔西南', '2', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq3BxAaq3ZUnPibLYWrG9Hu0iaE6PR5KD169TVYvw9EDC2ePAOhtmZ4ropuricq0sKV8iaqibibDp8XNKGR5CuGXzy1NRY/132', '1', '1520344168', '2018-03-08 16:18:44', '2018-03-08 16:18:47', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('453040f5-9d81-4d3b-a0e7-00f8b3b6036c', '\\u751f\\u6d3b\\u8fd8\\u5728\\u7ee7\\u7eed', 'ophyRv9uP1GfhIf7_RRRPhqWkQ_0', 'o5O6DxEB-966JgPUOjaP_eu8ltxg', null, '中国', '四川', '', '1', 'http://thirdwx.qlogo.cn/mmopen/bakJJxHl9V7tticuqgVafw3C5xYtyJwiaJg9A3BGg4RZKPz2MIwWYlkZHXmEXWiaWCicsce8Kg3o0oicMDxib9BBGsCJjNQxReZJGS/132', '1', '1506238519', '2018-03-08 15:47:28', '2018-03-08 15:47:31', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('45ac4df3-8d07-439f-a384-3d3e02e0bb6d', '\\u5f20\\u6842\\u743c', 'ophyRv1rDZNrtQNH5IJnHZ4CktTM', 'o5O6DxMGJX1IgnDaqGBld3VbfXR0', null, '', '', '', '0', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq3lAG5gJdtuuLQyGLaRQQ8ibkRhLBRJPYJic2Y8WM2hwKvwkib3vd3iaVlyK7CeCEgSrBCXWbfQvsro8rd8ZK0HJu9W/132', '1', '1506138927', '2018-03-08 16:24:41', '2018-03-08 16:24:44', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('467b16a4-a392-4405-87ec-f4fab4707a0b', '\\u6d77\\u5b89\\u5e7b\\u6843\\u767d\\u51e1', 'ophyRv5Y0mCBUlyRf6XoEK-WsIEY', 'o5O6DxHexgjRb8t8kmhnOxoa9yts', null, '中国', '河北', '衡水', '2', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpNcIgHsF4e59LfeYic0JQ0qp9dCSSlRjbZ8p9f3qmeGbKYj7oylzAXb2eZj5hH2fmgt6qoSUaZ2ibx1VBScibVpmIu/132', '1', '1515506018', '2018-03-08 15:46:43', '2018-03-08 15:46:46', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('474660dd-5429-4500-b33d-dc8f9ba7ec13', '\\u738b\\u82f1', 'ophyRv5vvRQRmLiRducyU_EksPnI', 'o5O6DxP01UYQqJfnPqHAeoOqaaKc', null, '中国', '四川', '德阳', '2', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvryQnquQc1CicdkOyCIoXg9axicVXvNC8GNLIqMggMnPAzLzADZrYy6e5DyiaPVnTiatTpaxeJx5qSQo80wkARsU3ianc/132', '1', '1512365304', '2018-03-08 15:52:10', '2018-03-08 15:52:12', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('477872c0-e6c6-4061-a529-fdfc3ffb0473', '\\u5e78\\u798f', 'ophyRvzmz1L6L190bwm42iubwAdE', 'o5O6DxDOw0Q6AKwIM3uDSIrePU6k', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/rqvn1hjHytfaB2v9bcNXICeicWBGuLt8LcSPianA1q4suqicMyKS4yY3icEoSzW2Xich8xCZvIDLPpyVJu8pKOWLVPBCBgxTE4lDu/132', '1', '1506153419', '2018-03-08 16:06:28', '2018-03-08 16:06:31', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('479ac809-5bf0-40be-a5da-9fe3fd3ef52e', '\\u4ece\\u84c9\\u5bd2\\u73ca\\u4e4b\\u69d0', 'ophyRv9nw4R9VNFYRvTZPYDEHWZQ', 'o5O6DxM0Yb4_2qREjlaS8xLiYorg', null, '中国', '重庆', '巴南', '2', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq3ZzElcawW2O6eN9ZoPmZzHDYNJ5CXcIAeEPakBT7dJCoLh91wejbLhiah2GtY2IQHthXgyjVEibFxSD5UuSuVMyR/132', '1', '1520344168', '2018-03-08 16:05:51', '2018-03-08 16:05:54', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('47b65cea-a93e-4e5b-95a5-d740b9fbf5e8', '\\u5de5\\u4f5c\\u5ba4', 'ophyRv9YYwX8bJt4fEokt-j8MjIc', 'o5O6DxNpa-i89i_I-z8rz6qbJ7Bo', null, '', '', '', '0', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvryjWxsE5Vge3CdWoP2eia3vSSAYmLPcwRa9ib3HFdFFN40cXM3V7eJJleiaDS7ePNWhEMyIwDIcy0DcpicmnEgRmJBs/132', '1', '1513830110', '2018-03-08 16:10:09', '2018-03-08 16:10:12', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('47d6e39b-62cc-46c1-9ecf-8d38f5ff7e85', '\\u4e09\\u7f8a', 'ophyRv85aazPZg20Iyed3X_JqDF8', 'o5O6DxCPv5RtB5sPaNAwTqwXqzpA', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/rqvn1hjHytcGEfdNXCc8X6TUz4dYDLxrgJUWNLasUT4BThTibjoR0twlbf8La6Vvz3IeSUzwUu0IpSvfk8IypHuNNQNslGMUT/132', '1', '1506134783', '2018-03-08 16:00:11', '2018-03-08 16:00:14', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('47f0553a-9e98-47ed-a11e-6550ee3527eb', '\\u63d0\\u62c9\\ue32e', 'ophyRvxcX0cVgQtiSUQPyzrrJEME', 'o5O6DxJn79adFQde_cDz8VZ9zXsQ', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/bakJJxHl9V7tticuqgVafw72yatmUqav2fj609324HibXhLUH9zywOrdoBzThKIv2tPicWWfiaH9eunzUcicOq9RJ7mHuFiaFvjE4C/132', '1', '1506066342', '2018-03-08 15:48:04', '2018-03-08 15:48:07', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('48e4faae-efc5-44e0-8b3f-021656704c3b', '\\u548c', 'ophyRvyoIZDHCXNa2TS3Ejc87LKw', 'o5O6DxKakzvKKM7zyO5NGMABpOIk', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq15VRWwhUUgIvqibFXgxBIiaT97mKicyibT3FC4WwjiaftgWW9icMShG6od6LyKwXSHqP990icPzq0TQu6FBpicuUhG5YXf/132', '1', '1506236509', '2018-03-08 15:46:32', '2018-03-08 15:46:35', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('49c530e4-8d1f-4320-82ec-80dbad65aa70', '\\u6dd1\\u513f', 'ophyRv4KIDyv9urvwvqPCru7FiX0', 'o5O6DxGyNrf2FTv91aGDpxCwChB0', null, '', '', '', '0', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpOjTOh8I4e43o0a7euLC6vxpibFicT6BpJNiaV78fB5TzX7Co310RTAxFDZYRnvG5rpc5kXacjpkVD6IGDACarwht6/132', '1', '1506236117', '2018-03-08 16:24:18', '2018-03-08 16:24:21', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('4a77568c-ddc8-4094-9bf0-27c41b6bf4b0', '\\u6015\\u662f\\u591a\\u4f59', 'ophyRvzlY_8L4PgCeRQj0DmNB1O8', 'o5O6DxOAdDragesCYBF1kSzqNCC8', null, '', '', '', '2', 'http://thirdwx.qlogo.cn/mmopen/Q3auHgzwzM6zToZp9etkOJvLF634Vxm3b52SDEtHv2AH73ibjefoJd3ZFicwECg2U47BuHPr8Fesics3Cq96JLekQ0IzBm1DWibwVS7k3W3kpKk/132', '1', '1520344183', '2018-03-08 15:46:39', '2018-03-08 15:46:42', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('4a7d4a7f-cac3-4733-b915-83be3e0d6b70', '\\u599e\\u599e\\u963f\\u59e8', 'ophyRv0AaoKZxkfoPiBy1mg2Pbz0', 'o5O6DxNzFxgH3pB2Hcptlo4pXRuk', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpMcDz3aspudje5zTCRbXV6cA41APE3TbibcnE6EzypwVaTNFh1yBaibPqvCejANCLMua0HdhSStNcQSoNfovHVKle/132', '1', '1515074546', '2018-03-08 15:55:28', '2018-03-08 15:55:31', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('4b3289fa-c8e8-4893-b89b-5da57855008f', '\\u5a\\u7a\\u7a\\u7a\\u7a\\u7a\\u2121', 'ophyRv_cjZAQkOhgfk-vNLjxmkbk', 'o5O6DxLFfMyNVhPum8_7hGMEcLeo', null, 'BT', 'Regina', '', '2', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvryQnquQc1CicdpQPTUAibCzCtBrvUW5lk1SNcLsHwdchy0f0Qw9pBWXr31icbAHatyA8tClWJicghDJCmNkw1kicRbZX/132', '1', '1502528618', '2018-03-08 15:49:14', '2018-03-08 15:49:16', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('4b6a99b9-2da9-48cb-9da0-44a433ff3a31', '\\u7cd6\\u5c0f\\u599e', 'ophyRv0sH8Ss0_LVsIRuy2-M8Tiw', 'o5O6DxIcsBHs7a8S8f5KEheoHCx0', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBaC56HcsrUlHHqM4DmUKPbSwavlC1tQIjEEeCz7wxUL8pF5gpWKclAWJXXejMUqSiaicOw5GDaMibKGaMcrTw0VtJBeeQL2B27FY/132', '1', '1506237806', '2018-03-08 16:00:18', '2018-03-08 16:00:21', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('4bbaaaf0-06c4-4c26-84b6-6e0981f00489', '\\u31\\u31\\u30\\u5e7f\\u544a\\u29\\u5ed6\\u4fca\\u82f1', 'ophyRv-Mn5PLmJEEquLjIrNYRa6A', 'o5O6DxEQxVoPQzcbeVxY3JsqjlX0', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvrzWoiaBOvBnS14eBPlY9DaNMpYz7GYn280xJlFIdhwIMQj08KpKTqwYicw4ticFFlXK4RbwcHgchRxnfhRp8QNEZMK/132', '1', '1516802732', '2018-03-08 15:46:24', '2018-03-08 15:46:28', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('4d1ffcac-bf2a-485e-b47c-329a33624389', '\\u6de4\\u9939\\u6d47\\u51ff\\u93fc\\u700f', 'ophyRv_5L9UeKQ__3lSoj7So4yLA', 'o5O6DxFd3xr6GWTrot7a_k6oqMRM', null, '中国', '河南', '焦作', '2', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq3Hgic0wf2FoGUU34zuVkcibGxmZgT04ghcS5zCq7I4dSoeOSEzsa0ibVibF1TTck3yBArcwDJuWUyUezNJTO3BWHSD/132', '1', '1520344169', '2018-03-08 16:16:06', '2018-03-08 16:16:08', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('4dcda9d5-9764-4e6c-a7e5-1bd2b8f7c044', '\\u65b0\\u51ac\\u590f\\u67f3\\u96c5\\u5f64', 'ophyRv7ak_v54kegaWE_u_YkiVSA', 'o5O6DxA8hLbVHgWh-UAEbNShAoY0', null, '中国', '湖南', '怀化', '2', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpNawC1UaYEiaticyyG4Zpt6wtDv1lbQVcUVZEjYbAUNLica1hPfxdSwPrZAsFFnk7hq0MW74FwVY3rgTqnBteY49zY/132', '1', '1520344174', '2018-03-08 16:08:34', '2018-03-08 16:08:37', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('4e7633b7-481c-4121-8f41-d9d6f3bc1371', '\\u5343\\u96c1\\u78a7\\u5f64\\u51dd\\u6d77', 'ophyRv02yh1M_MHywCBGUIC2efgY', 'o5O6DxGZdMshMGkK4gQ_ahX9Su80', null, '中国', '湖北', '潜江', '1', 'http://thirdwx.qlogo.cn/mmopen/ywAMlAnkjPibkYicicPpria0p934YzlaW0MxY03cZbdmDDUDZA55frIy39ZNuwTZehFic8SWlPickhz4xJUxJgPtln0tVicD4OiawaMf/132', '1', '1520344167', '2018-03-08 16:22:34', '2018-03-08 16:22:37', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('4e81cf31-30a5-49f2-972e-722ea6f941a2', '\\u65b0\\u6ce2\\u53c8\\u513f\\u5999\\u83e1', 'ophyRv6KOr-H03Wu3-1Mf4bMqL38', 'o5O6DxAxR-uTFvtWIuvvB7e6CvbY', null, '中国', '贵州', '黔西南', '2', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvrzWoiaBOvBnS1yJMKTYIbia6v34bWDdN77gsOKGibRh4VMP1atPeNPy7vJtSo02qPpoia4JbAy7fiaF8OQMNBzUxRSfK/132', '1', '1520344167', '2018-03-08 15:46:59', '2018-03-08 15:47:01', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('4ea1507e-1cb7-48e1-a975-e628b63239c4', '\\u832b\\u7136', 'ophyRv9I0ck_nrT_BxP36KusmASg', 'o5O6DxGasXDDT0wptkblQVNkER3A', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/rqvn1hjHytffJzNJYCqRKPct7X3lrdGkBAhr3Y7csrcQfv9qc7gkdHDtnamtSQ2NXlUxtibfSdib4AS5bku6iaGA5UM5ellkell/132', '1', '1506128831', '2018-03-08 15:50:41', '2018-03-08 15:50:44', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('4f744705-9b60-4c2c-87b7-195de5db1b2b', '\\u42\\u65\\u73\\u73\\u2e', 'ophyRv-7xpaI3jTbldpG_HpcYf1w', 'o5O6DxGL-JSXTWU16KHqAazOZ0cE', null, '所罗门群岛', '', '', '2', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpPl1JKEShU0oVkJWcre8ZxlX2y0uZcaYe4qHvQyDicibvVw89tfOpPjPd1IwB4TVkV2Gp4G94M5p2PELdAxXtzuIN/132', '1', '1513142884', '2018-03-08 16:13:19', '2018-03-08 16:13:22', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('4f8ee8a7-337a-47d4-8e31-e4fcc4626755', '\\u6728\\u6728', 'ophyRv1NVyKn32ciAQ4ztrzs4MdE', 'o5O6DxOs5LbH79RG4HBb_QKq3eVQ', null, '中国', '四川', '阿坝', '1', '', '1', '1506236033', '2018-03-08 16:09:24', '2018-03-08 16:09:27', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('4fa5d0b2-b815-4312-8204-6fb5dfd8b7b8', '\\u745e\\u745e\\u513f\\ud83d\\udcab', 'ophyRv3nthJtYk7xAL1t3bfqFWek', 'o5O6DxPIAfkWkoMV79liudS4oI8s', null, '', '', '', '2', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpNdwicX9JKQ4gVTwOP6sLdGahBQPtXSbUXI8Q8tGLjbYEh0rc2rJew09roq90NOtsJq65s616XicFRHT2rU8QTHvL/132', '1', '1506858546', '2018-03-08 15:52:39', '2018-03-08 15:52:42', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('4fb1c421-ecbb-4911-b0cc-c14f5142ce66', '\\u4d\\u55\\u54\\u51\\u4a\\u68\\u52\\u55', 'ophyRv3wjbG_athoZ55Rg133-zmY', 'o5O6DxCD5C3LIJyYumNVidtR4Qk4', null, '', '', '', '0', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpP008aEKJLv7KnFcOBIwo2c5fegwKsUITxic7OnRIU7k5NPS0Yh2SJHuq8Q30Mbic4ayq0pjIPY1LkkjIQwXCicJEw/132', '1', '1520344185', '2018-03-08 16:18:30', '2018-03-08 16:18:33', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('50db0346-57dd-4140-bde8-3f4b7905a2c6', '\\u71\\u6e\\u74\\u76\\u78\\u67', 'ophyRv0bHefzYYzTpEfoG-VP3aOM', 'o5O6DxLAWvFXvbp7gw8rUtm0DHSU', null, '', '', '', '1', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvryyTb8wSbmXJ0CUA8FgnIGo3kcicUAMcUeIYmoOtiak9vm7WKOpjWWicb8Nu6w1LVZLNo0c50283befh66vCG3jMzr/132', '1', '1520344164', '2018-03-08 16:11:27', '2018-03-08 16:11:29', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('50f735a9-7c07-46c8-a349-8d7870b67098', '\\u90d1\\u4f69\\u742a', 'ophyRv2IgR2Vzz-nGC_wSxnjHxw4', 'o5O6DxA6796zwI-0kUi3mtHM34pg', null, '', '', '', '2', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpMZeQ1F4iavv9ibaOpSN1lOAlgqiaxlt4S3xS4YET4BSqYucT6o36eN0LMYKeGeb03UFQ5aGtG1D55BAyhWrqLn9xG/132', '1', '1520344165', '2018-03-08 16:18:34', '2018-03-08 16:18:37', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('51011104-f41b-4b20-8c1a-332ce353addd', '\\u8822\\u8822\\u6b32\\u52a8', 'ophyRv6lpYxI007NUp8Cm1rrL6kA', 'o5O6DxJY445g_2CtVvMRiR8xJjIA', null, '', '', '', '2', 'http://thirdwx.qlogo.cn/mmopen/Q3auHgzwzM6N4dGNby1ibag5OL9lqt2HbGuWI6nbcZYsfYCcibQn2T0Ws7A6DLop9r8jRGwsZZic8NzT7yribQQalqqDo7xpHA6eqsIDQrLvCibM/132', '1', '1515506026', '2018-03-08 16:22:11', '2018-03-08 16:22:15', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('51231859-a111-4cd4-985b-8ada597cc8ee', '\\u77f3\\u5934', 'ophyRv-rjo6v73r-vfhZ_dE-jPms', 'o5O6DxBVRXh7r0mUy0SmMkti42_8', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/rqvn1hjHytcGEfdNXCc8X6IxOYKl2I4F9t3ahmB9nMuWQXiav9ZgXjl7jHfE2PU5WTYdM7amlJVSMeweluyUVribqFJg8CibThd/132', '1', '1506138390', '2018-03-08 16:21:01', '2018-03-08 16:21:04', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('5141d52e-76f0-4a5c-91cc-bd0a036f1525', '\\u73\\u75\\u6d\\u61\\u74\\u72\\u61', 'ophyRv8b-lv_vFTzTi_TFucTiVpU', 'o5O6DxM4U62uvky_O3JV4n2VdNrk', null, '中国', '四川', '巴中', '2', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq2M0PNiaOQKLCGWyyEImBXH5YwyFbRgyZPhxRtkXlAic3JPdheLXM7TUkXarSSZZpISclxGBsL1sTDXeNRYT992km/132', '1', '1516846020', '2018-03-08 16:21:34', '2018-03-08 16:21:37', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('5154ecc3-c39c-4666-acea-b1c88ac1eb04', '\\u7231\\u5403\\u9c7c\\u7684\\u732b', 'ophyRv1bnvHONAz7CyJSFGZ90QQk', 'o5O6DxHVWimneLYTctjU1bx5DeQA', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpPKynnRHiaGDrvIojATXicUh1ykuIltsUCbXibwbklj9KTYfk6CD8OGpIM3uGDk2iaYOxVjria1W14m9jnt1vy012f0A/132', '1', '1506221117', '2018-03-08 16:22:08', '2018-03-08 16:22:11', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('5175f9cf-c437-4ad8-a508-d9076a1d45bb', '\\u66\\u74\\u70\\u4e0d\\u4e0a\\u32\\u38\\u30\\u4e0d\\u9a91\\u65b0\\u85cf\\u7ebf', 'ophyRv3nG5MmrMjZj23oUUHyE-6Y', 'o5O6DxILTaog1BsaqXHuugSWAPuU', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvryQnquQc1Cicdr7xTvXvCSComkWcM4YZzica9ZmbOzdbHcqocLJIgOKJuTpxO7hVXvF1nfFeLEROOMibZFCMTFVfLd/132', '1', '1509026819', '2018-03-08 16:10:35', '2018-03-08 16:10:37', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('519c22c9-213a-49bd-91c1-1e642851a310', '\\u592a\\u8fc7\\u7a81\\u7136', 'ophyRv6HmBoCIy0yKgKoOPcXv-vg', 'o5O6DxIuZW6yQmPtl9ntBOBCZZtU', null, '中国', '黑龙江', '伊春', '2', 'http://thirdwx.qlogo.cn/mmopen/rqvn1hjHytcGEfdNXCc8X8RLOzhm3TzeVqiaCMTDTXSNe2Nxw0vbrWIrPGaydc4w8PBVp5ozIAavIVvsGKSZEkkg38FEWQ6IA/132', '1', '1520344215', '2018-03-08 16:20:33', '2018-03-08 16:20:36', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('51cc4784-32a1-410e-8c44-56f5658cbd5a', '\\u72ed\\u96e8', 'ophyRv58oYhySZIEXhoDT4Ey6Nvk', 'o5O6DxOLmTF_yReeepqXDu56-uk0', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpNpJhgTlBjQcGcXdkwicLhgGWua5jXN8ERwq4zCAtQDSUE2gict1Lic6GV9tfkF3hw5qceTeXJV8Qdtfy1yNdJJs5ib/132', '1', '1518702258', '2018-03-08 15:51:58', '2018-03-08 15:52:01', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('521874d2-84cb-4a04-8fb8-514d6b8f7a53', '\\u9093\\u654f', 'ophyRv1x4b7RE_t_I2EScrTN02g0', 'o5O6DxJEW9WzTk13nlHAwhdWaZmc', null, '中国', '四川', '成都', '0', 'http://thirdwx.qlogo.cn/mmopen/WxRGjFAMKuunMoJoRjKL1DAg8wx5zkP110wG1ExbImqemia19kibE3NTDiclUBuulcbj7eqGhdEQ0480jOX9Ccy1St0PahCAN0X/132', '1', '1510072452', '2018-03-08 16:06:18', '2018-03-08 16:06:20', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('52451a63-9b34-48c3-b8f3-3dd7b34a90a6', '\\u45\\u6c\\u65\\u6e\\u61\\u2e\\ue41c', 'ophyRv3RIBtls5fygENw36FlxAyY', 'o5O6DxPnQigd3blf69wvp7Of9TR8', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/PxBZlsowvicpEYWZpvARibJfwUpvaDC6UJondIKrZpSoLLQEpfVlYLdEEial5cBbgrFaQtm3SLp4gOMg5P1dnnmDuPxnRWtgfDK/132', '1', '1513849115', '2018-03-08 16:17:28', '2018-03-08 16:17:31', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('52485095-9359-4575-ada9-6fc28f6b898f', '\\u53e4\\u6708', 'ophyRvxgVRzk8DmWFhviRUHVbzpQ', 'o5O6DxDOtEk0dC4dPqrDlff58G6k', null, '安道尔', '', '', '1', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpNpJhgTlBjQcAtVtricH4ib0xNUO2VibjJBvWJqgQ4BSScibBPTaCgkfoGnWCYgQUOro95g72pg5HP9UE7pOibdwVAUia/132', '1', '1506734542', '2018-03-08 15:54:24', '2018-03-08 15:54:26', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('52869d2e-e4c4-4360-9327-e6b20634497f', '\\u5c71\\u5e\\u5b50', 'ophyRv_m-3cin8dQp7EPgdiUrPNo', 'o5O6DxNlP80L3naZcIladHMgU94M', null, '中国', '', '', '1', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvryQnquQc1CicdnQCdc4xDxnAaCp9fxs7nf9O3504wAbA2maAeRwSBcVYHIEH8sy8xqyNibQWy1LYxOueMh3liaBfia9/132', '1', '1518691963', '2018-03-08 16:14:03', '2018-03-08 16:14:06', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('528ef150-cf70-4a4a-9a58-5022cab1451e', '\\u6620\\u6613\\u6613\\u5de7\\u542b\\u5de7', 'ophyRv4OKCQGmuZJWB4s-NLjWcHI', 'o5O6DxMtjzw3RW1LF3GzbrSKAu3s', null, '中国', '北京', '朝阳', '2', 'http://thirdwx.qlogo.cn/mmopen/rqvn1hjHytcfAaqRVYYMn4XseKPW9cB1x3wMkJHEVnxoZlGBPZfVTI3gPDMHQajYQ43yRnXDJxI62rwgYD1ia4T1SPqGoFUMh/132', '1', '1515506017', '2018-03-08 15:52:27', '2018-03-08 15:52:30', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('5337e0cf-14cf-43f0-b1d8-979f7963e540', '\\ud83c\\udf52\\u7f28\\u513f', 'ophyRvyt8F6pS_JGIUETQTqOzPAE', 'o5O6DxLBpAYb7CuZ3bn0swnTzCD8', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq2qnYzLFqUFeRRylufuiaZrVCzibZ0qXj3kibyMjgicQV9gvcckusLfenu59da1lX7TlWb2Zh4DyicE9XMYWCqK03ThA/132', '1', '1513852308', '2018-03-08 16:01:51', '2018-03-08 16:01:54', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('5441c9ca-b177-41d2-8508-f2df1b2ff3aa', '\\u61\\u6e\\u67\\u6c\\u65', 'ophyRvyC9mg-eLuaDB2Fk2nulv6c', 'o5O6DxH1YVcDpJDKoV33xRwZ3bqw', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpNcIgHsF4e59Kia12LAorc0LyMUKP52WKm8icthfJaUqMpbjYeIFO153WY7TSueQticicHvHtMUTYEnCnOTyHKqgvqic/132', '1', '1513853139', '2018-03-08 15:47:43', '2018-03-08 15:47:46', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('54b5b576-0856-4906-b024-a24db6a2fb31', '\\u738b\\u672c\\u4e66', 'ophyRv6wsF0xe45FfdtIbBxmHr50', 'o5O6DxJp__JwWFXUO4Bta77PHVyE', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq1Q3UWFYEHcibLUZLyv9EJUAz0jyXqw5FNibGxj0icBsAWcDoFuIxfHsVJdpl5MJj7Eeic9T2IVRjCckU76KKu66AjI/132', '1', '1516489302', '2018-03-08 16:11:57', '2018-03-08 16:12:00', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('55365a4e-e381-4318-9b2c-7b15e7c34479', '\\u591c\\u3001\\u7a7a', 'ophyRvyVFou4j3--KZGCpNWmrePA', 'o5O6DxKKQjmO5PteQK9zDiQto9BQ', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq2qnYzLFqUFeVwUeFI26Fw86apdtlpicsWLOkbafBhbvy3ibxJ9qrvlsK2liaZGwvU8aPLAl9JxL6oTRk0XwsDBBpO/132', '1', '1506858399', '2018-03-08 15:52:31', '2018-03-08 15:52:34', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('5579952a-92df-4af4-b84a-0c8a7f586a19', '\\u71d5\\u5b50', 'ophyRv4r7VMKgFWq3Fj2CmQkJMfI', 'o5O6DxPPbMDrN0GtEZG6B5msVMec', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpON18oia3D5ZuYP8NTAJKRecpeNmMZ3dKXZo9z64pP9XuuxiaEb84Fia3uGgicbqe5by9QGQT3EIky1s1A4aBz6VaLb/132', '1', '1506232741', '2018-03-08 16:03:58', '2018-03-08 16:04:01', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('5680c44e-5273-40d7-91df-489d02a24992', '\\u4c\\u75\\u6f\\u52\\u6f\\u6e\\u67', 'ophyRv-VawyaF2IESu4ftisOvjCI', 'o5O6DxFAR_aS78CU1x4F6xgt1vb0', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq14KI3xp355UG7YmlseArjZytiaGgibbnlDzQE8SaQQb5b3BK8yUB3DtCHJbF9XofGAicwk9TT8WEpx2LlX1np2ftN/132', '1', '1506152112', '2018-03-08 16:04:33', '2018-03-08 16:04:36', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('56c022ba-9567-4fa7-97f5-69feae3e6d1b', '\\u5e99\\u91cc\\u90ce\\u4e2d', 'ophyRv4Wm2Pjf7i4bDyscdi2D34w', 'o5O6DxPYavdjAPAUjlm1rdGsxx4k', null, '中国', '湖北', '神农架', '2', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLA7jicXZcdxSkq9VyibjXibu1UJzLfsSJbqJHZBmxOKfHYLPPXWF3y8Z0qGic4m5DoHKYXjcdxDF50q1aUtZWmMJ9uzZZ803M5LbR4/132', '1', '1520344188', '2018-03-08 15:50:14', '2018-03-08 15:50:17', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('570ff9a2-58cc-4cf8-bdd6-b3994ef4e7a3', '\\u64\\u61\\u69\\u73\\u79', 'ophyRv8nOl4zjZKMSp-ZJRV4h16Y', 'o5O6DxI8q0782dqRtoOrpuW5LJmE', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/Q3auHgzwzM7pRS5crMRiaQibZ0fnb3DTr9sIEzKL8TiazLe5uE1hys7GfjM5QFneW3nRLvhORR0m9nvftsXA56udsTPAicNn23R4xpORPNlpiack/132', '1', '1506078020', '2018-03-08 15:49:43', '2018-03-08 15:49:46', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('57ad97e0-3076-4a0d-9049-d99d7736a8d2', '\\u4e\\u6f\\u64\\u61', 'ophyRv9bpqZQavT9OxeO86THaUWo', 'o5O6DxA0Zt-ZOBRmUNITfc_VPtpI', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq2JVibgHY6KjE4t9SVfOyXpzb5MQO3zNUzqBbE27ibOWh6cPjX7Ba0rgD3jqaDgicxmQnf89yIUBzpHiazwojvrVuZ4/132', '1', '1513852280', '2018-03-08 16:01:36', '2018-03-08 16:01:38', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('57b4c84d-9816-4333-9fed-10c68fc649e6', '\\u72\\u65\\u6b\\u6f\\u33', 'ophyRv7gh1_FWetVkUi3gg_FVQl0', 'o5O6DxBXyOkgm3H_PMY2EbtJlHAs', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/rqvn1hjHytfaB2v9bcNXIG8MDfnJ7o5QG4x2XtO9eQnmW06lESueHFlae0o6IPT47qWicx4DsORqBETFyC0ibGCuChME7KxH8d/132', '1', '1506857802', '2018-03-08 15:52:54', '2018-03-08 15:52:56', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('57e75b4a-9b67-4492-965f-f6912c8d5c16', '\\u90a2\\u6d69\\u6587', 'ophyRv26GgRqo1fdxhWDwanRdtfg', 'o5O6DxGv21ToH-FZ0niocWub3y_4', null, '中国', '北京', '朝阳', '1', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvrw9mffQkBLM94Y5fVnAWiap4q2HZnzrnR9ibEDygllfNSMZIucE0MvpI7ibok6ha6H9TeBhibsZ4lHlufEHpBuw7U1M/132', '1', '1506674700', '2018-03-08 15:53:02', '2018-03-08 15:53:05', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('57eae0f6-d34c-44bb-b990-f5fff418b420', '\\u4f0a\\u4eba\\u6194\\u60b4\\u3089', 'ophyRv-th9zsTsC0VL0M5YtOi5dE', 'o5O6DxDxg12CF2PpbmaX_dkR4WSI', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/Q3auHgzwzM4YEfBzIDFJw0A7sdpQaZ6wtqAl7ghcua1Sia9Tc2EUg3cdXlDku0hlth75ibFxeV2Q4ym6Gt6NSbP6OITdYDteqe60pqbbRuCrU/132', '1', '1506129689', '2018-03-08 15:50:59', '2018-03-08 15:51:02', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('58011cc4-35f1-4644-815f-18db2f574277', '\\u65e0\\u5fe7', 'ophyRv60gyemX4c0kIylg1hDHkDM', 'o5O6DxGPDNOTiOAYwCBEL7-522X4', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq15VRWwhUUgIjqicVWMh15AQU08Z7vdA34ibC5BA0252To0FLvLcBIKjMEVGrWRrcnTBq37ZCIqGOuhm5X31O4s5o/132', '1', '1506136090', '2018-03-08 15:47:10', '2018-03-08 15:47:13', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('58bea6fd-fa01-4075-9175-bbaa458f9b4a', '\\u6c\\u69\\u74\\u74\\u6c\\u65\\u6b\\u6f\\u61\\u6c\\u61\\u20\\u73b2', 'ophyRv10Sd0klJfNwqbmd0Tnx2dA', 'o5O6DxHCuPQ0tWyJGFbAPceMqfyg', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq20FecqapibXwhibCeiapN8qQGkMrlxmRKNtQWj3hcOT3vNncCjOPa6UYOJYictn019iaiawicCtvZmLbExhA1Wxvk5UyZ/132', '1', '1517389335', '2018-03-08 15:57:26', '2018-03-08 15:57:29', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('5930addf-cd93-40d7-8442-09be6c8b6f25', '\\u6d41\\u6c34\\u65e0\\u60c5', 'ophyRv7tUPsRKorCzI0Y3I1N71dg', 'o5O6DxM5rNvjiJgv9q8tCr7Ns_s4', null, '中国', '重庆', '奉节', '0', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvryQnquQc1Cicdsp2VcTsXdjiaX8ObjjTCUU1qYEFyyXTl1MACYa3YtjxJiccxbBciccd7ucdooV5ia6eOBo45SNjNydY/132', '1', '1506233255', '2018-03-08 15:57:00', '2018-03-08 15:57:03', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('5a484426-f52b-47a2-93aa-6dbcfa4c8488', '\\u597d\\u4eba\\u4e00\\u751f\\u5e73\\u5b89', 'ophyRv6REuGOzTuicIoPRkjavxfo', 'o5O6DxAqyXCl9OpXPaf26X4_ySgY', null, '中国', '四川', '成都', '0', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLA86w2oxZ2sUffVjichdSKnxAXggeYCdETaKIpITk3oOpJoWwu3Db8eKdeXib0Hib8aCoMWzGoXfribfsHrjatZ1ctJb1NKEHqhOuU/132', '1', '1506858185', '2018-03-08 16:06:35', '2018-03-08 16:06:38', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('5a5d071c-deca-4b5b-8f59-f68bc1cee5e6', '\\u831c\\u53\\u69\\u73\\u73\\u69', 'ophyRv0be6sajfm4w3Bho07dO5QE', 'o5O6DxEjlFN95RwJ_XWfaqTO5Aq4', null, '中国', '四川', '德阳', '2', 'http://thirdwx.qlogo.cn/mmopen/QBClTUlLpoNS5Bfx7LRsibvmMmwIo1bnDdd4oYONrOZlMEqovd4tibbj3zQWUS3Rwic4UP7JYqGYTTIr3b2E7O86GpLltW8Qwtg/132', '1', '1506233072', '2018-03-08 16:23:49', '2018-03-08 16:23:52', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('5adbb949-7340-4b4b-b62c-0160c833b550', '\\u6211\\u5c31\\u662f\\u592a\\u9633', 'ophyRv4Hfqe0F7Oqr15johPvgetc', 'o5O6DxNDHZtRNraNO1QvcCy0tB7c', null, '中国', '河南', '濮阳', '2', 'http://thirdwx.qlogo.cn/mmopen/rqvn1hjHyteXwchEdJoXLBKb3UV3ibNQqdPjwiaZhxdCL3wJM1aicugXZSa1xgdAms39ndyo5e8olE6QN6Kr5Mv9ibPLiaIWtQ1oS/132', '1', '1520344181', '2018-03-08 16:22:23', '2018-03-08 16:22:26', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('5b002805-2bb7-492e-8c71-067419bade2a', '\\u6d77\\u5e73\\u9762\\u5206\\u754c\\u7ebf', 'ophyRv1YvQgYJBQ0DHR7MiyZPhEE', 'o5O6DxNqIoDXoi-f2eEwXJc4i77U', null, '', '', '', '2', 'http://thirdwx.qlogo.cn/mmopen/rqvn1hjHytcfAaqRVYYMn0t9fPG1NX5DwoUic6VoicuCOT8cgfFHtcT09VpOSRjjwv7s4Mn10oa7sbVYrpRjj0gkRXG1KyNrlR/132', '1', '1520344194', '2018-03-08 16:11:01', '2018-03-08 16:11:03', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('5b3d94d2-3dda-4c38-90a3-5596e3e2ecf2', '\\u5411\\u9752\\u6625\\u656c\\u793c', 'ophyRv7Y7B3ruwGEbXPIzRN9TZ0E', 'o5O6DxB2H-UnaYSyML-D8S9VhQw4', null, '', '', '', '2', 'http://thirdwx.qlogo.cn/mmopen/s1TK4SnsSzAVAVysMIrel2LtFn8jTwLSklzHUJrg5B6ibnHlb4shyyhK1P5KJ5yPuXvdmQRjlMOuhZPvnDtibIffick05VfESOib/132', '1', '1515506028', '2018-03-08 16:15:43', '2018-03-08 16:15:46', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('5b8ddd5b-7660-4a32-ac6b-f56fcd2b0723', '\\u674e\\u9ad8', 'ophyRv3WnilT2yul-xvkY7t0qDtw', 'o5O6DxP4wtjvIB9SspxY5ugzZcIQ', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLDdnJIkTeaK1Tm884kdH9mHBBfV7UmtGnYfC1AuQjibGmibyL6wDkcc23Zwwg2Y5dOMWf9oP1EJ9yBQ/132', '1', '1520646906', '2018-03-10 09:55:07', '2018-03-10 09:55:08', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('5bd2f372-f611-4446-b9c8-b1360f47a0d4', '\\u43', 'ophyRv9Ax01WDArO-qgHoTPqgW4g', 'o5O6DxEGXEKRi56JIGZj5WAS-Guc', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/rqvn1hjHytfaB2v9bcNXIEEkpjXnV16EHlTyD7qmNyiafMhpP9DcEDQxSUmWs3ibydLJ3ZSjY0iagwoW7WoU6F0uIpsmQJDSzwT/132', '1', '1506233850', '2018-03-08 16:13:07', '2018-03-08 16:13:10', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('5be817c7-1e43-40ff-951f-5917345c7b4f', '\\u82b3\\u59d0', 'ophyRvwkTP66RSWlXfRpkI78z-do', 'o5O6DxNJxY-Gc-wrs1ziV1xv6jKU', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/PiajxSqBRaEIJqDpWvibqnhPrFibAfvEoE2JkGpbBJW2vl0WDDricmkO7UNncd3PcRWjfSljJ0hPUKLd99G74pianmA/132', '1', '1506135723', '2018-03-08 15:45:51', '2018-03-08 15:45:54', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('5bf81eb0-adbf-43e1-a8c2-65a8690cc632', '\\u8d35\\u8d35', 'ophyRv35_AX8tWzp2KsxrShZ_Jw4', 'o5O6DxK1iXz6lBeaCSvNaSkvkupg', null, '中国', '陕西', '西安', '2', 'http://thirdwx.qlogo.cn/mmopen/PiajxSqBRaELsXOMibosGfaLUxOuvH4aT6CRbZm5MInlxT7mLziaVDUqqBaMuyQqf5VmYEKmP3rbpRzZ7noiajnEfg/132', '1', '1520845134', '2018-03-12 16:58:55', '2018-03-12 16:58:56', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('5c089d3c-1569-466a-8224-e45607fd04d2', '\\u54\\u4f\\u4d\\ud83d\\udc2f\\u20\\u4c\\u45\\u4f\\ud83d\\udc34', 'ophyRv-qPrrTSZpy8HdApuSUzzZg', 'o5O6DxAVKttml7RBCd-sHdrMWW88', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvrzWoiaBOvBnS1xRwyKvVayficjlXmEfTHAUPdIDLQBWcXcs5wnJoiaeIK4dAG6oSrCUjIFnkXFbaKnm1698uMmNb9T/132', '1', '1513733902', '2018-03-08 15:48:35', '2018-03-08 15:48:38', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('5c3c0782-fa41-4eb1-aa21-40a359552e83', '\\u53f6\\u4f1f', 'ophyRv-xkF7CZYwD0UOUDQQO5lEU', 'o5O6DxKgYOlzC3T6TmqIgbJ3jZ00', null, '', '', '', '2', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBvqJIAokVrEiaJibBDkjqDAN9Oib84OuqLkDOfZWlbQua7OL7BRURrZ4MHibPiaibP5Q1hXwSCicib2iaNphXlyGcuVJJkzleW60jHMqcY/132', '1', '1520344161', '2018-03-08 16:22:30', '2018-03-08 16:22:33', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('5c4a56ca-0b3f-4637-a9a6-6cbd2bc41c3d', '\\u7231\\u505a\\u68a6\\u7684\\u732b\\uff5e\\ud83c\\udf6d\\ud83d\\ude18', 'ophyRv94udq-Pvpw_MDPlPcDnRMY', 'o5O6DxDe9Qzenz0azgdg_8K0fT14', null, '法国', '巴黎', '', '2', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq2qnYzLFqUFeVT1FWbUfNXxCaVfRPN21PLFV7fGaeen1mf3JCpJomia0fldlkRj5fuJpykzmsjZhLNl3Mib0xXjvw/132', '1', '1510063979', '2018-03-08 16:02:13', '2018-03-08 16:02:15', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('5c9dfd32-9c55-492e-9535-0169ebba8912', '\\u8f69\\u6237\\u7f62\\u7ef7\\u60f9\\u5b9b', 'ophyRv_9esAQXdID-0MIk-_5mjtQ', 'o5O6DxIl0srrJbxkyLXfGsPV4UiE', null, '中国', '黑龙江', '鹤岗', '2', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq0EYyicZFbSabBpccJgibzJuRLFZDCDbSd8te8TIGL3mymYCqxbHsJz0LzRrj9ibQyRdCTEBXu7qEzf90YpN046bsW/132', '1', '1520344174', '2018-03-08 16:05:25', '2018-03-08 16:05:28', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('5dd8c2be-cc38-415c-9a6d-1414ad7aaeb0', '\\u98de\\u54e5', 'ophyRvyUyYR0Klvn7_27tfyCGAqs', 'o5O6DxDKzpbgA3xSTTfwSDudl-C0', null, '中国', '四川', '攀枝花', '1', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvrxvUfjOYV2AQiaQ0FqYNCWFYp3RoHdJkD9ia7k9gB1yT3tR3BY2Cf9e3cYZ1f2LFSqEyEibwbTU3lNxIjfFabqia87R/132', '1', '1508300831', '2018-03-08 16:12:38', '2018-03-08 16:12:41', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('5e036077-ed1c-4a5b-9be7-d9ffd500de3a', '\\u64\\u6c\\u6a', 'ophyRv-hdCJ6V-DewdT8nGFhV4cU', 'o5O6DxHQw7_u4oDFdbJIXXY0-kvs', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq2I1ubMBicDVfkaicbDBSgfPabNy7CEBVZY9fJMZtiawklRSzhMuwKWILBBNia5ox0HMicGUgDskuEHtRQ/132', '1', '1509508442', '2018-03-08 15:48:24', '2018-03-08 15:48:26', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('5eb63aaf-fb18-4377-9a23-96717dde45de', '\\u79cb\\u98ce\\u843d\\u53f6\\ue119', 'ophyRv2zmsaeDectX3QkdR0Bimdg', 'o5O6DxOtaGMjvO-uyg8T2Yr95EnI', null, '', '', '', '2', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvrwTjIWt6HsBpFetzyUt9L9meouKrsSULHUWhVdiaytPsNXoiaoZ52JWPp9h69oPFUtzMibQXS3NIlbm7OWxUcMXyLE/132', '1', '1506858752', '2018-03-08 16:23:56', '2018-03-08 16:23:59', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('5f1d6148-3a3c-4adc-bb15-708c28fa9d5b', '\\u53\\u6f\\u70\\u68\\u69\\u65\\u5c48\\u7e', 'ophyRv2AVcZYAZ_HYpyqf531RNNw', 'o5O6DxHqDixhwH2whYDMMT2pmN_8', null, '中国', '四川', '', '2', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpON18oia3D5ZuU8sdadqlcNEMcWodXU87z8w0Dk85MRUoVia6Ov6U9jGPiaExmfKiaCuLOyY4TMGBoiaN0eS3ufWhHtM/132', '1', '1506078337', '2018-03-08 16:05:28', '2018-03-08 16:05:31', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('5f5bf66b-c7a6-462a-93f2-6b47b3066061', '\\u964c', 'ophyRv3UnP5_sTa0J-v3w3DvxHOU', 'o5O6DxH2d-6zxXB9l4vw3LYPqXus', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq2qnYzLFqUFechiaaibRPXte2ayZzfV2icPbPa6Tzkb7MPzcjOfhITmBNKm2T3JUInU0DTcCGyPIibgj4xwCib3asibp3/132', '1', '1506217485', '2018-03-08 16:22:15', '2018-03-08 16:22:18', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('600f229d-cb12-455f-8767-0fc3201974ae', '\\u8d60\\u6211\\u7a7a\\u6b22\\u559c', 'ophyRv5IxuK2tfYNyP-KPAd042J0', 'o5O6DxCM4-x_XSc9OfZf9FOrixfw', null, '', '', '', '2', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvrzE3ETHSBclpwgKlzz3adTP6AA7jHibDNuWzz5E0rRS6sGQPo6vs5bE6OrvnO8Z0hJibNAFJmYrPgCfcBS8xhUpia7/132', '1', '1515506028', '2018-03-08 16:06:39', '2018-03-08 16:06:42', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('602d9536-3741-404f-879c-fac7b1c72913', '\\u6c35', 'ophyRvzUpBpUOXKa-0Nddk9WgHos', 'o5O6DxMKDl-m7csMPuTAHxwTuDRg', null, '哥伦比亚', '', '', '1', 'http://thirdwx.qlogo.cn/mmopen/r4BOBs4FTDicbRNzdApeLr7Wo6iaAOC0cibqOibqmdlwcjJRJXUEL18My34sNGaobtNoRVt9s3W1AuWvVadajmbiaQjsTS3wahGKK/132', '1', '1515066402', '2018-03-08 16:12:53', '2018-03-08 16:12:56', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('603ee110-09eb-4e98-8c53-81681d01b5cd', '\\u601c\\u5bd2\\u4ee3\\u73ca\\u5e7c\\u67cf', 'ophyRvyKYNAfdoeTSr667WnxMWjQ', 'o5O6DxOE3SVcpFrq2nc1iUb6H9-Q', null, '中国', '重庆', '垫江', '2', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpOuQknnrax2fZtsPhE9AYCK53fBFj1jDNwOkPGGriaWa3L4HrcWnN6qReLQsJRUwQEFJIxpsFj1Q20NiczUv67R8J/132', '1', '1520344167', '2018-03-08 16:15:08', '2018-03-08 16:15:11', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('6055bb21-aa71-4836-b000-e546c740e97e', '\\u7a10\\u630d\\u91c4\\u9002\\u6253\\u5c84', 'ophyRv8yGdGx0R7CRlbMgiS3nXLY', 'o5O6DxCKfMpobKlucZgvZMqsmMoc', null, '中国', '北京', '朝阳', '1', 'http://thirdwx.qlogo.cn/mmopen/Q3auHgzwzM6zToZp9etkOJvLF634Vxm3IucWib4OwicraRvFJmjrvu9ySiav9MR0mjicRqPX9Z34JPDlKvj0BdvPPUcWXpEmznaKPAyuDq3rK7k/132', '1', '1520344170', '2018-03-08 15:45:25', '2018-03-08 15:45:28', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('607f2bf1-05ce-481c-be1b-cb32c9b2e8cc', '\\u6cdb\\u6ee5', 'ophyRv3mMVn9ZRhzhDzaKyGCRq_s', 'o5O6DxNrY9f2GfZ6P8MBWWMyZ8zQ', null, '', '', '', '1', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpNONXkPJNIlYEib0uicYqCIydW3E5MjIAL13FYD5w93TucdMHoUIG98udG1qO9ichKL7iaTDVHmPHp9nGeRXa7JibeXB/132', '1', '1520344170', '2018-03-08 16:10:56', '2018-03-08 16:11:00', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('622633b4-74e1-4644-9735-c326eaaaf908', '\\u7379\\u6d83\\u7182', 'ophyRv7jTbO_pV_nvwBs6Xrf5tD4', 'o5O6DxNavpT1Jt07kQqs48qZs3Zk', null, '', '', '', '1', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpPlRUyl9EYmnBffBAvonlEymJnN8eqfZJYKhEomlugsBWXvhmAziab3iabAyye7jicjdlLLibfDXaFKxwGRFByNWqLk/132', '1', '1520344234', '2018-03-08 15:56:30', '2018-03-08 15:56:33', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('6242ba1f-8d33-47fd-ba30-4ecc8d646928', '\\u54ed\\u6ca1\\u7528', 'ophyRv527DVD4UiAgeOfRSdzoqbY', 'o5O6DxLrTmhDUhigDmzoucKI2OC0', null, '中国', '湖南', '岳阳', '2', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLDhSiboK3e4icWbjOsZqRKju1rz37cxQYDSiatZnI6cu650FDsraDoaRaykUZFSDgXiccWoOojXwk43CbrLkAoaxmJGgicm0icU513oo/132', '1', '1520344181', '2018-03-08 16:21:57', '2018-03-08 16:22:00', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('62a7650e-76da-4b30-8902-d0bea3ce8547', '\\u975e\\u60a8\\u83ab\\u5c5e', 'ophyRv9WCqUTachE0hUIplIRWPIM', 'o5O6DxLGN4dbpnGIJpFTH7Xegzl8', null, '中国香港', '深水埗区', '', '1', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq2ka9csZ2TH7mlgVJf102l2iccKv0N8NIexciaXLdaaxOoVTxsZu6nIrd1Z6G3iacrhL6u44UrYcQ2wEOKEB71Sy6I/132', '1', '1506132581', '2018-03-08 15:57:12', '2018-03-08 15:57:15', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('63272161-0ca8-4dbc-8810-c708d185488d', '\\u5a\\u6f\\u65\\u20\\u5a\\u6f\\u75', 'ophyRv4R5sLNSu38DUPirk5gRQkQ', 'o5O6DxOQM-GAfP-l6vSCtkssWNxQ', null, '', '', '', '2', 'http://thirdwx.qlogo.cn/mmopen/rqvn1hjHytcHWYSMmnqKbJFSltbS3fIcHqmcony2FUxq06MpbUolKLsI7Xqd7egm0UoEB0RIwOukD5vJtEjlJyLn1EjnibPlz/132', '1', '1506229019', '2018-03-08 15:49:57', '2018-03-08 15:50:00', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('6365c3db-cdce-43da-be01-42a432a00eb6', '\\u5de6\\u5de6', 'ophyRv9-Co8o6dK4uiNHsiCpYf4U', 'o5O6DxO03tWIQzC9D56r_4Oqz7v8', null, '', '', '', '0', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvrzR1l0pVyzYf9xt82m2MficLWpiaHCcJ3XgPeJp56g9pYtYOV1nlcOBHrHt0iaUo7viayESR5iaOuLgic8Kf4Blja6mSt/132', '1', '1512628032', '2018-03-08 15:58:14', '2018-03-08 15:58:17', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('63d88a47-7a1f-4654-b245-07f85261f967', '\\u951f\\u706c\\ud83d\\udca6', 'ophyRvzyK6rcM6zAqoDgQxFAUZW8', 'o5O6DxNJs9fgmZeVSboghv3TAJxU', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq380gPBjAkOmalbwRWicPB7XG20KicEliaszPN9zL6icLqe4ca0dDpk14zYiafu5zrNMpJE0kQc2EcSGqoESCGfyFZsO/132', '1', '1513244534', '2018-03-08 16:01:06', '2018-03-08 16:01:10', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('64d03627-b9c5-4127-a630-2a74fd08c8d8', '\\u76fc\\u5de7\\u5143\\u73ca\\u5e7c\\u65cb', 'ophyRvy56FSB1ebUttaCwrwwgPLk', 'o5O6DxA5eNFlyP7jenVrOJF7rgzw', null, '中国', '安徽', '亳州', '1', 'http://thirdwx.qlogo.cn/mmopen/enIJ562fzCia5CRafhkHbR4Xnia4rKbXP1KxaRUJ0LM8xStRBL9XCUCviatE7Wlx6GnopYxYmTXVHVPPh1HrVg7FKrweKibAR6wT/132', '1', '1520344171', '2018-03-08 16:12:30', '2018-03-08 16:12:33', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('6561cd61-a279-4c8b-95d6-789ce300e438', '\\u838e\\ud83d\\udc96\\u838e', 'ophyRv8YvfvtYaXXmUN-rf2CpQ10', 'o5O6DxLxt0mwimP-N1_79418G9wA', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpMP3sXAXQ7ibGLnHbtElRgkP69sndlnVgySVjyvrJQVg0iclXY3sYfHoHfTb6A6qJYzEFZichPZOHErbPzClNZNrox/132', '1', '1506139697', '2018-03-08 16:23:23', '2018-03-08 16:23:26', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('65791e31-0f0c-4f0b-a8f9-4a5da9be0a1f', '\\u6768\\u4e30\\u7e41', 'ophyRv98_7l_snfOjd0znbqiuQN8', 'o5O6DxCpufmB_Y1beU1FairQXeCc', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvrzE3ETHSBclpzZVSDuBriagVPx1n5du83cb6Vibetnf4pH83TqXpegvZGGIxu88Fuf7tqCpuQZjpBxQicxcwAHxkwd/132', '1', '1506818222', '2018-03-08 16:02:46', '2018-03-08 16:02:49', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('65b11855-f067-42a3-8a75-20da529aad76', '\\u6eaa\\u6708\\u5012\\u60ac', 'ophyRv70g2RGrVSs4Qad6RJPvYso', 'o5O6DxKg3t8bQreoIDc-fW76RZiM', null, '', '', '', '2', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq1kZRRX42qAL7icHUyztTF41Tb6ck6VhbnTQh3RTayDF2g4Dk72jymAzem6ZaJr5IcoPX8HiaBJ3GH30xnZicVfpoD/132', '1', '1520344168', '2018-03-08 16:21:12', '2018-03-08 16:21:15', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('65d8bab1-cb81-4a7a-a704-1104cfdbf25d', '\\u571f\\u8c46', 'ophyRv4lCphZN9Ij6iFNSEkUTsds', 'o5O6DxFXpvm4SeK91ANxj37rOPGA', null, '', '', '', '0', 'http://thirdwx.qlogo.cn/mmopen/NDVpu0Yn5C3AUvgfNur7Edd9FvF51uZuY8FdXuERAy6IApQTa9dJHOHY6CNqvH7gd9V83ZqJayG5t6VDhnX6QvxXXO7PLx6f/132', '1', '1516024972', '2018-03-08 16:19:55', '2018-03-08 16:19:58', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('66c583a5-c02c-4604-a4b1-0b4d71254b3a', '\\u53ee\\u5f53\\u4e86\\u4e2a\\u55b5', 'ophyRv7rRyOKh21yubLlr_9v3zlg', 'o5O6DxAUjV5l2hs53WfpcQzieC5Q', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvrxbCNU3ox0PCbXwMyPPKvm7bzib1fxouzUco9bfT23RgU5FgI7Ld5whn3XSxMO0BLfwn9rI9Ye0ib0jexca1lHOTQ/132', '1', '1512365348', '2018-03-08 15:58:10', '2018-03-08 15:58:13', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('6715595c-273a-420e-9d39-cea50d9f545c', '\\u5fc3\\u80cc\\u53db', 'ophyRv2tzuHIx5iQFY8Peg4c3mqM', 'o5O6DxITMjfjbeWpFFoR2ACSQfMI', null, '', '', '', '1', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpM6duX90F2gIbwsDRUCCCr4NMhdNQg9HSxeg8qGhuLxSz2V0ibVHGTHC7JPLibib3elpFrZceAS3BfvZPX0an7YV9s/132', '1', '1520344220', '2018-03-08 15:55:16', '2018-03-08 15:55:19', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('67db2377-5e8b-402e-b810-af92cdd77fc6', '\\u62f0\\u8914\\u7065\\u9e9e\\u92f2\\u7da0', 'ophyRv17YIUeeD2TB39FmK2aaPE4', 'o5O6DxJIMogSLI13L7HaqonRtQk4', null, '中国', '贵州', '毕节', '2', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpOlW3Tavm8DCuJoJL2jbIucNBZN8NJt9qBYrYE5fxGsic5zgLBPz8MoGBl9qIEPYuH5SLz45pNKVbKbjDs6icD4Cm/132', '1', '1520344169', '2018-03-08 16:19:19', '2018-03-08 16:19:22', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('683680bf-e04e-4d45-9d1b-902c2dd855af', '\\u7231\\u8001\\u864e', 'ophyRv4RVkUMTvCyo15JCjuODJFc', 'o5O6DxG2-jStSL5PPmk11d8zGq60', null, '中国', '海南', '文昌', '1', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvrwgmqzlcox0aNKaWX9jfmfWXicibEFgh2eBs4nktQlYLuE9Aou5dgPxN72TW1RcibKPAGcYgH7f3oK6B9tibeJaZBgib/132', '1', '1515506018', '2018-03-08 16:24:30', '2018-03-08 16:24:33', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('684f6a23-3d75-403d-b143-e484931eef97', '\\u674e\\u5180\\uff08\\u7476\\u4e4b\\u65c5\\uff09', 'ophyRv29LntpTlJJMaCbziVtYmec', 'o5O6DxHLkgINRflyeRizTfd2eVAk', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq3CnA1Fo5Jo7AUYS9DX2gX6y8vuicGrLF1NFcjmIicNIqN2Ghy2dOMywScbUvCJ0axsa4QHj0Ucswhx1x9RiaNlN1l/132', '1', '1520658979', '2018-03-10 13:16:20', '2018-03-10 13:16:21', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('6865ff53-8a31-4ec5-86da-720d991b1a7c', '\\u9526\\u751f', 'ophyRv8_YkOC4T3dvJZLeCmFQoc4', 'o5O6DxDjMqxzLOVLMInkF3f1Xv1g', null, '', '', '', '0', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpNbpsGfIXwFtIvKH431yf0bp9LUrw8vRibr8Hnu8u12eiaP7G0S80OiatXTXZItibIc9xoetc0RfC01bp0AFjAD0I1Q/132', '1', '1506235958', '2018-03-08 16:00:48', '2018-03-08 16:00:51', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('68897f17-1bad-496d-b517-941001ee6a30', '\\u674e\\u9526', 'ophyRv2KgVYVuEXl2c5CUgVicGVk', 'o5O6DxCaH3lL2UlIiF2yPS26ds1k', null, '中国', '四川', '成都', '0', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq3ibzHDwtZZwichz1FxCOQnDpU9r7rKqZJwp6wuxQxwdRIN6u3cary1S9KlbiaO78PVAR8iaxyR6qOnfrF3EleE7HOn/132', '1', '1506264522', '2018-03-08 15:55:31', '2018-03-08 15:55:34', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('689b9a25-829f-4f2b-b694-9fd999e9c6d5', '\\u538b\\u529b\\u4e8b\\u591a\\u5f97', 'ophyRv6fyWFqRt0-3yWli1PENXX8', 'o5O6DxPaqX9c5_qQ0d831FIuPPYA', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/rqvn1hjHytdbRYRIRmqfRk5X0MQvpsJbBhU6Knb0zQHVialLxFEaqLU0dxFAxOwkzSHjv4Xe1N6NUDl9WSKSPgFalx9DWcs9t/132', '1', '1514426114', '2018-03-08 15:50:18', '2018-03-08 15:50:21', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('69214ac3-0ee4-4b0a-907f-0d1fd35da8b6', '\\u674e\\u5929\\u9f50', 'ophyRvwVXnOEeYJxBG8Hi2-k35gE', 'o5O6DxP1LgGdvZQNsGxROSBNU5yU', null, '中国', '吉林', '吉林', '1', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpPjOia5iaY4zQ2FOBqSWcS54B2Tv3h6UApCqmYibl9upoCmQBBbbRKGSUplDY6PgHzOAK0rrxIwYs5zofYFfC7aNtO/132', '1', '1515067183', '2018-03-08 15:58:33', '2018-03-08 15:58:36', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('69b0b395-32cd-42d9-9b0c-9956733f1812', '\\u96e8\\u540e\\u9633\\u5149', 'ophyRv3PKTGhs-kgL22yb-xMV5Pc', 'o5O6DxBOafMZ7CbcjXIvioT8jMuc', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvrxjJ9kAvwG3gqkWy284Ke650q1diatLrP8aHnuryVhW7vFvcuYibS7Ky2IInkgxZLMTG0OGMs1FKHlgVcMNiaZq3sd/132', '0', '1506857992', '2018-03-08 16:21:53', '2018-03-08 16:21:56', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('69b723f4-9578-43c9-97ea-aeeb47ea4bfd', '\\u672a\\u4ea1', 'ophyRvzzrPMM9YPOl8yPPrn8T0o0', 'o5O6DxP6oLZW0JtNUtuiKn7qlgmg', null, '', '', '', '1', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpNbpsGfIXwFtCmoxAtfnAjopghsmduQicwcdouJwsFxBAYfbqZXu9YSA5wP9O440Aa3Zs9T2ZxObkhvAQ6LlxVvia/132', '1', '1520344174', '2018-03-08 15:51:22', '2018-03-08 15:51:25', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('6a301282-fef0-4058-9731-bd0ab63e8d2d', '\\u6625\\u6625', 'ophyRv2N3mhLngbqynZLsOaLVJNE', 'o5O6DxK1-TAvj27ISOH_pCPaX2lY', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/bakJJxHl9V7tticuqgVafwy9IEdqcmibUY0Dias8fKUfGTyIQn0KiaicliaibCxZtBnZoDTv540qHSO7Sia2AG5KnHMzVa5FWICPbfUR/132', '1', '1506220417', '2018-03-08 15:46:21', '2018-03-08 15:46:24', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('6a9f8534-7251-476c-a028-b789fe9d3092', '\\u674e\\u5c0f\\u9f99', 'ophyRv76AOpMzISqX_rGsR2HntxA', 'o5O6DxNIztELnWGuBXe2wPfXTjNI', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvrxV9PtqUqibccyhrGSVSWN7DtqkX5ZWuqNRny7be5wU7nJV2KYjuw1qtGO5RFVc4sISXGb9j0lyJEfI6VlxwLu5e/132', '1', '1514174366', '2018-03-08 16:02:42', '2018-03-08 16:02:45', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('6ac532d5-c5dd-4c00-9b24-83f923cc3450', '\\u72ec\\u51ed\\u680f', 'ophyRv3MoRlQkLzE-ebnIrBJend0', 'o5O6DxPD-tqdpFjE3qGQY7VHeJY4', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/rqvn1hjHytfaB2v9bcNXIIjMIzGCPHEJPuTuicMfrytTMIHTHvyzic3u0ia1Jr2yTrfZH4DLJrUwzbPKPicyGA9zJaSeeGyNjYia0/132', '1', '1506222959', '2018-03-08 16:03:51', '2018-03-08 16:03:54', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('6b043dd3-5a30-4268-89e0-4770aab16445', '\\ud83d\\udc3e\\ud83d\\udc39\\u674e\\u20\\u6587\\u20\\ud83c\\udf6d\\ud83c\\udf6c\\ud83c\\udf61', 'ophyRvy21wQyvew_zpg9mkOS9w1s', 'o5O6DxATKdtgV3tWZJNIlFfsPQoE', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpP8rLawoB7HTPBcibz3lcaEQbT5sdicz2jBqPxpHicJbugIEvd3ZE3toCuz9W9Iv0FoXsM14vichxMQpiad1t2ze3Fg6/132', '1', '1506235608', '2018-03-08 16:00:07', '2018-03-08 16:00:10', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('6b65c676-863c-4191-a62f-29f87ddc9a28', '\\u5df4\\u5154', 'ophyRvxMTt8ME0GAuSa8cE-RXN3s', 'o5O6DxJUSi8WlDy3Ut7Ga72G1K1E', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/rqvn1hjHytdB6ypxntvKDcxdT4GjUofkUwT4aCsibjYVzwoL4JYZITc6eOgEImoVIXianpYUewmSDxyN1YLw1A6CYHCCRe7gN5/132', '1', '1509499488', '2018-03-08 16:15:11', '2018-03-08 16:15:14', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('6bf35d63-cb15-42ea-b6ab-96940913a3dc', '\\u6570\\u636e\\u4e3a\\u7a7a', 'ophyRv1dFwNOwdlClyriQK1yAzKs', 'o5O6DxO6XVP11on5nedWNoX7DWyI', null, '中国', '湖北', '宜昌', '2', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpMhlmr8EP9t9UYiaLpWWzm4SspqtVOaQ2ZEMQlTNCBcsesbriawB5sJK06IphtXz8cHXydibryCVN6ib06ib3HGd0P9b/132', '1', '1515506018', '2018-03-08 16:18:20', '2018-03-08 16:18:23', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('6d6849cf-af5e-44e2-9e72-74eb56ab278c', '\\u7ed3\\u675f\\u6211', 'ophyRv2KJcqwAgaNz1uA7Y7VEmLo', 'o5O6DxN2y7jowCppDYiJdLz2B1V4', null, '中国', '江西', '新余', '1', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq1jkvGE9iaKCOiaJ9BYxSib18ZiaxpIPK7A7vk9OPS4hV7HiaEdRuGSwVFpcDkwIxfggXZiatIkiaLD34YMuYp1aXOzYha/132', '1', '1520344223', '2018-03-08 16:09:57', '2018-03-08 16:10:00', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('6d6b0864-a209-4c75-8737-587432defefa', '\\u9f99\\u7131', 'ophyRvyQqdSCN5wacMuQcWei6zjE', 'o5O6DxEeewDQCIYZ0l_tId8CPXEw', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/lyIdYe641MGwGByOuHw0p5hrpD9nia0iaxSZbCrKcfwJ9MjPfxeD0DHKM277SIFcjsjABB3f6Iv3M9dia6aRADficWGGUibykNmRz/132', '1', '1506236319', '2018-03-08 16:16:13', '2018-03-08 16:16:16', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('6ddd4f80-bb78-414a-a481-861d1b1e8ddb', '\\u46\\u42\\u36\\u36', 'ophyRvzDYJUwQLvmO_-RkRzCnbEI', 'o5O6DxNBbnLbBC4ONEAWEHX-DAO8', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/LdVkvtujCTCADrGTocLUibLkkS6FkjDibiaUzNgIJyu1G83HUiarVzUQ6RC0qJZDiaYoUASzqpvoYYoZMMAI0rPVSe6mAkZPQsTGn/132', '1', '1516600601', '2018-03-08 16:01:47', '2018-03-08 16:01:50', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('6e7d5051-cc37-4bad-b928-3ecc81f6c74e', '\\u5ecf\\u5f77\\u5529\\u8387\\u5d71\\u8320', 'ophyRv6V9AwaU3Xm6l-AOPMc_R1Q', 'o5O6DxO3aJVjrEMi8kkYeJw0_m7Y', null, '中国', '重庆', '巴南', '1', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvrxcqLhWcy7y8ib0b1Vuc7MV2HlGlEgeNmnNHWTdHjFMvktkkPiaksqqu87yG4c5lJCeMhoLg6t3WDNiaUYvOg407AZ/132', '1', '1520344169', '2018-03-08 15:55:12', '2018-03-08 15:55:15', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('6e927950-1d15-423e-b952-374e203c6081', '\\u6c11\\u751f\\u5404\\u6709\\u6240\\u4e50\\u516e', 'ophyRvzX9DqigePrcj8RqoFGWs9o', 'o5O6DxG3Zn1lD2ivMGtVZx-pFDKI', null, '智利', '', '', '1', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpOCuTvj9Jice84TgNFzvH1NPBGqicavQzIFkfoqcb6Sqx9kR6LXeZEDBEx1lkzanzHuX70RoEftbmwg/132', '1', '1506146964', '2018-03-08 15:47:02', '2018-03-08 15:47:05', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('6e99fb8a-1071-4404-b8d2-6e4adfe61dd8', '\\u5468\\u8389', 'ophyRv2nEORp4-kT1mfy-IXC9MJs', 'o5O6DxFywBnVwV5z98PZMpn2RRIs', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/Q3auHgzwzM6zToZp9etkOJvLF634Vxm3g1b6Daic7yQvDeibR6Zf0j79NLcV8Yz1kddkdaMGGdiaqnlTPDfnqByMN5fvqibWHwsWDOLhPSqKPug/132', '1', '1510133461', '2018-03-08 15:47:50', '2018-03-08 15:47:53', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('6fe4d8b9-42be-4145-bd59-f85a233fb442', '\\u56fd\\u571f\\u5c40\\u53d1\\u8fc7\\u8d27', 'ophyRv44W5Pnz01ZTAOYkN2ifPck', 'o5O6DxDeCUV2Ruray3oHQk7DVGc8', null, 'CA', 'Manitoba', 'Portage la Prairie', '1', 'http://thirdwx.qlogo.cn/mmopen/rqvn1hjHytclZx07nodZ3nma7eXEGraca0QhB0wLZcMncJYhpnfR9ekyTHhTMdpvBwecvrCkt1J5vnWSVzPxF7uJwWT3Gh12/132', '1', '1515506019', '2018-03-08 16:18:24', '2018-03-08 16:18:26', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('7002b307-b969-49a0-8c34-06d15197f665', '\\u86d0\\u86d0', 'ophyRv_w8bQUnbeGZLHgEmk0FswU', 'o5O6DxLWoXiYYrSCmFBXIO5ZrjYk', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/Q3auHgzwzM5L5xXgT7TDKBOyXxTwSFf132HaFUW0XFhpjqvce7mETheVNPTfjhDIXib2RLJkwsDbJ4N7aKibXic4wib8WXbqlzRdk0CduZ9SYXc/132', '1', '1512627972', '2018-03-08 16:06:53', '2018-03-08 16:06:56', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('703d99bc-7724-4798-981a-dae1dd736289', '\\u897f\\u884c\\u7684\\u8fbe\\u897f', 'ophyRv1LPAGuDkwRm4JYxsNluL94', 'o5O6DxPHQtGLO18IUjamKae4vjEg', null, '', '', '', '0', '', '1', '1516859503', '2018-03-08 16:13:00', '2018-03-08 16:13:03', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('720168ef-d4db-4679-aae0-7ef24004dc2e', '\\u522b\\u50bb\\u4e86', 'ophyRv9KwY9G-sIPe1y3yU6HgwEk', 'o5O6DxEKJAqTbYvkJ45PUVC3pNT0', null, '', '', '', '2', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvrzWoiaBOvBnS13Wia31iaoiap3nDomiaYXIx4NuFBw76KlYmQ9ocibAibB3EzSdPeOVqlehShGTsvvBL8upb82GoM3EpRR/132', '1', '1520344176', '2018-03-08 15:46:28', '2018-03-08 15:46:31', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('73740e32-8442-4954-a1a4-77ffb8b58dcc', '\\u6ee1\\u987e\\u8fbe', 'ophyRv_1Yw1zWPxusFEGZX3ffRiM', 'o5O6DxN1Bk3SqC3PMGDw7uHBnHs8', null, '阿尔及利亚', '', '', '1', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvrwjQAQaWRcU3nk32UVyul8KvbgTnwTuTLaj6CIZEnehIIKwWP4tmWggToLeuMEPFAjX7oD2JCwJaFHUakGM6Uug/132', '1', '1520344169', '2018-03-08 16:12:01', '2018-03-08 16:12:04', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('746a4fad-1da1-4297-bffe-e4291b978a9f', '\\u96ea\\u6885', 'ophyRv4KTvYQbi7mo0bWOMY3461E', 'o5O6DxDQD5CzNB7prCY9ywLdzrvY', null, '中国', '四川', '乐山', '2', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpPjOia5iaY4zQ2GcfLOXibUCQcB5NkN81JTiaJDjw1icyN4D4HcxrPaMQCIFzb5IHl2IXv4HWbdm5nibG23DD3PI0aygf/132', '1', '1508651498', '2018-03-08 16:11:08', '2018-03-08 16:11:11', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('7532ca43-59e9-471a-9dea-717248e31cf5', '\\u8290\\u9b88\\u92da\\u6be6\\u616f\\u80d6', 'ophyRv1j_B1NWcfBBKwrDQccvv0M', 'o5O6DxDh_Bl8w8Cjv4A_ewof_B04', null, '中国', '贵州', '六盘水', '2', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq3WG5BdNMaHOuVjNxQocg6y96JA5OczhF3YPK8JEseM3DgC3YmeMBic4YlFLLcSicIG8KWVgvs31KwjcOiauTITurf/132', '1', '1520344171', '2018-03-08 16:03:11', '2018-03-08 16:03:14', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('753d9001-69a7-4e22-a043-992a9715dc3f', '\\u918b\\u61e6\\u5bfb\\u8d24\\u6dd1\\u634d', 'ophyRv82tHvm3pULFMRJ4andEtXM', 'o5O6DxMa42HC4R124vWCg0iII4tY', null, '中国', '河北', '秦皇岛', '2', '', '1', '1520344235', '2018-03-08 15:59:13', '2018-03-08 15:59:16', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('757cd12e-3a20-4b8c-8aeb-43f6787bd744', '\\u5b69\\u5b50\\u4ed6\\u7238\\u706c', 'ophyRv9o9MJyjv8T5DdDKdrnqndA', 'o5O6DxBWkzMPrW07cgNTQdmG91VA', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/Q3auHgzwzM6DJjAZlLw2ruHT6QOo3LznhEccRVPHgSLmTo602ibAB4R30tRmHVickf99iaRAbibZlkK8deW8cHbdqQ/132', '1', '1506230265', '2018-03-08 15:47:32', '2018-03-08 15:47:34', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('767fd3b5-e2aa-4eef-9406-535ee26a2bf7', '\\u42\\u72\\u6f\\u77\\u6e\\u5305\\u53d1\\u660e', 'ophyRv9uLdYYI-e0nMkSiMlKeqiQ', 'o5O6DxB0Xv68-JclJp8dzPK0Vr5I', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/Q3auHgzwzM6afmdmdHrG5biaJNvCchxO6IaicibnhJOiclWBUficDhIA1KDodRj7sRzqiaicmrloAtTpgRyCGf9iat345hV1YnB6NupyPdibBuIo2euQ/132', '1', '1506736541', '2018-03-08 15:53:21', '2018-03-08 15:53:24', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('77f2bae4-bf4c-4e5e-a781-5151b989f8ff', '\\u2600\\u73\\u75\\u6e\\u2600', 'ophyRv_oHIZS-Gtz7rke55xkpnIY', 'o5O6DxHKwVdXzUFb4BgBvfY7auhg', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq3AwyMODLyAATReOuS5pictnq64T2iaXaEcZ8bocvobpNRibGvkAsxoMeFf0G3Eo2nSWNZxic7MFfUPgXvpbCialYObq/132', '1', '1520584227', '2018-03-09 16:30:28', '2018-03-09 16:30:29', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('782036bc-f8ca-4aaf-aa71-3914dcba8269', null, 'o08dF1Pw7qnFjvmSQsgC3Nb-jCUY', null, null, null, null, null, null, null, '1', null, '2018-03-12 12:17:06', null, null, null, null, '1', '119', '118');
INSERT INTO `focused_user_info` VALUES ('78404191-8712-4302-8a28-64913d57d3bf', '\\u5201\\u86ee\\u5973\\u5b50', 'ophyRv2pAeVGk-M-bML9zj6bk-VQ', 'o5O6DxMmH6AOQDinpDqFBcS2315U', null, '中国', '四川', '成都', '0', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvrwGGVTrInbfsMjzuxNt9Ad3Q0ibGknWrUyMWStlPhTBXV2N0nFiauq1gww7TzgWib9X4gCTtTwkseUr8AGC0YvY3HO/132', '1', '1513153455', '2018-03-08 16:15:51', '2018-03-08 16:15:54', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('78c059a2-d4e0-4e62-a936-57ba49bf7eb4', '\\u5e7c\\u7fe0\\u8c37\\u83f1\\u68a6\\u5c9a', 'ophyRv2r8PcCjF2ngl0ygluUj4q0', 'o5O6DxD-RrY3W43tnBhOOuljHMZc', null, '中国', '重庆', '巴南', '2', 'http://thirdwx.qlogo.cn/mmopen/GsJePNupiapD12JHPDqvRtQ4fS1PPtDIicbiaJnUqxAKBMzHjSJEydhj2GzxdhwkEqoiaqB7zMIOhvPjsxxOlnKJLOYicDJaQTlQJ/132', '1', '1520344169', '2018-03-08 15:50:22', '2018-03-08 15:50:25', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('78c9963b-fe58-483e-80cf-40f18572fd14', '\\u6960\\u59d0\\u59d0', 'ophyRv_slSJ495u-VAW0REaDrKDM', 'o5O6DxLadGbxMXaSrJAh_Y1W0Bek', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvrwn7iaaIsTF7hRlRN2mbcjj3ib0CVStibgG9YAYdPIBv3QR07EGb1pSM6skEXauP6JcWic8nfRXGFYahb8bBNrkjib7z/132', '1', '1516875495', '2018-03-08 16:15:40', '2018-03-08 16:15:43', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('7906859a-e1e3-45a4-8046-b4bdd9c67670', '\\ue327\\u20\\u57f7\\u5b50\\u4e4b\\u624b\\ue327\\u20\\u8207\\u5b50\\u5055\\u8001\\ue327', 'ophyRv0hW205cI8Ukb-sBMiupDbk', 'o5O6DxAA2hrxTfGX-rJmN8KpNxVI', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpNbh9G1CPSzau499THOWt10kLqaRunnGkqkcZbpvSTzs05ErfT4Y34IlI4gDU6yVHZH8AicdcObVGH04w9icNHX1B/132', '1', '1506858477', '2018-03-08 15:56:05', '2018-03-08 15:56:08', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('798df014-3957-4202-b004-6dfb0e9e0d99', '\\u2728\\u20\\u840c\\u840c\\u54d2\\u20\\u2728', 'ophyRv5o31RJBJQl7T86IKWe7aII', 'o5O6DxFV-pNXwLEKYymcvFneGKPg', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvryQnquQc1CicdjdZR4zC5AJEA7ruH7DfEojmj51bbWJcIHu4JXaia3nzvnOT1ZAicFVl0qgaV0ibMicHw7xYluKPFx2K/132', '1', '1506237702', '2018-03-08 16:09:06', '2018-03-08 16:09:08', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('799a364d-05eb-4e84-8908-0fb6ae35d045', '\\u53\\u61\\u6d\\u53\\u69\\u6d\\u6d\\u6f\\u6e\\u73', 'ophyRv6yeZRUJrFihYnqlKWoOIFI', 'o5O6DxBsfqBWqY7txZtoWS_hMj7Q', null, '中国', '湖北', '咸宁', '2', 'http://thirdwx.qlogo.cn/mmopen/YcWkuiaVVRxwUsfQghaAHsjicTYkgQXGIMhYrsrEUJJ2R7AOB6J745L8xTEPt1X0xb5fHY58ykJOPn4mPwSW5NKwT1tMhVp4cY/132', '1', '1515506018', '2018-03-08 15:53:06', '2018-03-08 15:53:08', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('79ab337f-310c-408c-8df5-a13abd1c973b', '\\u5c0f\\u7384', 'ophyRv6oAKRvid13MCp7bqukmnVE', 'o5O6DxPsT1i2vpTmOE9A9qeGmsNA', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq2qnYzLFqUFeSP1y7TIZTkJ2ZD7ArWibgtp8kROxJAabucLsCLoNcQE7FujUx5v8MvWvJ2TyF7DYX2Wuaeof9icmd/132', '1', '1506674695', '2018-03-08 15:56:09', '2018-03-08 15:56:12', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('79bb9f01-87d7-4bf5-b54d-4d46b08a4dbc', '\\u51cc\\u9752', 'o7QP0w1xEiVGYU8fklX5_-gipriQ', 'o5O6DxBg2nNAGHGmTel7a9GdSvj8', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/2bZjHt0Y73kD2DdVtdN6xz0zvCxdeFPQUvLpHXGo6McF5H4PEVAiam3ghL0wQuYVMtWEo0Q636j5dicqXErvDaZHia1vXK6wibTC/132', '1', '1520576935', '2018-03-15 09:25:12', '2018-03-15 09:25:13', null, null, null, '1', '108', '107');
INSERT INTO `focused_user_info` VALUES ('79bd431e-a203-4447-8293-8d861701a0d9', '\\u4e00\\u8def\\u987a\\u98ce', 'ophyRvz7DE8IAsbSHUwj5PacZu50', 'o5O6DxMeOipEtCFtqEWaVm4EVePE', null, '', '', '', '0', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLA7jicXZcdxSknXzf1uyojpIj7Ym2bQXdsd69h5X8WzfHg1rvSwM7WHTmOnE7U83WdbrXCxvVrhctMwxuia4cq6suRGPZYtMJaVc/132', '1', '1506139121', '2018-03-08 16:04:44', '2018-03-08 16:04:47', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('7a15aea7-c561-4119-93a5-07bd8e600712', '\\u90ed\\u4f9d\\u6ce2', 'ophyRv3K3dBi5h94oaTYhHs7JdjM', 'o5O6DxEY536KkF1Vt6QP5LQsjxvI', null, '乌拉圭', '', '', '1', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvrxOJqZLRVKCK3ibPdiaaodL5gibibhcgd7Geo3H1SUgT17CJ8JlTEHNlleE38oECz8VMX9DwaCp5s8m8sGx1I8uiaNEa/132', '1', '1515506014', '2018-03-08 16:09:54', '2018-03-08 16:09:57', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('7a7d751d-1c52-40e4-887d-cdefcd603052', '\\u591f\\u4e86\\u5427', 'ophyRvz0xpLKWR_DI1N40ZkVE_g0', 'o5O6DxAOHlFSHNvTD9RA8UfEpWTU', null, '', '', '', '2', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvrwQxgdiaOsyueL6uibYZw73nVYDlbPibaiaP3lgMBwUMkcyeaW13UAC0rDn3SW47MniauicybcZicwP6ibL5DNPVeEpjEhB/132', '1', '1520344187', '2018-03-08 16:07:34', '2018-03-08 16:07:37', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('7aee6f86-e224-4b1e-ba67-92f750a58582', '\\u829d\\u58eb\\u9171', 'ophyRv2Je-0dfftupFOY0Ivh4Q8Y', 'o5O6DxBXN_nQp8BjtIrgOSEi5jvo', null, '英国', '苏格兰', '爱丁堡', '2', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq2qnYzLFqUFeVB4FWbWdIsUjUUVEfc9tbUhXUF0YIqn2th5zyC8Va90R60lAIXksSqSHh2QmXv3npKbukQhrf5D/132', '1', '1513819286', '2018-03-08 16:03:25', '2018-03-08 16:03:28', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('7b44c009-f076-4d60-80b1-8da95d8692da', '\\u732b\\u5927\\u4eba\\ud83d\\udc95\\u5e03\\u5076\\u732b\\u26\\u4e2d\\u9ad8\\u7aef\\u840c\\u5ba0', 'ophyRv7HHV-9R5rdffZyPeQAU_Yk', 'o5O6DxLIV082Pukelc6cuury9RrA', null, '', '', '', '2', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvrwZE407ezXQ2LcicFFdWxnApiaXG2yib7ECHzMTjarQB5jroEic7icqw2mjlHAdvaf5pib5OYTFdkZMbH3cLjiaiay94Uzo/132', '1', '1508386879', '2018-03-08 16:17:40', '2018-03-08 16:17:42', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('7b7bf5bf-36c3-45dd-a070-0ca908966f1f', '\\u53d1\\u73b0\\u667a\\u58eb\\u46\\u72\\u65\\u64', 'ophyRvyBjsf5AtSgodqTdFpho5xg', 'o5O6DxN2rodNiKTDSZTZhSsBd6o4', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/RmAyWWpGBHRTeO36KDSzVlVlU6UKiafV4JT3iaDvga1dECzaMd0pBp4TCSoHZeon5PicwJQHEfRpoiaMRFtYRRc7q7NefEhOtl8B/132', '1', '1510064094', '2018-03-08 16:08:45', '2018-03-08 16:08:47', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('7bd83d0d-091b-4762-952d-fd0a668955e2', '\\u4ee5\\u4e3a\\u4f1a\\u54ed', 'ophyRv6vL2RpPYUO8NFlnE1PVf_M', 'o5O6DxP0V7UUSkto2Cs-e5pZgxuY', null, '', '', '', '2', 'http://thirdwx.qlogo.cn/mmopen/gqc1SG2j0zibR6pYF0cageZXm3acv4dHQTmWXw7oR046BpibnzIIZAnlSPloWYeBZ1YIjvZrmx93cDSp48wIibL2QegwEGks9kV/132', '1', '1515506024', '2018-03-08 16:17:36', '2018-03-08 16:17:39', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('7c1a2810-4741-43c1-96db-4f8ec45728a7', '\\u51e1\\u4e4b\\u65b0\\u4e4b\\u5982\\u66fc', 'ophyRv7hDxnlKQDKpfrQTZ3U_l5E', 'o5O6DxP0M7O3QOpz6WfaqtPY6jKA', null, '中国', '广东', '佛山', '2', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpO8Uy2w3Z3Oh9hxia4Shibk7teTLKojtP89kWSMwBCFfe2RuESBuuMDaouUIGlYqRXicRSJanBZOHibvMb0G8yXFy1y/132', '1', '1520344169', '2018-03-08 15:53:39', '2018-03-08 15:53:43', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('7c2e1879-223f-4191-b7cf-e960787a6722', '\\u5c0f\\u6770', 'ophyRv4cbMV5XBDx2ILH7hesbWcg', 'o5O6DxNvRp-EN4hDNlDyYOSGMIsU', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpNpJhgTlBjQcI7kKmDoB3G3tBGm0eK9KgSf5a8hCMXFDvGlZSsDoRhcKqW225TrsTMSDg54q6HcwVBTcich7LIl8/132', '1', '1506152663', '2018-03-08 15:50:05', '2018-03-08 15:50:07', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('7c4841bf-d237-4764-a048-fba8d3afe8d4', '\\u96ea\\u513f', 'ophyRv1V7ofT1iiJw7MuDoxTXrkg', 'o5O6DxPXI9Dq4LtNypLiB3-wqLVY', null, '', '', '', '1', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq1jkvGE9iaKCOuPNn6AW6Me0ia6bbPBGfOETTbkDz20kZBwp01PfLPCX81n6wfWKUicrAtY1AmhmQSM75OcYKIQfWo/132', '1', '1506152600', '2018-03-08 16:18:17', '2018-03-08 16:18:19', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('7d1f077f-b610-4803-8be6-074d440b0804', '\\u5df4\\u96c5\\u5c14', 'ophyRv_lQZdHKQxIUnCLRr1naqcY', 'o5O6DxEnQNe_7hProW2f0FNfReS8', null, '中国', '', '', '2', 'http://thirdwx.qlogo.cn/mmopen/Q3auHgzwzM6DVc7bODRCCMPEQ018OIWtVfx5HarrU9ibxoZ64RSxZ2K7opETTh1NhxS99qba8zJaDBNS2fTiaPcHOvhnVQfn5Kaicy7ZOpecOc/132', '1', '1510275504', '2018-03-08 16:07:42', '2018-03-08 16:07:45', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('7d3779ed-751f-44ae-a3e0-015d11223fb3', '\\u51cc\\u9752', 'o08dF1OU3u22yR-gnD-vq_KykSUU', 'o5O6DxBg2nNAGHGmTel7a9GdSvj8', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/aAiaeB3mNoDjgnCEES7yP57tljSp8yoW9iczdiceibqb7333UsNHgbjFwmicIeYYcY4g2YX4HUTbzVBJLfkKic7v4ibIoiakqxX4nuU0/132', '1', '1520500760', '2018-03-08 17:15:57', '2018-03-08 17:19:21', null, null, null, '1', '119', '118');
INSERT INTO `focused_user_info` VALUES ('7df8c0b9-9143-4d8c-bb21-22eeaa36597c', '\\u47\\u61\\u72\\u79\\u20\\u6f58', 'ophyRv926cZiwp6Gjb_tJa-tZG4w', 'o5O6DxKkOVynHq19oFlfOunONZdU', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/Q3auHgzwzM72RVdTPm10WhabibN4haHqT8ibO6OYibut5yonnfFBSWnEN6X2ibwUu9J286kJbjJfo1GkEHZliayrPuDCkOsZpMicDVlEAiaAKNHyrE/132', '1', '1506222906', '2018-03-08 16:13:44', '2018-03-08 16:13:47', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('7f0b57e7-28ec-472c-99a6-c2447984937d', '\\u7070\\u7070\\u83dc', 'ophyRv6txbhJor0HigFhKrTJa1z0', 'o5O6DxLZ4ujdUA9eHFclIkdYvKsY', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/Q3auHgzwzM743srG0D4J3gAaz76tRhicjsL0Vaz9ZicHrCwBl9YDwGtO8TTicN9QrkdCaaEs4TPEHabcibAsj5ZHvw/132', '1', '1520685260', '2018-03-10 20:34:21', '2018-03-10 20:34:22', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('7f271764-1753-4c3c-8ea1-bb81a3a0f4c8', '\\u77\\u77\\u77\\u2e', 'ophyRv7Zp2vJQ2K47Kz7qZfj6Vgs', 'o5O6DxEsDC2LVFwYT1tV6SYTMxIw', null, '中国', '四川', '南充', '2', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq2YAuBD4XbfCZZ9lZrmnFic3OQdicy8QyXmS0DF0Igicsm7pic2JOl671t79mAGv0ZKEVdQOcicnNUlVxVVYibicy5YDLG/132', '1', '1506147071', '2018-03-08 16:19:15', '2018-03-08 16:19:18', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('7f5a6dad-c9c8-4138-916e-5f642f806b69', '\\u76f4\\u89c9', 'ophyRvwtFLRm2PBwGInv387Ej1L0', 'o5O6DxLVZECiGOlZZk6tOlcFNnOM', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpPytdT0VwKoZQD5v4SzJ5kKWYibSw0ZWibXUN4BVJhaQaGTfiaPXEx8njeZvgdemD9VeVUOpUTTvSDbfZ05ZY2baP2/132', '1', '1506858178', '2018-03-08 15:51:48', '2018-03-08 15:51:50', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('8007f4f1-9f4d-4eba-aa22-8ffb4ac06b84', '\\u6d0b\\u74f6\\u5b50', 'ophyRv7Yqbyd3Cl5U75YoytjmSOE', 'o5O6DxLS8y6NjxvB44_y_uoH3bMc', null, '', '', '', '0', '', '1', '1506216127', '2018-03-08 15:54:05', '2018-03-08 15:54:08', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('80eb8f2e-cbe7-4166-b8a5-83d8dd66faba', '\\u9c81\\u65ed', 'ophyRv5EEzWm-8CIesVUr_z8Iwlw', 'o5O6DxJOBBGM-71AOKOH5w03xl8I', null, '阿鲁巴', '', '', '1', 'http://thirdwx.qlogo.cn/mmopen/rqvn1hjHytfaB2v9bcNXICfLZ1AAWqq7ZQqDBlpj4oM3a1T70znDAJSozSuThNWRETJ2tSe1w6VzlzI7EGqQVJEaW5MiciastR/132', '1', '1507548113', '2018-03-08 15:51:51', '2018-03-08 15:51:54', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('8111c3fc-2abe-4f98-b471-ff86ea49a79a', '\\u65b9\\u4eae', 'ophyRvzGtUizpo0KnFn2T7SOdlU8', 'o5O6DxE2U5SonnBPXffsz-KtgtDQ', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpOMx8qI1DpHLJFwws07fCSygEw8RLLuE5NvyxDKPvIvynNz4uCexicYkB9BCbFMBXEsYdmeiczzHmaFCI8L7fadRB/132', '1', '1514214478', '2018-03-08 15:59:09', '2018-03-08 15:59:12', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('811dec24-2503-4bb0-b0ee-8c0cf94c3ebb', '\\u2d\\u4fe1\\u3000\\u4ef0\\u3002', 'ophyRv2QZ8Q119LGhCaVgVgcl8w8', 'o5O6DxELoZJAGEdOK7tyydhbjNG8', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq2XGGuGOuGDNqxDbKickfpvlNAnduchmMiaZpXQrOic42aBfkPnZno7bbjtAtbVXynQubiarE3cG1Iuibw4PyHghmrvw/132', '1', '1516869493', '2018-03-08 16:21:31', '2018-03-08 16:21:33', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('81ea5161-e6af-497c-9e6e-82202458cddf', '\\u6c34\\u5f64\\u4e4b\\u67d4\\u542b\\u6d77', 'ophyRvw6VyEog3w0Mh_B-DRKHWWk', 'o5O6DxNuQjaJp4tANo0IDSovBLjk', null, '中国', '澳门', '花地玛堂区', '2', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvrzE3ETHSBclp3daHV9vYsl6yXs0xHu8uA7WAAccVd4AQ34edvEqCvnU3OAZ25ttDqBvRQVZsAErHn3Gu1YxicNzq/132', '1', '1520344170', '2018-03-08 16:21:45', '2018-03-08 16:21:48', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('8284c298-715f-436f-8623-6fc3d8be15d3', '\\u44\\u70\\u6b\\u75\\u6e\\u79', 'ophyRv674FOmJnNVQ-qaHq1E3XbA', 'o5O6DxHwhxw40tF2BkzZz6V87iDU', null, '', '', '', '1', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq0PgEM0p8OhWnhMVsCWwKrCK9CvBz64icAEH0Wkvf3maM0BveVON6ibQead4IGt1aaO4rXrlsZIAhfibTiat7wxBoQ6/132', '1', '1520344162', '2018-03-08 16:05:47', '2018-03-08 16:05:50', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('82b04d2f-b8f3-4330-bcdd-4321a3a9733e', '\\u71d5\\u73b2', 'ophyRv7GcGgFoVkSFZKayrm0Ik2c', 'o5O6DxJgHkcyFWxSNriB0rNQY0ho', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpMbMNCr5ySMLNVtWdqibkXeM784PbH6tv47lRUUMxcdpBWrKU0YlHRNHaLQuSlDcrvicTianeANiaENJeSAFHVE3mkh/132', '0', '1506234529', '2018-03-08 16:16:40', '2018-03-08 16:16:42', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('831224c5-2d5f-43a6-bdd0-251b3ff8c70f', '\\u89c5\\u6ce2\\u6155\\u6885\\u5357\\u70df\\u3002\\u9756\\u6613', 'ophyRv7QTNOWII0AV3i75YZZSQv0', 'o5O6DxHZVXJsoxCB6n09sg9R7khA', null, '中国', '重庆', '垫江', '2', 'http://thirdwx.qlogo.cn/mmopen/mgtjUY4lBdCAP08HjMO4sdcQFW5x4LQPlf4OeosU9aY7ZruYib2z8uB9OC6Q2LPNRiburQVPqg6sahmibXFq0cKGtKz82CTgTXn/132', '1', '1520344237', '2018-03-08 16:14:18', '2018-03-08 16:14:21', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('83ce7d35-7495-4398-bec8-74ccdb23eb6a', '\\u51b7\\u7f8e\\u4eba\\u31\\u35\\u38\\u30\\u32\\u38\\u31\\u31\\u35\\u31\\u34', 'ophyRvzUtI9G5jpBkl-v5B2hQu54', 'o5O6DxCIdaWd53iCRweimtrqQqVo', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpPs8d0uhGbpZq0kU4RCRCjg9M1k8ncic25ibhWJ0sriagm92Iy1v74yLWgpSJsrMicib5Lw8iazqyqNNia8gbzia09qg5yG/132', '1', '1506236431', '2018-03-08 16:10:16', '2018-03-08 16:10:19', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('8556fc75-929e-43cc-9767-29668c8862bd', '\\u52a8\\u6211\\u59d0\\u59b9\\u5e9f\\u4f60\\u8db3', 'ophyRv1YngredvQbf-L5FECZOnQU', 'o5O6DxG8NmiopPPwAkZw5QcfD5kw', null, '', '', '', '2', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvryTL2eGSEK2T0LyHSprLHW9KPesWUgUwMHJRaPicwk8q3xDdkV4vUrhpegvDgzGKc5xISAogcYM11qVTInNRuy14/132', '1', '1515506379', '2018-03-08 16:11:04', '2018-03-08 16:11:07', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('8611dd81-d5c9-46d9-8bb0-1507959da5dd', '\\u7a0e\\u60e0', 'ophyRv03g9Wgr3TAOM7vVfAhWNo0', 'o5O6DxH1YovRpCOFcE4ZSEOFuE2E', null, '', '', '', '0', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq0mIgbMr2VrAiaGibtHkxnsKZutias0p9iaruFX75EPZ8vvTpcHsyXjX6sgUibjCJySZ7xZfiaVPKwLxIj80OO7yOrhbP/132', '1', '1506136615', '2018-03-08 16:02:06', '2018-03-08 16:02:09', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('864ffeb5-f080-4775-9440-68357a13b827', '\\u5c0f\\u797a\\u5927\\u797a\\u4e48\\u4e48\\u54d2\\u4f\\u4b', 'ophyRvyyMIi_YTZ-zmYW_HWFuCqs', 'o5O6DxEzv22gmWbjh_q_aNH2LImQ', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq2XGGuGOuGDNqheBzCibzSWSiciapeVTV1mLfhlGdpvRAyiatcicPcQWYTgWHwyJyhZWOZK8tXicTKDHgaEvRpgljSP6E/132', '1', '1506221159', '2018-03-08 16:09:47', '2018-03-08 16:09:50', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('86637762-cd3c-436c-a918-12b180c1a188', '\\u52\\u65\\u3a\\u43\\u72\\u65\\u61\\u74\\u6f\\u72', 'ophyRv1Pb7ljIy0GmA-UoJyLKcHM', 'o5O6DxHaX6eMbqhPE1qeK_1MfPA4', null, '刚果民主共和国', '', '', '0', 'http://thirdwx.qlogo.cn/mmopen/rqvn1hjHytc9CaApVO19AePWw4zk2gJibA3THC0HvPx0uIFT5xEzmlSnjNupujZ1dQywV6X8xhD7uT9fNuP789rQgLHhIoLUj/132', '1', '1509467425', '2018-03-08 16:08:00', '2018-03-08 16:08:03', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('86b27d28-6eab-469b-83a5-21f3ea603995', '\\u93ca\\u6802\\u65eb', 'ophyRv6EX4VrmR4BVteyq2mb9Kaw', 'o5O6DxLzGvGA2j-xD-NewET_FUOs', null, '', '', '', '1', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpNcIgHsF4e59KvB6zCPTjJgKd81a89jbrtmZpCTrU6Ctapaky66IHlt2GPTsVNwFeTZIup4CW07MjDVicMngBfKT/132', '1', '1520344168', '2018-03-08 15:47:06', '2018-03-08 15:47:09', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('86da0c2d-2043-4938-a07d-1a3a3d939d3e', '\\u8fc8\\u4e0d\\u8fc7\\u53cb\\u60c5', 'ophyRvx-8ixUO__PyH-Y26SUsyhY', 'o5O6DxK0U0IWPcK4-ZnmLbnn2g24', null, '中国', '河北', '承德', '1', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvrwGGVTrInbfsBUcH7Ck7EbDyRMr1K9W6nKwUZLpsIDsXVTM6iagQNlXlgBOhibJJI0b5Hns4sSNfJVtRXoClcA2Z7/132', '1', '1515506019', '2018-03-08 16:00:04', '2018-03-08 16:00:06', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('86dfbfd1-1ee3-4778-9136-265b2e90d60a', '\\u6bcf\\u5929\\u7b11\\u4e00\\u7b11', 'ophyRvyYG0nrye8F1LySaO6yfH4g', 'o5O6DxMwFNAJ0kPwwkkvtvpDgLfA', null, '中国', '四川', '', '1', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvryQnquQc1CicdiaNNFTJMSORBxoqcdlBqteVewH1GaWJRLicDNVThV6W8Sicn9YmGb9FrcmicqfIj1j44UCHAR1bIfPia/132', '1', '1506131632', '2018-03-08 16:05:02', '2018-03-08 16:05:05', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('881bb450-9955-43d2-8a54-ded18c2675f4', '\\u9752\\u9999\\u7eff\\u6625\\u5343\\u6613', 'ophyRvyYxaRNjvF3eq3PdyEvFjdw', 'o5O6DxKqqKOwz5n-gMZrJxIPMgUg', null, '中国', '福建', '厦门', '1', 'http://thirdwx.qlogo.cn/mmopen/KGkX1t1j5IkDT5D25Eo2KUaEkrVMhjPcsfRWicxnKjl8bdpXyf7nQawxyPxPwN1iaQjqhk6jsvqksgtxnkICMgSLWG8uUOPJN4/132', '1', '1515506019', '2018-03-08 16:16:21', '2018-03-08 16:16:23', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('88330de9-4429-4555-a010-b4d6a8dd1fa3', '\\u7530\\u632f\\u56fd', 'ophyRvwblByFTLpACU4lLgkbAQX0', 'o5O6DxAR9OgDZ7uVtNSOfkfPiP2k', null, '中国', '江苏', '南京', '1', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpNpJhgTlBjQcKdqZmVB8caskfFgAX60lSvN4f1cQVd1icyLOYoYIILAqZ8lmtdEo8IdLFURZFhta4klq79shu6jI/132', '1', '1516502545', '2018-03-08 16:21:42', '2018-03-08 16:21:44', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('8859e783-e817-47fc-bf89-39d0f4a897a9', '\\u7af9\\u6797\\u5fc3\\u96e8', 'ophyRv6m4DRelcbI-FSBLefbZt_M', 'o5O6DxM66JhripM2GV5fUqpKU_k0', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/Q3auHgzwzM7xAKlza2ibf0wad8rPv1ASicFsOMAAdIpnqUHNA80tD1kD3jOLZGk3OWtDBTHQDYUtAVcONKiaazQjJZtnJ94FznoWpFiaAJledpw/132', '1', '1506857849', '2018-03-08 16:07:49', '2018-03-08 16:07:52', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('88ab30ef-71c5-49cc-a3e2-50aa7bbf2ba0', '\\u590f\\u9752\\u9999\\u5bd2\\u68a6\\u5bb9', 'ophyRv_0wTyvT1KjdnceLlLOUEQY', 'o5O6DxP9ILv5zS46cCRJaYpFCWqA', null, '中国', '安徽', '巢湖', '1', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvrwgmqzlcox0aBYDGicDhsSsnkh1w2FGhIw6sRwCcnm7CuUpT3icKegcCsPTfE9JT8ljxPlIszKZ1p3YkYhhxs1Xlk/132', '1', '1520344167', '2018-03-08 16:21:23', '2018-03-08 16:21:26', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('88af82f2-ae63-4ad8-8abf-0a22905e368f', '\\u71\\u71', 'ophyRv_DRaHZi5BEdkKSTTClcLoI', 'o5O6DxMtrGWobXoZFqYZcVEkDHgA', null, '澳大利亚', '塔斯马尼亚', '霍巴特', '1', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvrzWoiaBOvBnS1wNjmWqJv6rFtggiah3TV8JGnSrK15oRNicjPY3BicZnNWKxPsTdXuc8HLnu0rLZXcicndCjMV3yqyEj/132', '1', '1507724981', '2018-03-08 15:48:31', '2018-03-08 15:48:34', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('89b4a43e-1eba-4770-a8f0-7ff66712623c', '\\u6f58\\u5175', 'ophyRv12X3fUA_eha5favtipa5q0', 'o5O6DxJMebHmcbVh7zTzcQrFkgGE', null, '', '', '', '1', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvrzE3ETHSBclp8ATV21RjrszHA4iav0XNla3p5yGWPuicrSFJEUADGz5audxTicSic1RVIJuddVsiaf1XI8KH5lNDKtvU/132', '1', '1520344166', '2018-03-08 16:17:20', '2018-03-08 16:17:23', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('8ab2a9af-96d1-4502-af80-f9bd5a55a193', '\\ub7\\ub7\\u864e\\ub7\\ua\\ub7', 'ophyRvwqxheL5wsTJHS1uc2tD2eA', 'o5O6DxG0Eir84ngLsrY550v8ieqc', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq1lLBia5yDNAJ6bF0M43g3JxQp7PjzT4bEQLy9l0uTnUblPIlRQmKdmU8WoNtUosh8InHzQWh5aEWTLSz2p1ZAnJ/132', '1', '1506858833', '2018-03-08 16:06:10', '2018-03-08 16:06:13', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('8acf150e-b6ef-4b7b-84f8-782bf757d9cb', '\\u65f6\\u95f4\\u5154\\u5b50', 'ophyRv0pKoTx-QMQ2-J0w_Wy7zfo', 'o5O6DxBG-meOjvYZGXJuXiT_lAgo', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/TJcYCxdyWe1tckBvjs8lfYOKuArZEjIyic9HZUV06xzYEia1WbPAFMvttUicwL9QIDbicoyolkd4p0jqO5Qg3974yAiaJEwXXnEFo/132', '1', '1506138477', '2018-03-08 16:01:21', '2018-03-08 16:01:24', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('8b56f0fe-e0d1-48b6-8700-dea8f3a26863', '\\u5415\\u6d77\\u5b9b', 'ophyRvweJgoi_GJi3di37MjZDRYs', 'o5O6DxF6HJmifdZFeVXf6980tFcU', null, '中国', '广东', '汕头', '1', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpNTDf7Ze3MWiaLLaa96kD9PNaMC6sF9TtQpoMPwPbW5sXOcP44BnINRu8eibibFAcJUlzHNZY7GHocJH1hv1VyVWiar/132', '1', '1520344176', '2018-03-08 16:04:37', '2018-03-08 16:04:40', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('8bdd7aa0-9303-423d-8db6-0daf7ec1d3db', '\\u8297\\u541f', 'ophyRv-J7kkFTtvkE_VNEcirVHTU', 'o5O6DxLeZ6SH4nPhSD_UtHt5zTMc', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpNcIgHsF4e59LHnOSSIgGBLsn2OQnEHklDEqRe99QuUgeVn5fRtFDv8ibPJ69ne1JOMJvDeZQbPtM5iaC5Wu3aKQz/132', '1', '1520560142', '2018-03-09 09:49:03', '2018-03-09 09:49:04', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('8bf3ea9a-df13-430b-aabe-066d476e4332', '\\u4f70\\u591c\\u8347', 'ophyRvxmpBd4rV1A_AD1CfaG2Bdc', 'o5O6DxJ2f71_R-6U0uqXQfAFo9sc', null, '伊拉克', '', '', '1', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq2zbcKibjeJfMdOVej9msEsQSUxhnaj1xIbsCeuQGn2jlGuWO27qIFOJ12prCicPktNZ5O8Bibm59diaF0sry3Gm7t7/132', '1', '1506236478', '2018-03-08 15:49:17', '2018-03-08 15:49:20', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('8c3c2d1b-bcbe-44ff-8a10-18433e3c0977', '\\u4e50\\u5b89\\u6613\\u771f\\u5b9b\\u513f', 'ophyRv-F7YswiBjUfWOq0BJbhxc0', 'o5O6DxG6ZUcuTAtjVytTrS8xoaaM', null, '中国', '福建', '厦门', '2', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq3RbzJnicvhMiakLjIkugrLTMgCicM1W6mPnIdDL7bsibBa9S8OIPQKiasKrqs6nHdy2J0hCXiaGtnhIM13t8ZwVguXdt/132', '1', '1515506020', '2018-03-08 15:57:16', '2018-03-08 15:57:19', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('8c6f9b5d-d9e9-4017-a027-94e58289492f', '\\u5c0f\\u6d41', 'ophyRvx2Tn2-4a6aE96QmPN9w5xQ', 'o5O6DxFz_BW9a77AxdL1l3r4seDc', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpNpJhgTlBjQcJPT5QyfGE7ukZDJ7SnpjRgT1jQvhFQy6ia2BpGfN2WxRZKAgHbQpr7ewCCBblUicNJqVaiam6dKq2o/132', '1', '1512627619', '2018-03-08 15:51:14', '2018-03-08 15:51:17', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('8d3bd551-ce7e-40cf-b009-15ce628b7580', '\\u6570\\u636e\\u4e3a\\u7a7a', 'ophyRv9F5hcG-0EDb2p8TDT5fyHk', 'o5O6DxIomlaNZtF7kEVDQlosFLv0', null, '', '', '', '1', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLAO62iaI2eOJqZjdiaIlBhLE7UyOfTukqdTec3j4NAlibUJ9cxeriaEfc34ayqGhEdSgZTODFFDWMRyiacumgoF5wxbrgLvspH0fwVQ/132', '1', '1515506014', '2018-03-08 16:01:32', '2018-03-08 16:01:35', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('8e735576-0c76-4510-88c5-4ccaca3bfc1c', '\\u66e6\\u5a03\\u5bb6\\u7684\\u98de\\u98de', 'ophyRv1g3PcY-d38jVKUHUfKb778', 'o5O6DxKvt3jDdiGd-6Xpfa4SysM4', null, '', '', '', '0', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvrxoAMryuX9s2zxchibDjNDeFIRxTJ2Blu2ZiclcX1UoInYNngJkBYPqoPYnlNOS7DtQ8UPrbubcO9lPBE9uibZf4mZ/132', '1', '1520588718', '2018-03-09 17:45:19', '2018-03-09 17:45:20', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('8ee44804-983b-4e56-926d-476591326022', '\\u9093\\u7476\\u7476', 'ophyRv3pUgUkUUwTn_-IRLLVaL20', 'o5O6DxCXIMc3hmXAwR8Fo2B2U-bw', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvrzFwxMq4qMQ2Ij6p6pGxvE8d13qLFxB39C8F99Qoq0DjwHibRIKs39DEsVCxZZ5ss2dF2Cxsic0fCImVhBrqsUibQm/132', '1', '1514442102', '2018-03-08 15:52:13', '2018-03-08 15:52:16', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('8f1f6aa7-c0fd-4f7e-90c5-5592c46a4d5d', '\\u53\\u4f\\u53\\u4f\\u20\\u5e26\\u5a03\\u56de\\u590d\\u6162', 'ophyRvxAVEiVE_iiCWVhl9v1Sj4s', 'o5O6DxAubBpi9BrsCYXX_5SJY-Mo', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpNpJhgTlBjQcCwjXP7P0JsLXh4Q4EPjpJNXnWCWAJZWH5Uydxm9yg8U2cTM1qKl3pVKsc711mdGVhD1IGc9eXuP/132', '1', '1513823552', '2018-03-08 15:59:40', '2018-03-08 15:59:43', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('902cf03d-a7d5-4f61-a9c8-10758b6f3312', '\\u6d\\u61\\u6f\\u79\\u61\\u6e\\u67', 'ophyRv101A6Yv0f9xIQCp4rRhoMU', 'o5O6DxLR9ddVxtca42LzYTQc8SFY', null, '中国', '福建', '泉州', '2', 'http://thirdwx.qlogo.cn/mmopen/rqvn1hjHyte29pd7lDZ7eUkswGfMriceL7V9zzluB1v7tkXQtvQPpnxiaSF3PibPLTprtJWPaRq9AKlMtLB9T7GjoL61fE8ysen/132', '1', '1506236051', '2018-03-08 15:54:54', '2018-03-08 15:54:57', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('908cea68-e80a-4610-b16b-e5d8fb4b86f8', '\\u309e\\u20\\u7d2f\\u310b', 'ophyRvyLOTcGnhcIyes974j7sJE8', 'o5O6DxN69tGuu2X6v5wAEx9jjEtA', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLCkPkHVSpjb8ziaqzXAxFoBIcoTlIEaibibCpQHgGL7dX8O57pa3icEibmpVjUmSGSjSyA6KiafRJvlGAhw/132', '1', '1506152610', '2018-03-08 15:47:24', '2018-03-08 15:47:27', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('911ba030-943d-4a4a-ae9b-b5c487f83438', '\\u90a3\\u6d41\\u5e74\\u88ab\\u8c01\\u6401\\u6d45', 'ophyRv_zNhmukHyQDPtCjgGXmR5w', 'o5O6DxAYcJGnYGMg7Bg7w-PFD8js', null, '', '', '', '1', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpM0w4dqyam3KeEKfibIMqksMTTIqSIUut6FjhQCQxHK84eX3fiazccYK2nicXianvxO6B509tQZR9GESLGGCoavCtQK/132', '1', '1520344234', '2018-03-08 15:50:11', '2018-03-08 15:50:14', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('9129d690-1456-4d5a-bc0b-790318890944', '\\u5189\\u5189\\u5347\\u8d77\\u7684\\u5189', 'ophyRv7N4SiR9laMbRAuWKNUUCYU', 'o5O6DxPlxpYHb2feMkI6KCjZy2NM', null, '', '', '', '0', 'http://thirdwx.qlogo.cn/mmopen/Q3auHgzwzM6zToZp9etkOJvLF634Vxm3FdJ0RL4Y8preuXBia1OBKJeHqYMmcpG4xDESCVoLHibxsr1xyN58wFIXicxicUpPvpRG0loFFibFt29I/132', '1', '1506235245', '2018-03-08 15:47:35', '2018-03-08 15:47:38', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('9185e207-b330-444c-b9f7-1157a46434f7', '\\u8377\\u82b1', 'ophyRv7zftVVQ4A6Ny8Bx5ctujFo', 'o5O6DxGF_CXPaBhd8Tl84VNjPxh4', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvryprlhyGIV6QHgK4Mjv62tCy7ic0ibBeem6WqsicZxnRI0o7BRP9JHmicz52ZEaxvwdC2LqlPraty6jo35SzwRujTAu/132', '1', '1506138708', '2018-03-08 15:49:40', '2018-03-08 15:49:42', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('919dcd7d-5132-467b-a209-d943ef64de10', '\\u7231\\u90ce\\u826f', 'ophyRvzwuCeoi-YfANgY1Ox_ZySE', 'o5O6DxGpnMplbi_bC8pznrqY5OdI', null, '', '', '', '1', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpMRgDkraUhqFk9n134I0kF8I39Ria0m0HRKCS0yicGf3hprWlRKQzhhPZAcwVKEiadSBN1lvicnMk1rLgHyh8Kp0sJv/132', '1', '1520344209', '2018-03-08 16:08:11', '2018-03-08 16:08:14', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('91e851b9-9ce2-4b68-9888-f9b5edc5e4de', '\\u6c5f\\u73b2', 'ophyRv--YjRPZZBk3_gCOj14tr_A', 'o5O6DxBabYPBL4kEQWnhRcSSSIys', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/rqvn1hjHytfaB2v9bcNXIM4Yovl3jPuKSZFF70lKlHHogepia6UnKo5aaW0MEmdYKxibmwfrGmAjaU3EDZEN2WcibS3m1hl8tNW/132', '1', '1506404661', '2018-03-08 15:51:03', '2018-03-08 15:51:06', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('91eefe5b-4399-4290-9576-f9b91c5c0d1b', '\\u4f55\\u4e16\\u82f1', 'ophyRv0R7L2ZYBxAsNxjeM2jNdUI', 'o5O6DxJCzheb7lnyMAJREPdV09U8', null, '', '', '', '2', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpNhxPWFzXiaiambV08vUKMfBloTvn5nANTutpCp4tA3LMia57ITYDLcellNQEvhXwPUjzVbZoJlsU75wExeXpA5TMo/132', '1', '1506680596', '2018-03-08 16:00:22', '2018-03-08 16:00:25', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('92308267-7092-4a87-8bfb-72ce396a1e86', '\\u738b\\u541b', 'ophyRv0H_4NZ9_U70oCa396XeUVA', 'o5O6DxKbG19i0LLtZkGM6pAjvVGw', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpMcDz3aspudjQ1e7WAUrZia03fIhsTeb83gX9Q66fBgAr6yKJtR8fgVxqy0LEeaAGPW0oOyfia8kxZ3InoibWwHffm/132', '1', '1506858521', '2018-03-08 16:06:43', '2018-03-08 16:06:45', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('926e700d-2b60-408c-8de6-6aba08a9f27d', '\\u7231\\u7684\\u89e3\\u6551', 'ophyRv9XChgFj-iC0_v9W5QmNSuI', 'o5O6DxJOMMDj-0C4F1DZ2wpii_ZA', null, '', '', '', '2', 'http://thirdwx.qlogo.cn/mmopen/rqvn1hjHyte1kXiaj04tIByCQ0ga17JMCtJTotWheoibWxkGbyk7xNH5B5KEibAr2sognQE8XNJ01N3Nkic7VMCs647tPRIK8YOq/132', '1', '1515506028', '2018-03-08 16:02:20', '2018-03-08 16:02:22', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('92be9ea8-33b9-4cf3-b0f4-c2b7fef8989c', '\\u6625\\u5929', 'ophyRv0xskA3JiBJ_zJJ2MsHh82I', 'o5O6DxDy5WcvWvhPAAkNFYSkaAXo', null, '', '', '', '0', '', '1', '1506152744', '2018-03-08 16:07:46', '2018-03-08 16:07:48', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('92d4b60d-ad71-49b9-a4c6-0a23f3a2b01d', '\\u82df\\u6b23\\u59ae', 'ophyRv0y-3RwWFaXwHs9udqquHto', 'o5O6DxDv0YcX9WFDWABZqpbZzank', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq1Q3UWFYEHcibB2Wm9WhoEVpfbuLCebpzzPfrI8S5icTCJwJ5anbADtgHaax8z7dmicicDibbQudzMVUwiaU8sSXXL5FG/132', '1', '1506858710', '2018-03-08 16:01:40', '2018-03-08 16:01:43', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('92e93590-9662-467a-be33-0529786e046b', '\\u5929\\u5929\\u5916\\u5a46', 'ophyRv1thMNwhiFO2T3y_CdZMoCg', 'o5O6DxKt9bkVlFgXdvUL1PgymnUM', null, '', '', '', '0', 'http://thirdwx.qlogo.cn/mmopen/pCssTJTSQMKX41NZuz9GMBtibx2mV2zSOTlN2SqskkLHDtOpP85LdLvDhOjqqj7NfEIUE7rs2ZpNvV5ILh1aePv3OIGplVmKf/132', '1', '1506138748', '2018-03-08 15:56:12', '2018-03-08 15:56:15', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('93f675f1-88a6-49aa-8fa4-975e4c173e55', '\\u5434\\u9521\\u5eb7', 'ophyRv8JuXCvGgfUWA-EPZvhJd1s', 'o5O6DxFIsGK9QtyxxgK4v_R82-f8', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/RmAyWWpGBHRTeO36KDSzVp9MLDPjeb0jBwnOBUYKibsTLicLECqtNWd1jPf98YfFiaTibfgPxynGIDal3FuaEic1ThzKR2cxCFB4d/132', '1', '1506138115', '2018-03-08 16:10:42', '2018-03-08 16:10:45', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('93faeee3-c7a3-4278-b738-3800fc7d0038', '\\u4f17\\u884c\\u5929\\u4e0b\\ud83c\\udf38\\u7e\\u829d\\u829d\\u7e\\ud83c\\udf38', 'ophyRvyNmW4r70Oe2lveXQOWWysE', 'o5O6DxO6nd_wENRr580myomocQx0', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpMUmiaNeYpOe76jGBm1t7ibHiaRDQ4SA03guaneGLyZq3xzTEGHpKkF5WyibQ5V4VUqVEmpsJJI3k0HCLric3icoFzWJq/132', '1', '1514214523', '2018-03-08 16:22:46', '2018-03-08 16:22:48', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('9432bf6b-25af-4969-a4fc-49ec87a1e008', '\\u58f9\\u6b21\\u5fc3', 'ophyRv7yHA4zJ7Q3N2YnKYOKpZAg', 'o5O6DxJ9yPXQQdKr3KbaOCnkoBes', null, '中国', '四川', '泸州', '2', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq3lyVIZJlKVZ2S1FpPzia6AayJSib8MoTxicpy75nIGtmwiaraibPPaoQoJ5kWs5qWBYicOtKUAE3T2hZsan4UA8ibVSich/132', '1', '1517193076', '2018-03-08 16:18:38', '2018-03-08 16:18:40', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('94976514-bd26-4d15-83da-942499bb79ce', '\\u598d\\u99a8', 'ophyRv_0ER8gr-TLIHL8twBcGsRA', 'o5O6DxHhTvO9FUOtgIMnvmRC3ocM', null, '中国', '四川', '德阳', '2', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq0hbrtxJ3YIFWagkTllias6rrewcAgmkEpf0nyApEPftw0VpW8d0WRfNolmz7okOEAx9KKM85LNeRgIHGjX6lG5U/132', '1', '1514437063', '2018-03-08 15:53:25', '2018-03-08 15:53:28', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('94d673c7-993a-4528-a056-c7d2babca87d', '\\u7537\\u4e3b\\u89d2', 'ophyRv15ECo6PRnd4uq83vVDnflQ', 'o5O6DxMLcHoma4CPV5QmnVhjlyUA', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpNHrx9bjIsrJBPsv9sqt4ADnBoGJbelWUicXRtMU578OzLm5l0VyiapzhWQYVrFbVdVG2R1ticz8lV0nQH07uQcdmX/132', '1', '1512734547', '2018-03-08 16:18:57', '2018-03-08 16:19:00', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('96288e81-c543-446f-a3d2-4b13f8ec4960', '\\u5f20\\u6770', 'ophyRvwDOiUe1c2zkkhN-I_peDLM', 'o5O6DxE7qPj0NQnvsiIgyiwRFOaY', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpNcIgHsF4e59EQ575VSicz9voHhDiaRpGqxPovVrY4Lv7ib4rQRzAqg1kZdYKvPWHG78kBbibibv2aSz4n2zMuoh9kB0/132', '1', '1515063845', '2018-03-08 15:48:57', '2018-03-08 15:49:00', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('969db13b-7552-4b33-93f9-832eee7cfbab', '\\u7d2b\\u8346\\u82b1', 'ophyRv9NkBnptDkvYZz1R0kJJ0nY', 'o5O6DxH2TrG8kxuwNoe7vc6rnYng', null, '', '', '', '0', 'http://thirdwx.qlogo.cn/mmopen/rqvn1hjHytejDIutuPSCUYBickaJpRqBmxHzm8J69Dvt4669Xhy2VAxfk0FicXudpibyb3GLg5fIiaPLGUD4pzlZj8XWiaOvpkpwq/132', '1', '1506218028', '2018-03-08 16:24:03', '2018-03-08 16:24:06', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('9795fb9f-a50e-4a3d-bc5a-ba4389695432', '\\u5e0c\\u554a\\u5e0c\\u554a\\u5e0c', 'ophyRv466ldK2lr26wjkzQJmhbGg', 'o5O6DxCYU6pEp5U-yw0nHSgXPazw', null, 'US', 'Florida', 'Orlando City', '2', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq1lLBia5yDNAJ9mpRBaAW4KMwoBv9rG2CESz0YxvGd7rzpxKG1dlAiaibSY1zP25sibNhBzhxNfnoq3YUqUGNnJGw0s/132', '1', '1514265324', '2018-03-08 15:55:46', '2018-03-08 15:55:49', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('97bca877-af67-42ea-9348-c228e9eead22', '\\u79cb\\u8377\\u6155\\u854a\\u8bbf\\u98ce', 'ophyRvy7_mMb3eLMAcJTn_C4LSic', 'o5O6DxB4Yc8yWrCLtGJaoumkTXfM', null, '中国', '海南', '昌江', '1', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpNcIgHsF4e59FmmBRu0a7GInDwIlDOA9LYugMI5h56Uk7vnjHxjD8nbUV1Y8MQkJS7vVXSFkicL34UZ4FkWRdaP9/132', '1', '1515506017', '2018-03-08 15:45:29', '2018-03-08 15:45:32', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('986d0e93-8b13-4f61-881d-b9a98546bf27', '\\u5f6c\\u54e5', 'ophyRv3n_ShSi0qCdxqhoIjmaUlU', 'o5O6DxORJhkAqIvGvZ3QzW0ccnNw', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/9EzCoJDswGwygJ2Cjpk3dc6lQEFopueu92g0BbdXBnljnbaP1dm73qrCBib1GTX2V0OFYElaLKVFZ9jjvtiaGUXdSMMJicWgg5e/132', '1', '1506858629', '2018-03-08 15:49:32', '2018-03-08 15:49:35', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('990b6e09-95a9-4d11-b35b-976768a5bf76', '\\u8881\\u8881', 'ophyRvxlwDutjogtA3_jEcAv0OtM', 'o5O6DxM878Qk8oWYtD2CGynqhRUg', null, '中国', '福建', '泉州', '1', 'http://thirdwx.qlogo.cn/mmopen/Q3auHgzwzM6afmdmdHrG5biaJNvCchxO6nQJJgNibWljHsVwDXJRKpdsO8t6bfreBSVutsFbd9LaZUPlrQAdrIIESiaiaauOCwI741CP9niaxm3s/132', '1', '1506132787', '2018-03-08 16:01:14', '2018-03-08 16:01:17', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('9a71c8d6-ee2b-4264-82ae-b6b30226bc35', '\\u83b9\\u41\\u6e\\u64\\u65\\u6c\\u69\\u6f\\u6e\\u2026', 'ophyRvyLwNLwJ9z8w4TeRkzLB9CM', 'o5O6DxI5bBtuhQz0nNe8A9B4yHF0', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/Q3auHgzwzM4sVkBnuy412nWKvRABQ4icDxc484McD8KNNr0mSdgaTK2ywEFEOKQBZAsiaf9e5vyluk4uYohrk2zNEN0g5c90Liaj0HOFCDyOHQ/132', '1', '1506677602', '2018-03-08 16:08:30', '2018-03-08 16:08:33', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('9a88d225-1d1d-4233-a688-560254c813c2', '\\u4d\\u72\\u20\\ub7\\u20\\u66f2', 'ophyRv8jUSMSWPw3xVWLHIoxwMBU', 'o5O6DxIYGiaoDBKoC0Nx2t8R4YHs', null, '中国', '四川', '乐山', '1', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpMej9CSOpic26SyITb4loCV06q7wKnyeicBNjRtu52m34rhwH7adsjTtffMYm4l6SHoveB3IcYWlJumuSdrpBWGr6/132', '1', '1506066375', '2018-03-08 16:01:02', '2018-03-08 16:01:05', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('9b84fdcd-ea36-4c37-87d8-9b3c32c46ee1', '\\u89e6\\u7535', 'ophyRv6_em6zJYCWUlpztTsT5n5k', 'o5O6DxB8x7diFibipHHbKfOowAv8', null, '', '', '', '1', '', '1', '1515506022', '2018-03-08 15:52:50', '2018-03-08 15:52:53', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('9b9477d9-5d75-4002-912d-cf92f083e870', '\\u4e\\u61\\u74\\u61\\u6c\\u69\\u65\\u20\\ud83d\\udc9c', 'ophyRv9AX9LTUBTMN8Vn1Eem5V4U', 'o5O6DxPMH_haG1yeiJ9dJhWg9iXU', null, '意大利', '罗马', '', '2', 'http://thirdwx.qlogo.cn/mmopen/Q3auHgzwzM4x8FrGIhygQIku0TsfyLdMS6sqycjZOJp9NqzTtvYO3defXoBhPSkpxTDhYo0gMbia85xXmYaiaVKq1a2ezBOlxEGfzyLV0tAkg/132', '1', '1513768204', '2018-03-08 15:56:49', '2018-03-08 15:56:53', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('9bdf363a-67b9-401e-b51c-5fd30cd27b56', '\\u4c\\u61\\u6e\\u73\\u6b\\u79', 'ophyRvxOPwrtim1pECJcbTeDBvVE', 'o5O6DxDfxrczPyXhsdlrgYqN0EW0', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq0Z2dhvn2GtiaaWicBJgRY1F2WYg296qibYqibj4TyNbd7XiaQluJ1BviaaTl3lwOnu06lrialsGlSN26YMmNRnoiab1fiaV/132', '1', '1506678710', '2018-03-08 16:04:10', '2018-03-08 16:04:13', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('9c400957-97bb-4ddc-b34a-97f667f401b5', '\\u6570\\u636e\\u4e3a\\u7a7a', 'ophyRv2fQMAE0Iiuaf5CdZbkacGI', 'o5O6DxCzC2OrwQp8jneiOsE0-EtI', null, '', '', '', '1', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq1ERpOtj0xApccqwBHGZia2nEozodHF6KBKwNzRLUwrRx2EISjST94xSUxib6lxNQ6ED2h8cP0x9bibNIo52QBgiaH2/132', '1', '1515506038', '2018-03-08 16:19:48', '2018-03-08 16:19:51', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('9c55d170-718d-49b6-8626-a79c6ae22854', '\\u521a\\u521a\\u597d', 'ophyRv6yjOwbngUv7n_EuF16Pvgk', 'o5O6DxBf9ilvpdY6mpd6V9-qGAps', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpMAchTCP809nq3nCGtAUiaVTYkgR5mTre185xMibJ1C8kiapN6lHibGE4fyPbkq5A6W4blJsJcFlxuDeBHtic7RwQF93/132', '1', '1515199497', '2018-03-08 16:21:16', '2018-03-08 16:21:19', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('9c5ef80a-6729-4850-a060-a91e9ad39eb8', '\\u6c\\u78\\u6d', 'ophyRv6qEmJazqycy0OJaQzkUpvc', 'o5O6DxLcVJs-snX08pGPnazlHIwo', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpMZeQ1F4iavv96uQ0RhsjH2mpiaP3QmY3QsQHK0b435QricmAks1KJmMyc5Yia8FEI8axnS4HeSSaXd2zuorx3iaX6U3/132', '1', '1510066077', '2018-03-08 15:58:03', '2018-03-08 15:58:06', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('9cdc68f4-976a-431b-8e1c-62d5f86c7928', '\\u5c0f\\u4e94', 'o7QP0w1RBXFKVDExUl4aJ0voRZ5s', 'o5O6DxBZKm7VMRkSkvWYvTKM-4aY', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/2bZjHt0Y73mWJrzIHxtE5BNEepeBlxg0EaeH1YtUnZytgtYl5BoFJ02C38iczj7oYm1W1ia7yibUPJicnClmibd6D4OtjTWMLLuoF/132', '1', '1521172901', '2018-03-16 12:01:02', '2018-03-16 12:01:04', null, null, null, '1', '108', '107');
INSERT INTO `focused_user_info` VALUES ('9ce83e7a-35a9-4521-a7af-0fde691bf4ae', '\\u7a\\u71\\u4e\\u73\\u44\\u50\\u4e\\u7a', 'ophyRv9D6M7N6f9SI4f5cRW_tXC0', 'o5O6DxCh3PTqK9Dy1rpnKFnJ8npo', null, '', '', '', '2', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvrzWoiaBOvBnS11OblwdDTYSgfickjUPkSX6GeFI8htcCfRIVC53zeDUIicNDP1toAib3l0gM9GK0W5QAv8pgEaxNDbF/132', '1', '1520344162', '2018-03-08 15:47:57', '2018-03-08 15:48:00', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('9d00c56d-fc37-4721-a6c4-3f2805806f9b', '\\u6768\\u9017\\u6bd4', 'ophyRv4Qe3du3WYQceLFMD6TGcnI', 'o5O6DxFO6J7QBuN2P10H-f7fzZS0', null, '', '', '', '1', 'http://thirdwx.qlogo.cn/mmopen/Q3auHgzwzM6zToZp9etkOJvLF634Vxm35VMSibW8DUJHIM2PQbHziayUOIfMYZNicLIV4pUHbMkWuulK7oDv2tf4VNoicW0BI8OdY53H6dWx9bQ/132', '1', '1520344203', '2018-03-08 15:48:16', '2018-03-08 15:48:19', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('9df57c4b-6ff7-4621-a26f-94316eef258a', '\\u5b54\\u67d4\\u65b0', 'ophyRvzH-4trHrx9Uh33tSO214tM', 'o5O6DxPqAydsaPmgpfaRObESY7Uo', null, '中国', '广东', '汕头', '1', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvrzWoiaBOvBnS17PaYpHqPcP6DRHeW6aXhypjKr9MAJkdiaO8AOLvusiaJcAV0mCJNp4y428AEDGUicZxWeumXh1xaHs/132', '1', '1520344173', '2018-03-08 15:46:06', '2018-03-08 15:46:09', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('9dfc7bc8-d1df-4b1b-a4fb-d4432f99832d', '\\u5c11\\u5e74\\u6211\\u5f00\\u59cb\\u5947\\u5e7b\\u6f02\\u6d41', 'ophyRv1A_JUPw1VOqgmb3axQW5L0', 'o5O6DxOAdFFg_9qZr4JYnxMczS4c', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/rqvn1hjHytcez33URaBJ3XTdBxP0O2ic9dhDKhZjEc57feIx5mdiaH8ozHOqkyR0k7KkUKzoLKEgoXibich4KMHBvqSTuE8YtQ14/132', '1', '1515109864', '2018-03-08 16:19:11', '2018-03-08 16:19:14', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('9e4ce4d9-5684-49cf-8f08-27a13392e3c7', '\\u987d\\u76ae\\u7684\\u53ef\\u4e50', 'ophyRv60tqrIfULpc4FITdcbcy8c', 'o5O6DxKdKt-zFr1XPWYtS8kiwEwM', null, '', '', '', '0', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq2qnYzLFqUFedYTSiabkeMLibBsGqc7uQic6LaiaoEVE1rhzml9sc00Cu05wicu4shPldowACW17Fia9IR5oC6ur09Tpq/132', '1', '1506675257', '2018-03-08 15:57:59', '2018-03-08 15:58:02', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('9ea22b02-5bf8-4a0a-bcf7-bebda0dea22a', '\\u96c5\\u67cf\\u5e7b\\u4e1d\\u6d77\\u51ac', 'ophyRvxAsHyBo0oEOpmZy6wZdZOI', 'o5O6DxHakay2UuRuFwnm46sYwveI', null, '中国', '广东', '江门', '1', 'http://thirdwx.qlogo.cn/mmopen/Q3auHgzwzM7GCgYVpWkrgFgwzfCnQhl0r5foQcpUCB6VMiaibMFOdHz7Y2QW7WLzEMTNZqVlTNMuGtVmPLvLrXph3sWicBaiaNMG35VEiaIkWgR8/132', '1', '1520344167', '2018-03-08 16:15:04', '2018-03-08 16:15:07', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('9ebca9f8-83e7-4a8f-8b14-8789ed175f98', '\\u5915\\u9633\\u5982\\u6b64\\u7f8e', 'ophyRv55TfyM611_OEmn9ngS9NgE', 'o5O6DxOE94ZOg9kLr0hq2O-3UpZw', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq0jD3w2tbVuiaKrrWxQqicaNQb46ItIq6X5VUwwyUiccyRKkwRia9CQLQIHoUXOXNyib8FhRnW3EibNH3L46RlRYtSMw9/132', '1', '1506132850', '2018-03-08 15:56:45', '2018-03-08 15:56:48', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('9ecc1bbc-afa5-4c74-8b27-ebe0a8960b3c', '\\u7a81\\u7136\\u597d\\u60f3\\u4f60\\uff01', 'ophyRvwwQPo1HkaNC9TSkdn_rdHY', 'o5O6DxBtP1Lp9Vd3n0jZPBbyZbIg', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpPVzoGadtztA6Zk24nCkRicNEIJmfcryhRbJaJwmCHmmntgzzic7IzBJhzToofhkttCd7NOg964Nj6icBibuoHEj9ms/132', '1', '1506134788', '2018-03-08 15:52:16', '2018-03-08 15:52:19', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('9f6e5baf-c717-4a04-b72b-50872715be69', '\\u6768\\u8247', 'ophyRvww4oV9zBnHBLaxZ1m4QFOg', 'o5O6DxBwYQdQtQzfvD-ZmXdzTTWM', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/rqvn1hjHytfaB2v9bcNXINEOcw9RCmyL03HQDNkpn3JQF7RiclILYgVOH2gVyUFDvFg55k5K6DrMeAjND55MOLnxKD81VzttQ/132', '1', '1506674782', '2018-03-08 15:56:41', '2018-03-08 15:56:44', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('a0a36b06-65b6-42d4-9040-ba9b985857cd', '\\u4a\\u75\\u6c\\u69\\u65\\u74', 'ophyRv8zl3aXe0Z9pb7kagiaOsQM', 'o5O6DxMi5IXX0Rhc4KeYhDmt7_eo', null, '', '', '', '0', 'http://thirdwx.qlogo.cn/mmopen/APjGE39KZ0tTdyqiaS3CPa664QDoHBDxiakuNg0tz1uLQ6IxGGgyoBvdm5NLeqE6ibpQomXc7qAV9B5MicQ6WoicVlIibmDCDBiaWY8/132', '1', '1515067327', '2018-03-08 15:58:40', '2018-03-08 15:58:43', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('a0bcbff9-0bce-49ae-b842-e05b933c1118', '\\u8bf7\\u53eb\\u6211\\u65e0\\u7231', 'ophyRv4f9DFBpK9-uRIzJE-mJm6c', 'o5O6DxBHTO3ZgrrcP7QYlI70Gt8A', null, '中国', '江苏', '南京', '2', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpN9jnweYQN5Vab5BlrMdxuPHyB7AfvGBKXyAnZSzxmaxTPkhLyPvnRkqRXZ291l6ETca6icwzQsy2LibhQs5EHJvm/132', '1', '1520344225', '2018-03-08 16:07:08', '2018-03-08 16:07:11', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('a1158cf8-1f62-4261-ac6c-a0afedb94510', '\\u5fae\\u7b11\\u63a9\\u9970\\u4f24', 'ophyRvwb1JzD9z5iT3mpabje5eG4', 'o5O6DxOlB6BWc_WhDw_OrOyBMg60', null, '', '', '', '1', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvrzEU0OY1tbR1WicgYtdfJYLrmQ2jN3CLrp7gc2cY6ic6A100ACpJe9aicb3icpzmfVWia7fj8MyI0RunwDzhaHSYxRQO/132', '1', '1520344176', '2018-03-08 15:53:29', '2018-03-08 15:53:31', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('a18ac70c-4460-45d6-a983-f93e4fcfee10', '\\u6797\\u6d9b', 'ophyRv6UHfzyrQE0uH-7n_0N7gl0', 'o5O6DxOu10dRgoKQrK8i5NmeEDfI', null, '中国', '福建', '福州', '1', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpMVBRyibFsGsiclXLq6Pz2GAicChWy2ibNRPQHib5YicwZsnrVI2gWp0rFUZAFavO2nZr7XF2a6nUWWo2HTWMRRUcgr3y/132', '1', '1515506023', '2018-03-08 16:11:53', '2018-03-08 16:11:56', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('a1b22118-3bb3-4272-b79d-aa0321179e5c', '\\u8bb8\\u7237\\u52\\u6f\\u62\\u65\\u72\\u74', 'ophyRv_p25hSgtGlj2N7dvsYs39I', 'o5O6DxG3cQglkoH5-MVJhIAUmQyw', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/rqvn1hjHytfaB2v9bcNXINUGkKgvQoBcXHxMXEicmY5WArzRK4cX0BqF7p9aIrkRA7U4yvgx5EhyENrNiaiaL1rr0WTRse9a3Tu/132', '1', '1513767840', '2018-03-08 16:02:27', '2018-03-08 16:02:30', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('a1bc2b0b-4f58-459a-892a-4daa0e283170', '\\u49\\u4c\\u75\\u6f', 'ophyRv2xvMihzTMSsYxbNDsJjHQ8', 'o5O6DxEzzgBayag9K_s6GOa21adg', null, 'US', 'California', 'San Diego City', '1', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpPnKSBeCocKZgHTb03fcM6SDfwWxELAdibnCdtl0tJERSVibHRm7EbotkGic0eia6sdTlSwuod8b1gtGnia9w2ImiaLjY/132', '1', '1509693323', '2018-03-08 15:52:43', '2018-03-08 15:52:45', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('a2169ecf-3dcf-4b02-bdc3-ad9a4d11c21e', '\\u5b9b\\u51dd\\u8fce\\u590f\\u5982\\u67cf', 'ophyRv-VJhosp5zHMsRrnqYpEhIQ', 'o5O6DxC4ZQ8EexaLLx6QxGQQU3M8', null, '中国', '福建', '福州', '2', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpOGd4FuB8uFReHFMP0RhuicBia3YIBLGFDwwuwtxGvS6icRjj8W3s2ibq458mu5vY6sMibBAp8esdEGXCRGrcQ7McqaQ/132', '1', '1515506045', '2018-03-08 16:13:15', '2018-03-08 16:13:18', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('a228be13-a16e-48f5-acd8-33a0b0c9c53c', '\\u8561\\u5e85\\u81c8\\u9a6f\\u5779\\u6e8b', 'ophyRvyEtUaQGKucQ4COL7DcwSBE', 'o5O6DxJ7vlBa8oUbOZzKt1T2nI8w', null, '中国', '贵州', '黔西南', '2', 'http://thirdwx.qlogo.cn/mmopen/pTzvehabLXJF9aICIetPH6fAtVl2w2G6QKATW7cjjKRp68gpRymBPfv7rxyya793jaiclwSk9RuNKgrsT3cZb9665YYu2vwCJ/132', '1', '1520344169', '2018-03-08 15:49:05', '2018-03-08 15:49:08', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('a347e67d-bb69-4a40-b032-22e82245ca79', '\\u5e1d\\u738b', 'ophyRv7RFvbU5P0TtxF_3R0k-XFo', 'o5O6DxGN89ECSUOE1HHrG4R2FUk0', null, '', '', '', '1', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvrzWoiaBOvBnS13fK97QtmiapicjvUzoxwqpHnNnnQDbhq9gKUzq20H9xh0Tdhlnicm4eXxkAZibvG3tXdsLxET0cWnEO/132', '1', '1520344188', '2018-03-08 15:48:27', '2018-03-08 15:48:30', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('a36e98e8-be2b-46d8-829f-d12555158ecf', '\\u4e88\\u5979\\u522b', 'ophyRv4YBwiV7lJppU5dKg7fV6cg', 'o5O6DxNb5HvinNZr5coHOWyVNrwA', null, '', '', '', '1', 'http://thirdwx.qlogo.cn/mmopen/Q3auHgzwzM7DFXBHzkMoQns03gHBkwjP25yicFYdZicicWLo9p2Cwv7kCx7rvgBWApx6zQ7Q8XiaRVM3160cZeEpSG4PbP6ib4WvfMY6OZtwDjv4/132', '1', '1515506025', '2018-03-08 16:13:52', '2018-03-08 16:13:55', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('a4072051-c9ca-4865-934a-d44de9b916d9', '\\u738b\\u9e4f', 'ophyRv_Z7ByUMxmgcBCCPUit7eZI', 'o5O6DxMQTmzcC9RS2uR6GaDjMtjw', null, '', '', '', '0', 'http://thirdwx.qlogo.cn/mmopen/rqvn1hjHytegmb9FnkBVDNzlxUqv1cYGtibFjo4CUMdbfXTsYGvuf3wConxW4hMWXVXxeT43kqYQpp9MltttXHPG3YBPVmg8O/132', '1', '1513767796', '2018-03-08 16:11:34', '2018-03-08 16:11:37', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('a6e37440-24f1-475d-b827-163b07f6eb93', '\\u95e8\\u59d0', 'ophyRvxVpOquPhnzgDh07CB8XitY', 'o5O6DxFVERzV_8XYB9ROGLUR2v-I', null, '中国', '四川', '内江', '2', 'http://thirdwx.qlogo.cn/mmopen/Q3auHgzwzM5Wmb8sPXmOMSf4YKUwPDnBwYWZLs1QQ9bfCwn2x9v9eibxX8wlXn6J9tTtJFoGbiagiak2pWxv1tX8LL9QaBVaCWuM6xMbd6HcfI/132', '1', '1515251186', '2018-03-08 15:49:10', '2018-03-08 15:49:13', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('a6f5650b-ef2f-481d-b9ad-a7e547412f3e', '\\u5de6\\u4efb', 'ophyRvyvIg4ljlWenM1ph4xDNu2M', 'o5O6DxLkoNuFUSZAfNHY5TkoWuKM', null, 'US', 'Pennsylvania', 'Pittsburgh City', '1', 'http://thirdwx.qlogo.cn/mmopen/Q3auHgzwzM6afmdmdHrG5biaJNvCchxO6sDUK2COTicSnzic1woddAib6YhmxJZ1m6KV6FqO1Itt7c1xvxDmg6v6T3wiby9J3fvdMOicTianZMVmr4/132', '1', '1509500974', '2018-03-08 16:00:33', '2018-03-08 16:00:36', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('a7412196-7399-46f0-9653-47f45fb999c1', '\\u44\\u4c\\u49\\u52', 'ophyRv05V0GsXCuq63AB4vVzmcu0', 'o5O6DxA9BgQg9RTDoFGP9tbR_ig4', null, '中国', '陕西', '西安', '1', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq2qnYzLFqUFeWUib1c6pkOOYD6n7ibFpktZ7ZHibHZZjuY9B0HicZzticVuL2yDHYecCQtl8DnwhHHs1dg3OnhXthiclL/132', '1', '1516957657', '2018-03-08 15:50:55', '2018-03-08 15:50:58', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('a765850b-57c8-4807-b86b-1c80852f0f51', '\\u9082\\u9005', 'ophyRv3sUyyl48zpYxHqOxCf3yQ8', 'o5O6DxK92KI81yPUNVmV-0NsSvXE', null, '中国', '江西', '九江', '2', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvrx8wFLWs0mUjAv1LXvowJ7nlLvXALC9of8NJqv8eudeOuFz8Hib3oz6McwGhKX5G2yqZpxElV3951MibAyun9YGmm/132', '1', '1520344180', '2018-03-08 16:17:47', '2018-03-08 16:17:50', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('a76c9ab1-b8fc-4eda-9c5d-d25ecb9cbb13', '\\u963f\\u4e03', 'ophyRv72jdFV9B83eueNOgDq8Im0', 'o5O6DxFMhagnOMmt-7-POgRwicdw', null, '', '', '', '1', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvryjGEwlCetnWWUWRuS6uT7eGjfeEoKbXZdOq3bSicKtAVaOKAquJicDClVXZraTKnqiawhicCKk7nqItRyGTFpIszIW/132', '1', '1515506016', '2018-03-08 16:04:59', '2018-03-08 16:05:01', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('a815eca6-f1fd-4fca-a273-abce64e4f8e3', '\\u5feb\\u4e50\\u65c5\\u884c\\u8005\\uff01', 'ophyRv-V4R_cEelCjvR3nJMWaVL8', 'o5O6DxOEig0T5ytk2lwOZZh_cxdw', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpMAchTCP809ng1gbh4vCiaksWVV7tLEGT9xNLHicEkU7zUh6KDBA1yMkp1jQ8R3yF7JoxevrAfdLP3aPR5dSCb22l/132', '1', '1514559267', '2018-03-08 15:54:50', '2018-03-08 15:54:53', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('a8e7e1de-fdb6-4137-bcae-068871b7084e', '\\u63\\u61\\u6e\\u64\\u79', 'ophyRvzBriXCG-m0meZw4Q9csVj8', 'o5O6DxNG1cKERXhpRNPFy8jMKDbI', null, '', '', '', '0', 'http://thirdwx.qlogo.cn/mmopen/lHwiabl5A8NAibic4CSbkcVzG9C8Zv8JGoiaedmr0g4KrgzEUeXYaulhpZOfiaEXnp0kbAXI101FtJwa6oG4dO2Kc4ebUtpOnyVcz/132', '1', '1515591306', '2018-03-08 16:07:31', '2018-03-08 16:07:33', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('a9907ff5-7041-4f4e-a2a7-ca3f7a400106', '\\u4f9d\\u7136', 'ophyRvz5OAcm7ihe9FN_OOXS88gw', 'o5O6DxB-ykhlgMzA9mUaTHfc2UoI', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/Q3auHgzwzM6afmdmdHrG5biaJNvCchxO6Jl1biaeG32ictlqlYgEPwqU2devicqPhFXrAmFjAt52cOcqltAmm1GYYdWMu0ZdNNfrmTkRfKVARt8/132', '1', '1514427818', '2018-03-08 15:51:55', '2018-03-08 15:51:58', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('a9b7515b-7f67-43a7-8355-e0d3191457bf', '\\u53f6\\u5b50', 'ophyRv8bz8v-GNV_bo1QOomTHCr8', 'o5O6DxASmGFCapEKtefO2AZRgVNk', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/Q3auHgzwzM5gecMl5GrIGDyMhGupNE9M41mF6QN6crRluRPjWtaLricrIHgvfoY6T4zrl0U6ndmDN4FxVOwqzJQ/132', '1', '1506230584', '2018-03-08 15:46:17', '2018-03-08 15:46:20', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('a9c54e24-3e0d-4cfb-bb60-435d668d1180', '\\u5411\\u5929\\u518d\\u501f\\u4e94\\u767e\\u5e74', 'ophyRv4OUvBvtdj2BLdeUVGfu9qc', 'o5O6DxPs3npJisAcoxxOLNbSeV40', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpNpJhgTlBjQcAj8tCayBicoX4INYPc4FRlqMaa0h6UWnHVXpn97DnCWDftsCAlhOLogKL3uHORDmZzRIaibKZoYZ8/132', '1', '1506858616', '2018-03-08 16:03:43', '2018-03-08 16:03:46', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('aa8d83cc-619c-4b59-b754-5de750492cdc', '\\u4fca', 'ophyRv_qtwP7u-fgrf1TLzRyriG4', 'o5O6DxGUF1mBWRVdoiM6ScBoE3vI', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpNpJhgTlBjQcJicAtrDTDnGkic4yXoSqiaFHVn7fe6khHg0sx7dGHgsqniaLN03kicKHoynnKeZJ7VyXPwwmS326d8vP/132', '1', '1513777566', '2018-03-08 16:04:26', '2018-03-08 16:04:29', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('aabe9163-3fdc-4ab3-a0c1-533392044edd', '\\u7d04\\u9320', 'ophyRv8KQZOKg2N3yllJT_WlDmJo', 'o5O6DxK11br55WhZlBWIEBQq9kGY', null, '中国', '黑龙江', '齐齐哈尔', '1', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvrxuJ4aF76HD9g7n4UuXD6pAEFumTWRZSUSejf1Y2icMwkaJvnibWUq7GPGDdJK48BmMqHnvsJCcXoxibeufEVcjxco/132', '1', '1515506022', '2018-03-08 15:59:58', '2018-03-08 16:00:01', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('ab69ee60-e39c-47f0-871e-8a5415b4487c', '\\u96e8\\u8fc7\\u20\\u5929\\u6674', 'ophyRv3yYUJGXWblA7M8XXK4IFB0', 'o5O6DxFh8Pybuu4gBJzT3dHS6uo0', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/3b5dWBtwxUoAkMvIicW9KTAAllBObKBSUxlGPyRibcZP4EI902vG7l07tfjw3bk6gXuKXsh0SGBBGbrTBDtpT484pGRfPJRZiaa/132', '1', '1506152755', '2018-03-08 16:20:03', '2018-03-08 16:20:06', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('abcaa8cb-f94f-43a2-abb3-f154ef277ab9', '\\u5f20\\u5b9a', 'ophyRv9Aik8GsEUeIz8W2cok7qJk', 'o5O6DxI4ysT7OCg_gFa5owY-9I5M', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpNpJhgTlBjQcHiavVTSwtl9ZFI57bx0HxpUqh1cxuMMMezYPNiaIKlE7S0l9D2D3Qc8a3V2nXNBRPpibUGwUraCJT2/132', '1', '1506232422', '2018-03-08 16:13:34', '2018-03-08 16:13:37', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('ac28affc-8744-48ef-a1d4-3a89bf4118d2', '\\u98de\\u7fd4\\u7684\\u4e91', 'ophyRv5YEwxXkcVMVnF-STtByqk8', 'o5O6DxFTZDYb3PIC3_MS98q61oRE', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq3lTOs9FahqNFLD3oXNGj9ialhktPbQQo4siamUteom5KMwgXLtnQrcRiaGIEGoGCdibSgjczFWKnUuc2ibNSLibzG36E/132', '1', '1508857427', '2018-03-08 16:09:32', '2018-03-08 16:09:34', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('ac2ea2bd-7ede-45a0-9c5d-e4867d4d4cc1', '\\u603b\\u6709\\u4e00\\u5929', 'ophyRv4fSRFKUEZdrxDv0LR_a_U4', 'o5O6DxKzIEcUkvcJ4zIebJn2xBRE', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq0hbrtxJ3YIFQ59RdPJnmFfpYxhWVJQpCYFbbWSicOdFx6bZrZPfGoyW9VibAbeKcqE9TaLRPKuJ4iahibaCFEyKtRl/132', '1', '1510102960', '2018-03-08 15:49:01', '2018-03-08 15:49:04', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('aca1c257-63a9-42d2-adc1-63218e96cf9e', '\\u46\\u69\\u67\\u6f', 'ophyRv2Hrpyy9N6fYjJtscyk9aQg', 'o5O6DxGkd3f-ApbcLDV4mZAsq2QE', null, '中国', '北京', '朝阳', '1', 'http://thirdwx.qlogo.cn/mmopen/3b5dWBtwxUoAkMvIicW9KTDIVxTwFM7CicbcbvPLB3v0FDKy8zesfPzkeUL3vDnvCp8c1wkPH8wCsozQL661q1hYPfxYwic7HIM/132', '1', '1518702302', '2018-03-08 16:06:31', '2018-03-08 16:06:34', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('acd8231c-80c9-41bb-805a-f290f5c4c52d', '\\u5e73\\u6625\\u51e1\\u971c\\u98de\\u96ea', 'ophyRv2D-YVzokpcyszANTvRNGuk', 'o5O6DxOq7EJNdsNGRYL4sI-G59WQ', null, '中国', '福建', '福州', '2', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq3KGbEZ77drticCBsZK4exaP4MVQyy6icBvobaDibp4y3O9KZ1hib0R0F7pFoUeNdicJLEBGdVaTJibruEuHlZU47rtZD/132', '1', '1515506018', '2018-03-08 16:14:49', '2018-03-08 16:14:52', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('acf4ac35-00eb-4ef7-881b-f13229b60ebf', '\\u5c0f\\u5c0f\\u679c', 'ophyRv_glyGsbxgcDPH_kxz_o1yY', 'o5O6DxIkRQ3zwHXB-1FKfQ6HlrSk', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/PiajxSqBRaEJ0rwkqX5oOmL7GQcTT07L2Urk0WNlIZSAU7VMAIvS0IqtICiavUTIsbFArPYichsTJx6qictMmaDoeQ/132', '1', '1506677214', '2018-03-08 15:46:10', '2018-03-08 15:46:12', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('adae553b-bc45-4a03-87e5-be132b634fa4', '\\u5bd2\\u857e\\u50b2\\u4e91\\u51e1\\u971c', 'ophyRv20zArrS7LcEO_CmSd1X1MU', 'o5O6DxBsB3PcyCjxCF4eYmnq49Wc', null, '中国', '湖南', '衡阳', '1', 'http://thirdwx.qlogo.cn/mmopen/c4FmurYGkHx7pgCwxEGyguGfj2roNVBRibYuA4wmhxBiamCtD6aE4dCT1gmqwKuw366CiaicQriceT0vqMSmxYx1IwIOanU6HwNzt/132', '1', '1520344170', '2018-03-08 16:17:51', '2018-03-08 16:17:54', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('add63dd8-c497-4887-b283-41830298135b', '\\u970f', 'ophyRv-SYyBBG91KqYUipFIYIrrU', 'o5O6DxCMIAzWbmih1zT2WkO5y-7c', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpP4LbYddzj8mMBSjvGxLhenVITrOibnXSSMu0I1pM7RbxNAgruKfEOY3rK7ucS2r0tdLLgxzmmbc8PXkiaMmzic1Cic/132', '1', '1515564124', '2018-03-08 16:11:12', '2018-03-08 16:11:15', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('aea6d888-202e-4863-a645-7342333c45d1', '\\u58\\u55\\u534e\\u5efa', 'ophyRv8NYt5VQ6YW_4h-r2DYLt64', 'o5O6DxO7idNc7c2Iw_C-m8xWrvKo', null, '中国', '四川', '阿坝', '1', 'http://thirdwx.qlogo.cn/mmopen/rqvn1hjHytf5ibsrvZhSHpZguibRiceiaiaPMUr0vJia5CKK1kXTD5DHiaX1au1gxct0RoichwqfcbLAbQdntDOwibsCFOkej5Kk59FQE/132', '1', '1506236322', '2018-03-08 16:13:30', '2018-03-08 16:13:33', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('aefcc171-3f8c-4a8a-8bd1-5823a20664e9', '\\u6df1\\u788d\\u4ed6', 'ophyRv7qPOjL5FYZ9jOct4mFi6sI', 'o5O6DxKuqe1saQCpo78m9ZmKUXlo', null, '中国', '江苏', '镇江', '1', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq2XpLwbQKoX4u2u9aHibAApktrUJAuxq9dXYSYu0hI9jnt9IG8mhG7RTibo7urLsbXs2Qgmr4QI7KXCPFRFeRU8MO/132', '1', '1515506018', '2018-03-08 16:14:53', '2018-03-08 16:14:55', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('af1acd00-0750-4ca9-ae82-90efc4926bd1', '\\u8881\\u82b3', 'ophyRv2swpH-j5TsMKlB0m-VFg6U', 'o5O6DxCn7VuSApelSWIuoXOxsZzQ', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpNpJhgTlBjQcK22oaGkEWfibp5GYib6Q7PNZd0AgyiaflicrPSbw5mqiap5VtHyOx1Nr2CSj4yegoxiaScxRO1lKWtcKo/132', '1', '1506060781', '2018-03-08 16:00:26', '2018-03-08 16:00:29', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('af2c0519-db14-41ab-aa9f-db499a7a7287', '\\u4f73\\u2d\\u59b9\\u59b9', 'ophyRv23FaH-3IjTtx34_Zm2WOr4', 'o5O6DxLk-aZFiAPYn8FwF6M4MUBs', null, '澳大利亚', '塔斯马尼亚', '伯尼港', '2', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpNpJhgTlBjQcIcJziciaC7xYVNlY0X5k7b843mjq6vgGhUfGYVb4BunxbagQhyzZUBmYDBHyfDoian1Uc7ia1663qGb/132', '1', '1516874548', '2018-03-08 15:57:22', '2018-03-08 15:57:25', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('af621f0f-8c7f-4a16-a05f-0f04cbf25af3', '\\u46\\u4c\\u4f\\u52\\u41\\u20\\u43\\u48\\u45\\u4e\\u47', 'ophyRv8q_MpuJavWAYb65GbK5cv0', 'o5O6DxMIFqwXZwR_NCA7NXKK2NZI', null, '', '', '', '0', 'http://thirdwx.qlogo.cn/mmopen/rqvn1hjHytcvmHuXFxKIfDa3fS1vWtXWPV1mCrjgKcndFdBNgAAU0ib4LPwRPSOn3Qmzg3z2UyLiaQI0IwruJVjg/132', '1', '1516192693', '2018-03-08 15:45:22', '2018-03-08 15:45:25', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('af916259-b1bc-41b5-a315-7b68260e0bcc', '\\u79\\u61\\u6e\\u7e\\u6c\\u69\\u6e\\u67\\ue04a', 'ophyRv7xSKrxXTUuBaBM4Z0CoBKI', 'o5O6DxHkOoxtkYV_2b4_bqu_hPOE', null, '泽西岛', '', '', '2', 'http://thirdwx.qlogo.cn/mmopen/ywAMlAnkjP9y5Qmic5lyibsGDVBryNqZUFGFHZ7N9WSymrWywz0lOcd4ribX7bM4d6Btu66R4zuwicdEb65VzElraJMbdXuGGib5e/132', '1', '1506129101', '2018-03-08 16:00:44', '2018-03-08 16:00:47', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('af97033e-0c5e-434c-ac19-993dd1619377', '\\u731b\\u54e5', 'ophyRv7peHWrr0QcegNW7tdgygPw', 'o5O6DxDC-aZVVrYNsBb9ralH4Fuk', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/Q3auHgzwzM6afmdmdHrG5biaJNvCchxO6V1ozY724HdQ6kiby2LqfpTLsI61AcJeral0SlwDhQjVkzZdMXH6tz5QHVbg2VdbdBadTOBdLqHZU/132', '1', '1513934456', '2018-03-08 16:09:09', '2018-03-08 16:09:12', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('afc85ca7-ada4-42d2-b289-6b7fed95d1a5', '\\u6797\\u5b50', 'ophyRv3FaAR3AGaRRXNuKGXBnBLU', 'o5O6DxPFKjucQDoKmTJ8DBCb47u8', null, '中国', '四川', '自贡', '1', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvryQnquQc1CicdqbrEludwTSDgLV29fibCFPSm3FfEDF7kOxrgnUJBQFcCZiceKHZuymRNPSb6tXG7G4uo5wJicO0fW9/132', '1', '1506677978', '2018-03-08 15:57:55', '2018-03-08 15:57:58', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('aff4f4c5-5ade-4f06-9c88-9cd91a475a39', '\\u522b\\u8d70\\u8fdc', 'ophyRv1t_Ay47hWuGQyftaVdGgc8', 'o5O6DxMnGPo1wMT0Zeyz_nsRyAww', null, '', '', '', '1', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpPNes7pD2LQkqzCicHjDE1neqlbOg5PDOJPWicPIA60lagQrpmicwaIyibnLGK4b8UrkeXHGLicFHmSpd807EaTpbDcI/132', '1', '1520344179', '2018-03-08 16:21:20', '2018-03-08 16:21:22', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('aff8c4a0-bd91-4ea9-bfb8-017c1324aae7', '\\u7f57\\u5e08\\u5144\\u5f20\\u6cb9\\u6761', 'ophyRv3NI7uupxZbZYuoMxXAff2k', 'o5O6DxDsIAdRvGPo4nOVpXAUB2Tk', null, '', '', '', '1', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpNeWnowKbuPz5fSjYjGelswsky1A3WcVro2Hfyiae0gjFQCDeT3DaPdHt94XUTdVQEzWr8JMJmZ9NfaOa1AGIA4T/132', '1', '1515506023', '2018-03-08 16:19:34', '2018-03-08 16:19:36', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('b0186909-2526-4457-b155-7f8fa7a982d5', '\\u4f60\\u8ddf\\u4ed6\\u8017\\u50cf', 'ophyRv2qLXsUlfCP6iqpFgPkLJl0', 'o5O6DxAM_9juqKQ2gP8ENOfL7CrQ', null, '', '', '', '1', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpMDHpyZcG0V9Gic4HQ7PJOmBiaDicEWEFa83DoesAOaeQBOnfRZMXXxibqUDIXxd2o44jfeHh1IYF0zicqITol2dTgFT/132', '1', '1520344192', '2018-03-08 16:18:41', '2018-03-08 16:18:43', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('b049e423-5dae-4966-b49c-cadb28ba03fe', '\\u738b', 'ophyRv_PvE2_wfag4aV8-YbCjcNw', 'o5O6DxDURlgA2rwVOiRK3j4JwQM4', null, '', '', '', '1', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpNDribNCeuYKriaILFpyx0E2YMiaPCLZEqSPrwuh6tOmACCsbmtRWW1aaMMlxv3NqibLtwMPTUr44TDwMrfIGJozPG9/132', '1', '1520344173', '2018-03-08 16:12:15', '2018-03-08 16:12:18', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('b0f60b68-de11-4d84-9139-993e5cc0d1bb', '\\u4e\\u61\\u6e\\u63\\u79', 'ophyRv-0QQFv5Kmyt9-L61aDCdk8', 'o5O6DxFg33GCxdqu9RCxlPHqOSW4', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/rqvn1hjHyteF7DdkMXH9rJa700iaH0QfoHk2IBKuFp5Eia27JhyTp7FKib9VwneqIZ8gRRB5PX7KJLFL01nZe3RTYhmK9vpeGUP/132', '1', '1508855795', '2018-03-08 15:51:07', '2018-03-08 15:51:10', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('b0f8a298-91a8-4555-a3ab-8a1d8df9f083', '\\u751c\\u9152\\u8377\\u5305\\u86cb', 'ophyRvxWj1INutIT7Mnf88iy8zIg', 'o5O6DxJJYr_ys7OmWbJvY5kzJvys', null, '中国', '贵州', '贵阳', '2', 'http://thirdwx.qlogo.cn/mmopen/Q3auHgzwzM49cR9vjepXxmbAQ4a0C27lJ96VMqIjGmUKh8oiaJQj6LRhyxl33Bs2kz8Sw135icpyoCa9yrzAia9JxZ9TBIbpbxXGTDV7f9q3vc/132', '1', '1506858496', '2018-03-08 16:06:46', '2018-03-08 16:06:49', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('b1087d98-406c-4e9f-b7d9-36ac05cacbe3', '\\u4e3d\\u4e3d', 'ophyRv7m0f-1pTv7NXBC1-yZfP6M', 'o5O6DxPWFDlJ1kMnctUBSgWQImX4', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvryQnquQc1CicdmkSymy0w1EfzZib6rXmnYbzkWdFibU7PF8z8jKXZFUNTmpiaXTOtUDW5vl0XM6WpTUXRuBhAWC5hUn/132', '1', '1506857895', '2018-03-08 16:01:18', '2018-03-08 16:01:20', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('b157a6ec-f30e-4fb0-b12a-af310a5cb4f0', '\\u96e8\\u53cc\\u53c8\\u590f\\u767d\\u51dd', 'ophyRv0LPMNSoqo6Px2pZOR6ZfgM', 'o5O6DxI-0thmQhYifcf4l94jdYf8', null, '中国', '贵州', '贵阳', '1', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpN3ibsJsa5C7tbojLlewicWOtwicIia9K1GuA6OHonrBiaEWFSD7jfPuZzZOWhVPpm3MqyTr7iaNxhBNHGwoP9vYAF1Jl/132', '1', '1520344167', '2018-03-08 16:15:55', '2018-03-08 16:15:57', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('b1624d90-4150-498a-8211-70fa934019e0', '\\u44\\u6f\\u44\\u6f', 'ophyRv6qd9ycN4pPDxe9PTkv6Y64', 'o5O6DxOGHwwq6MimzcavrdznbV_A', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpPBYuY05XciahyaA8oJeobkbU53p52J3MBUGj5oXI1iarzSZZ5lAYZaq8mRU3n71uXQ1vQLvxib6XmAPKRxA5jsic5b/132', '1', '1506138643', '2018-03-08 16:16:43', '2018-03-08 16:16:46', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('b232a895-0df6-45e5-aa37-301073d5fa78', '\\u4f60\\u7684\\u610f\\u5473\\u3002', 'ophyRvw59h9c8iRCsuYnTLe2TjPU', 'o5O6DxE3M9F23P4K9R0Q2ek5gj3A', null, '中国', '山西', '晋城', '2', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpPoZYz1x721ZDrib8yZqoICI8PMq9HcDnibCicydIxjhrJXZbp9pqHX41M4ePRoNiaJPM9ErhHr7ibeuo7ia7ibTCI5kCT/132', '1', '1513645102', '2018-03-08 15:52:58', '2018-03-08 15:53:01', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('b2459c77-aaf0-4e20-9e50-6fddef43b245', '\\u963f\\u6811', 'ophyRv503XVZKY0fd_m0TegPZhnc', 'o5O6DxLe_1oSMGNRNURFqHKxSRlE', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpNcIgHsF4e59P8JwG0SenR7IKeHbv5Q2QOj2sCZDyia6ddMNCh3gG9PWdY3n82iczPjOWeZpXGrGMuO5JSnSH0eFB/132', '1', '1506134105', '2018-03-08 15:48:50', '2018-03-08 15:48:53', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('b282ca97-ef80-4a12-b839-31a586138b9d', '\\u611b\\u59b3\\u56ff\\u932f\\u55ce', 'ophyRv6s5WUYTMSXnV0oD9Ml3OFo', 'o5O6DxFoVewIwsXHDzsdbtaBnCFQ', null, '', '', '', '2', 'http://thirdwx.qlogo.cn/mmopen/Q3auHgzwzM49STWbiaZHia3XezTszIeTVTxPhKmoRuqgYdfvVgY2P8ndn9QGVfxdic5ico5GpkoLkLVItn3ZiabaCjFDkLPpPL6f2bibvT15s3zWQ/132', '1', '1520344187', '2018-03-08 15:59:05', '2018-03-08 15:59:08', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('b2e9bf99-61b9-4221-b599-aa1538858354', '\\u5751\\u904d\\u5929\\u4e0b\\u6ca1\\u8d62\\u8fc7', 'ophyRvyK9ZDKFK7T6MN1XVRvtNS0', 'o5O6DxNWH-8M_gff1Gv944OxevH0', null, '中国', '河北', '廊坊', '1', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq2ibMPMnS7Abb25oE9TwxWLaCibgS3VWXt9tl1Wva2AdHibTvWCicml4ORiaeaNerTS81LmIic3OvS2r6JYrSlQ2te7Ay/132', '1', '1520344209', '2018-03-08 15:51:41', '2018-03-08 15:51:43', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('b384e5e5-1e38-49c3-9190-d550cec723c4', '\\u82b3\\u82b3', 'ophyRvzRc2WLJVbuxTNMpPt9rI1A', 'o5O6DxLUs10FwPmae-MzUm_xLoJ4', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvryQnquQc1CicdqYfYPiaoZp2HKR4iacmoxHEd9HdhXSibDyZswktXQDT4p0aQfnPVeibIuibGtGyaicDq0DD6qMSR8sIb1/132', '1', '1506857991', '2018-03-08 16:10:53', '2018-03-08 16:10:56', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('b3d18243-9a7c-46d9-bb28-62ee105e1c8e', '\\u718a\\u5efa\\u4f1f', 'ophyRv2qS7E1BeUg5PZrUcKr_o5c', 'o5O6DxDwS3w0240PXdgY4iV2eApc', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvryTL2eGSEK2T6iaNz7GU9I5GYltKGuN6bEmibo3fEOtw665kK03ToicMnaiaxhyhIv6k5PAcyD2KhnrDIzyluiars9xib/132', '1', '1506219708', '2018-03-08 16:13:26', '2018-03-08 16:13:29', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('b3ebf1de-9166-407c-aebe-a727643c0115', '\\u4b\\u72\\u69\\u73\\u65\\u4c\\u65\\u65', 'ophyRvzq7jt-NmfcIeM6t5T2cpSA', 'o5O6DxDBNf7aJbz1dhst6ppLvWW4', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/Q3auHgzwzM6afmdmdHrG5biaJNvCchxO6XQhyFTknibicZR2DDFpAPjniaGD1YnBBMxrGZicya2qWblJw1oRlb0gvjN3byQtW0fibcYKUyREx9JibM/132', '1', '1508653860', '2018-03-08 16:02:49', '2018-03-08 16:02:52', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('b3fb6aa8-8d58-4633-aed9-be9fe6715e13', '\\u62c9\\u4e14\\u5988\\u5988', 'ophyRvy2CWA9D-1T8xjm_xh02OEE', 'o5O6DxFmvn97q-tRymI6ZkqTsNKc', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvryQnquQc1CicduLYKtrFcYQSPvahhlRMlszTdQWTI66J3gia0QbxI49wBo74RNHQJ38TpiczoVO7RVTqHkzG3YoSSX/132', '1', '1514436243', '2018-03-08 16:02:31', '2018-03-08 16:02:34', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('b432972b-3b9a-4c46-beaf-42bfbd1953b0', '\\u4faf\\u5efa', 'ophyRvzlOF0peSiDdtgpclO6YpXA', 'o5O6DxDCLRZdjXIE6rpQs74GelaM', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpNpJhgTlBjQcF8ZKnHTwT8C8wH50RX1Tz0YjHCxLibwBrpKicks3sfziaiaVFpKXY11UsF88CY65FdSYeKg6BCgNT2G/132', '1', '1506225895', '2018-03-08 15:58:30', '2018-03-08 15:58:33', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('b52808c4-9f78-416d-b65f-e3fc00469f2c', '\\u7083\\u5a1a\\u5512', 'ophyRv1X81VPCtqiGFle3WjofBhU', 'o5O6DxM6Lu6Mri3sxs01Wrs0-1Yg', null, '', '', '', '1', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq1txFXHwzkNMTAyZbW09AqnAobg1bd6CYLhhclafuG6EQOoTC1v7D2Xias11kBThA5uAQmaoOugR1e0f9cNj0iazW/132', '1', '1520344164', '2018-03-08 15:59:51', '2018-03-08 15:59:53', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('b5424c1f-8b69-4fcb-bc08-0ddf3bc7e11a', '\\u4e00\\u5f20\\u8eab\\u4efd\\u8bc1\\u5f53\\u5929\\u62ff\\u26\\u24\\u26', 'ophyRv_ju4WVsbF2kNm8IuZijvMA', 'o5O6DxPF-pulwmPxbIsXQIJFXX3M', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/rqvn1hjHytfaB2v9bcNXIGicqLPntv3L4LGWricLfUGDPqLy87ZCx8twf6VtcDibia7HfuXTAec7MdDJKXrU95t5Uh8SC0LfnLEU/132', '1', '1506233124', '2018-03-08 16:00:59', '2018-03-08 16:01:02', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('b5d2b625-dd7d-48c1-b341-e2abf2255c0e', '\\u771f\\u8bda\\uff1a\\u5382\\u5bb6\\u9500\\u552e', 'ophyRv5faYXfY9VhIjZc1t_VNI6k', 'o5O6DxEr3G44V-5Ug-ySyPWtie4s', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/rqvn1hjHyteMPLKOiaoe2Y8TLficBicKALEtEdQicGvsJLG2W7DVGmSWu8eLGFUYMywrL6tuC7NNetldOo4p2zeqicrtuzk7R3ib2R/132', '1', '1515073899', '2018-03-08 15:55:43', '2018-03-08 15:55:46', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('b6ae5a61-0900-47ee-8b11-683cc1fecd25', '\\u897f\\u5730\\u5170', 'ophyRv9TnhfA9sLuHBnHtmNSg5-Y', 'o5O6DxMNVHJquUDCvzcJVa0VNuSA', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq2XGGuGOuGDNnYQ1EOlyR3lxFIb2xapYu2iaX0exSm8Bg6LzTl9XuXrp0q4de3Zia1yGqrmKkmPibpsUKibkDUQHF2o/132', '1', '1506233950', '2018-03-08 15:54:12', '2018-03-08 15:54:15', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('b708b389-1fec-49a0-b112-8e74e3c9c455', '\\u8303\\u8fce', 'ophyRv0ZuxAfECxjcGfFCk4xaArc', 'o5O6DxAFHd6Kd98e0KsvjEEW8LzE', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvryQnquQc1CicduAdibEGBTEdsnTaakcZRGic3fabKWZKJcBZVJGFxhgibl90ETUiam50AZQVqUxy3IPdQjOaJ9YT5v8N/132', '1', '1506137619', '2018-03-08 16:00:41', '2018-03-08 16:00:44', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('b775c98f-d793-4be1-b21d-52afa2e5f19a', '\\u5f90\\u96c5\\u5a9a', 'ophyRvwr8F0gSk_3sonmdUrdDsUc', 'o5O6DxB8dXZrofoHsaTu0cAuS2RM', null, '', '', '', '1', 'http://thirdwx.qlogo.cn/mmopen/RmAyWWpGBHTHVmdTHvhlJgp4p5y3Cib5j74X5ebEztemEbJ3dCZxBmtV98laFpcicF5TPdQgbnOXJasMwOibCjRHslylfFgEhGu/132', '1', '1520344164', '2018-03-08 16:22:27', '2018-03-08 16:22:29', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('b8581740-163c-4f8c-9126-7fef61706cf5', '\\u831c\\u513f', 'ophyRv0QNFyCgGtdS4CqJKD8zU8g', 'o5O6DxJ2dnHLLg5YZAq86AM3pPX0', null, '阿拉伯联合酋长国', '迪拜', '', '2', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvrzbAdYI2icqjs0xWCJVUmOElhdFzzibujnrib1PvhPHvUmXy3B5n5OQF1ucFFtckj90dbtNMRTAmiazHlcGG6jX1wO7/132', '1', '1519744250', '2018-03-08 15:57:08', '2018-03-08 15:57:11', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('b8a82af7-6950-45e4-945b-c16ee42242b6', '\\u5510\\u6069\\u539a', 'ophyRvz2BTRkirbMy3miCfsV24DY', 'o5O6DxHm7SmbHFzHW0yMS806iYFk', null, '', '', '', '0', 'http://thirdwx.qlogo.cn/mmopen/Q3auHgzwzM50sbqFcIFbgiarGribkJwibq686iaXwuHdiaASXhxMTJKjxpeC01LVEujUIteE4ZfjwSHt5HnTt8sujfA7f0UHXhZFqO4DQjML5Dzw/132', '1', '1509512604', '2018-03-08 16:22:38', '2018-03-08 16:22:41', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('b8d78fdc-e679-47cf-8bb9-e346212ed8df', '\\u9e43', 'ophyRv0df0Ku0X2narFpUiT1e4RE', 'o5O6DxDhNY6bIM_v6D_wZjF_UI7I', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/Q3auHgzwzM7xAKlza2ibf067CL78npjicqBV1rcUso3rQeHLKRibBoyCnJFI0iaEibLwnx9LbSVwl5lMWGicuAGJ4ePKgY1v1RPMdH0xK23W7jA0A/132', '1', '1518319389', '2018-03-08 16:14:45', '2018-03-08 16:14:48', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('b9650cce-ece5-48eb-95e3-a257102e3e9e', '\\u6dfc\\u516e\\u5e10\\u7bf7\\u5ea6\\u5047\\u9152\\u5e97', 'ophyRv2JYvWsY45kBC-VUP2yQQ5E', 'o5O6DxIqHwBKj6Jn28qdoQW7GAmc', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvrwic3hcPsnNTe9A3ib4CaEJlTiaDZOlVgF3xhDZsia5eTGaqbibnaiaNKUGA4mTuYcNPWhicMvKCDxStKHN6B4OPbU6O0S/132', '1', '1514278923', '2018-03-08 16:23:59', '2018-03-08 16:24:02', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('b9bc6dcd-0dc2-4fe0-b670-6fd22445c00e', '\\u8def\\u8fc7\\u4e0d\\u9519\\u8fc7', 'ophyRv-fyrG38zuLvL1BYwbr_Ss0', 'o5O6DxHdW1r7lHaJCVuREt-LEtos', null, '', '', '', '1', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpOybHbgAbzqPibkghLmnWMkEa71tIdHIlibjUoCZYuMk3K0l5aanpdFEg5rzgP5h2AU09keFOr7oQ80IQUW1zz8V6/132', '1', '1520344189', '2018-03-08 16:11:24', '2018-03-08 16:11:26', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('ba4596f0-79a0-444d-907a-55f4340e1372', '\\u5728\\u6c34\\u4e00\\u65b9', 'ophyRv0FIU4QY6B-fQ-nMkayOKyw', 'o5O6DxLZhgp9ZmZ-9hOUZFJtSR-k', null, '直布罗陀', '', '', '1', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvrxsXeukVpLDChb63HQMbTX75A1x2wuV4CQsUn8ebiaauwVqYiaU4R1jCwMa1gD9oXYjS5OxzS8HJRYoBy4tzv8S97/132', '1', '1506236095', '2018-03-08 15:49:21', '2018-03-08 15:49:23', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('ba7bafec-48b6-4816-86c2-0c8ba7b5dac4', '\\u84dd', 'ophyRv9Llc6l_JJNM4bXm7Cpp1fc', 'o5O6DxJvFSh2uyNzv9dUjRyd-pxM', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvrxAiasiayLNWzLDWNwERT9mQPibKOTyicsER3bCGibjSSIANU5J8tUxQXg7ZhdftZYMLpmr9dM0Lic0toIgwCzo4wghct/132', '1', '1506136716', '2018-03-08 16:09:28', '2018-03-08 16:09:31', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('ba7c87b9-2a59-4eb1-a83a-abf8c8b0de10', '\\u9b4f\\u5143\\u5175', 'ophyRv1DnHyDEJOAcPs73TW1OeS0', 'o5O6DxHbbWbf1HJMnqPox6Coj10M', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/rqvn1hjHytehsNdgsuZHY8V7epUM31TCS0SNz3MYUI5ibicJ1CiamIlib3SJFGgL4zA52OkWflgruaVJe0GVZzDP3TdVSJO8h8bT/132', '1', '1506857912', '2018-03-08 16:12:08', '2018-03-08 16:12:11', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('ba8ce7c6-8de5-4635-b61d-fbaca295da06', '\\u5ba3\\u793c\\u4ee5', 'ophyRv4KKQjNiG4cfU5Jp8ArlKI0', 'o5O6DxCIibRW4O119Pmcua3CP_4g', null, '阿尔及利亚', '', '', '1', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpO9Jp2dHBOdx1ib5HAgXZS2RKY9qFACp4lbRJxdpd8MIQXXg11FYp3R1lbNXQnD79oeiaUQUqzoY1icxPtM8ib1fBibA/132', '1', '1520344166', '2018-03-08 15:55:54', '2018-03-08 15:55:56', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('bba8323f-6309-4959-80d6-8e8777c1939e', '\\u67e0\\u840c\\u77\\u61\\u6e\\u67\\u7a\\u75\\u6f\\u7a\\u68\\u6f\\u75', 'ophyRv1QzMiR_QiQ8Kb7kT7rRWU4', 'o5O6DxBMDPWnfJjRHlF_ZmLpQOWQ', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpNcIgHsF4e59Mico0713QKafibhCicahDb7PmBpm0olCOHnmfNfIwHic6qxoldr3xVTkSrecrUHeSkZAfvoDgNWLKX6/132', '1', '1506858755', '2018-03-08 15:47:13', '2018-03-08 15:47:17', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('bc0cf31e-bb2f-41c7-bd7d-b8894e07300a', '\\u5b87\\u59d0', 'ophyRv-ZkgqzDUhADzdbWjYbWm5Q', 'o5O6DxC42eYB_-StdAQmOT7aX070', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/Q3auHgzwzM6zToZp9etkOJvLF634Vxm3Lzn9oQTqvobnsichbhJf68xwxsVeprICzMS43mnibMOPiaGYYdRhwOe95gLoI9B18qS6I8kcEIGjr8/132', '1', '1516502708', '2018-03-08 15:46:13', '2018-03-08 15:46:16', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('bc0d7f7f-cc18-4bc5-89c8-46a45a234b78', '\\u963f\\u8a0e', 'ophyRvwfV72ZXwd2Ql4cvRH6QkDk', 'o5O6DxEnO5AYaJWdFq3u1mpPhV_A', null, '中国', '四川', '巴中', '1', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvrz0Dl12sm2CNtda6dtbgCOUWm8vWnpK9jzMIibcynK4z4kuLW6L8iasichibaDEVibvjuEFLSYGx3XkBqCqgpIjZjaXy/132', '1', '1506222237', '2018-03-08 16:02:09', '2018-03-08 16:02:12', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('bcba8166-e4ca-48b2-84d1-17650f834e56', '\\u49\\u65\\u72\\u66\\u71\\u67\\u66\\u67\\u79', 'ophyRv9h0aAjTtIQ2IFlgrHM1CWo', 'o5O6DxArUgSsEHyvG7OoS3oKKhfc', null, '', '', '', '1', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvrxUszojGibtnTZPQmqIjtbtD1mB6IHzkgBpyRC1qgdiak4jgllD6jzL8wkLOnCKDZWSXkawwXJt5HZB2Csy1KvibicH/132', '1', '1520344168', '2018-03-08 15:58:37', '2018-03-08 15:58:39', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('bcf8e978-c58e-4a48-9214-c398b4acde13', '\\u84dd\\u5361', 'ophyRv2UWNndVP8wQd4HHqFox2sg', 'o5O6DxGRngDzKm2oBLx4QjzrH888', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq18llGkYhDkKBR2bbvatqIPv8Z5rKaKbWhNaSbuK5IaT9Zy2pvBfuIA9GVPh1OGnibooicFhatdTM7cWzhzCBjZ1w/132', '1', '1506259160', '2018-03-08 15:54:09', '2018-03-08 15:54:12', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('bd1d6a8d-ec4c-4acd-8381-2bb8a015f6d7', '\\u57\\u6f\\u6e\\u64\\u65\\u72\\u66\\u75\\u6c', 'ophyRv2XMNtHJk7dubN7SKcg56i4', 'o5O6DxNX5PtZR-dv6upTWIvCbBf8', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/Q3auHgzwzM4ic5k5LEaKUAHRhjEZJK5hRyiaE42dqd1VkJAb7rfkJyZN8eBrQtjV9YmHZ1aQotLnug23K0ptVZNGTo5TiavaqgYpHx3icw9vn0w/132', '1', '1506083238', '2018-03-08 15:53:47', '2018-03-08 15:53:50', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('bd60c689-0d50-4697-b5dc-691f57594c33', '\\u5f71\\u5b50\\u4e2d\\u95f4\\u4eba', 'ophyRv7WkalNG7C9EWmSYudflbYw', 'o5O6DxKB_yUHgHiquNxYOOMxqx54', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpNcIgHsF4e59KkkBZSO6xdl0MsgcQM0icNliafvYT41cYbpZP2S8EceZsfD9jlHicgldbMoaucwRFX3CxvKJnpM4p8/132', '1', '1518702256', '2018-03-08 15:48:39', '2018-03-08 15:48:42', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('bdb3f349-f831-4df5-81db-9837448266d6', '\\u6bb7\\u5c0f\\u8c79\\ud83c\\udf43\\ud83c\\udf43', 'ophyRv-EyJWKjZC8pyIrXC5gYJYs', 'o5O6DxGTx7QiCZMSNoe2M3DtjpkI', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLAmRaZwHWUoKlNeN4I4bqTjTmBdfMnphx9dIwoKWNKmibbwr5IJMF5F9E9ruh8DPjz0WVzCXLEGWIw/132', '1', '1506816190', '2018-03-08 15:45:18', '2018-03-08 15:45:21', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('beef67c3-b322-4d82-9383-81cf11c1379f', '\\u7ec8\\u65bc\\u660e\\u767d', 'ophyRv4JeUFMJu-myBWiQ9keCfbI', 'o5O6DxKA8aS_xpY4mFrGoA18mczg', null, '', '', '', '2', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpNawC1UaYEiatibLGV1U1KqL15VK8E2DagrLj29iaHbsgxZHYq24icWHwRm2Dia9zJt4KBP6YzPFXZSbwmKicP52PF3iah/132', '1', '1520344194', '2018-03-08 16:03:00', '2018-03-08 16:03:03', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('bf1d616a-32b2-49f0-a709-ec47db2fb9fc', '\\u674e\\u677e\\u5e73', 'ophyRvwFPVEfh05Lb39NttAHjNxY', 'o5O6DxDfyo0Qy3gFdAHKGNMyiqF0', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/rqvn1hjHytc3vSdoPjmibxK7iaBQe8TTO30gHGb6pEpdg8Dh4A2j16Xax9f4X7P7miacVsZQx2escaFwG3dFegRJq5UAP6jLQ92/132', '1', '1506264851', '2018-03-08 16:06:14', '2018-03-08 16:06:17', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('bf3cd9b1-2545-4b3b-aee8-92cef9cd64ca', '\\u54\\u69\\u6c\\u6c\\u79', 'ophyRvw2iOzZ7AJRY3r2gf5MCpfw', 'o5O6DxHAnzJarjGiDxF3H88np40k', null, 'US', 'California', 'Palo Alto City', '2', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq00e7AlumZlvMfQmg4rvt5LliaPhO32Cj8bKv8Mm6oU6Hl0OQAHAd82icjqVILwujJxk7QEpqg3RBWxK1LnEH6icxia/132', '1', '1519743783', '2018-03-08 16:05:39', '2018-03-08 16:05:42', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('bf7573ee-de03-426a-9c1f-6dceb0f0b9f5', '\\u955c\\u5b50\\u522b\\u54ed\\u554a', 'ophyRvzZzTwJAqFyUE5Z5MPx5ym4', 'o5O6DxJUIjkz928UE6RL7OwZDZCU', null, '中国', '湖北', '宜昌', '1', 'http://thirdwx.qlogo.cn/mmopen/rqvn1hjHyte7Wg0pFTgFy3tVXhO0Ec8EhvzxXUjLUNl54hXJkN54vCUgEoicicE3HlIEHyqswGY5iaGVWXnSTxNnTs3kiaqibMpiaY/132', '1', '1520344246', '2018-03-08 16:14:26', '2018-03-08 16:14:29', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('bf829673-bb18-446b-9a5d-e2f0c08d4081', '\\u6700\\u4f73\\u542c\\u4f17', 'ophyRvzKzsU7ZGroa4DBW4NJPFXg', 'o5O6DxMaH9bDQf8Q3dvo7eb3GC98', null, '', '', '', '2', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq0uY3f5icLBshbiaCx67dTq14gf9H3qFgPcpHo5AqG5Qad6cA4mUu3rrkNMGrXW9OBBzN6e0CLqLkl75dQvypjUAa/132', '1', '1515506353', '2018-03-08 16:15:33', '2018-03-08 16:15:36', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('bf93e282-03af-40e5-91cb-3448490d9aae', '\\u95f9\\u817e\\u6bd4', 'ophyRv4quMiT1jtDAvRKKG1suJuw', 'o5O6DxNCG1JXi4i-IRlYVN4RPZzA', null, '', '', '', '2', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq15VRWwhUUgIu9YeONiahCGbj7od9ItmvDuTmJOpLSDzV72g6t0yicrY4DbYM6DmmicXvaefrNlkS718qTgzJ8TqZ2/132', '1', '1520344170', '2018-03-08 15:47:17', '2018-03-08 15:47:20', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('c0a30155-4b66-48e5-9c10-d32cb0663e21', '\\u9006\\u5149', 'ophyRv73qIrIjDRQJ5sKUul2BP6o', 'o5O6DxPauSlPBbMXjR-92BkTlnNA', null, '瓦努阿图', '', '', '1', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvrxEJliagpvwOeypiclyMAdHS4zicW7pY0TKicn8ntkHPJXtGzftWSzMuhIhVUmdamvIeV9vicnwmibmyV37vkTCrdY2h1/132', '1', '1506066300', '2018-03-08 15:56:16', '2018-03-08 15:56:18', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('c0e3f284-4977-46fc-ad0d-424b19c5ad93', '\\u5bfb\\u5357\\u6625\\u67cf\\u50b2\\u4e4b', 'ophyRv-WWwbMCKNdIZXokse8O9dw', 'o5O6DxBdlwoGsEBNEJxCCMrSVIMk', null, '中国', '海南', '儋州', '2', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvrxC7EcIFicXMWT99bFkTzafRAKdPz027q0r8MPIuwfuxXErsW5eo4MRud5hdaep3CYmubkMz3kt9FOyF86e2XpxV/132', '1', '1520344168', '2018-03-08 16:10:01', '2018-03-08 16:10:04', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('c236548b-9eea-4161-80fd-e439092a8e18', '\\u41\\u84b2\\u6797\\u4f1f', 'ophyRv6E0f2UvbyKzJb0gPLEVICg', 'o5O6DxG9KwB_5YN9oavERjyQ_FmE', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpNQkIC9Sj8jYrty0klAo48YdLobY63FJQc8SFTK4Hn757s0QqwRp5Lia92mOC5zzGQW4O6fppdFiaSVgp98axUPSs/132', '1', '1506136418', '2018-03-08 16:14:07', '2018-03-08 16:14:10', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('c24b9500-28ca-498e-843a-ebff6c99c61e', '\\u5b71\\u6179\\u5fd3', 'ophyRvxyPcjNxfIFZD7mDD1Zsb2A', 'o5O6DxMP601G9CpjtN-tECmOpTJs', null, '', '', '', '1', 'http://thirdwx.qlogo.cn/mmopen/GsJePNupiapAul2hm3ecf6hv8MwKo2Oobibpmf7AbibYVBXn3Wib6jhQAvsMib81F2uNAupgcX0BR5VzmGibJC4O1370sd060EYsb8/132', '1', '1520344166', '2018-03-08 15:56:19', '2018-03-08 15:56:22', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('c3125acc-5428-46e1-8a14-087fe6c50ad9', '\\u7eff\\u771f\\u5ff5\\u4e91\\u78a7\\u66fc', 'ophyRv4kvYkaH9JsRhmtLgG-QGoA', 'o5O6DxLAVMIKxxTou64lPkrOggxw', null, '中国', '北京', '房山', '1', 'http://thirdwx.qlogo.cn/mmopen/rqvn1hjHytdHuEvYDPu5a8d0oRgOeRQxSeicAxkPIAxx9X0Aw1qttxbDB8TmshzxwcuCYldGDgF6Qkff8LVLicWYKMKVqfn78c/132', '1', '1520344169', '2018-03-08 16:03:08', '2018-03-08 16:03:10', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('c31e6399-6c4d-47be-8145-42dadb10cec8', '\\u5014\\u5f3a', 'ophyRv9D7wXv2SHEWeGJSFhNjMLg', 'o5O6DxOfvs_tMjaQPwJR5mhXV0f8', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpP5oibib89uQc3Lk9oHD3TNNdkb5ibvWPu1tUQhT1rLbvcg36QmpCicBcTsTwvfWI2Crk2bVznHHXUHmdWr0GVP02AX/132', '1', '1516874803', '2018-03-08 16:08:48', '2018-03-08 16:08:51', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('c36bbed7-89c9-4c0d-bbdf-2ae7d5dc564a', '\\u41\\u6e\\u6e\\ud83c\\udf52', 'ophyRv7c7cnwyUiOJD2v9F4SzUYs', 'o5O6DxErtrhkAuBkqyibM4VZcK9w', null, '英国', '英格兰', '伊利', '2', 'http://thirdwx.qlogo.cn/mmopen/Q3auHgzwzM4Uk0U4PC18jKj9YqGoEDW51eVQFO0eAlkBf8UkYBribx9haI8aTUWuzj9iaruCkcraB6gfZN85KNT1NltlfB7RlefrZmKnW3ElY/132', '1', '1509604922', '2018-03-08 16:08:26', '2018-03-08 16:08:29', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('c396a560-d60d-46dd-a96e-9eae174e2a8e', '\\u76d0\\u6c34\\u5154\\uff5e\\u6c99\\u7c92', 'ophyRv4shggmqRFpe3XbrATfp9Ac', 'o5O6DxIxtivXnjQSPRJbYa6LdDeI', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpNcIgHsF4e59AttGq9yUgJvn16q1PJXaweoMvicwBicmXeJaOiaMRe1XFhvuYH3xmLUNdfyiarib7A3ImyCpNLQlVnIz/132', '1', '1516842317', '2018-03-08 15:45:47', '2018-03-08 15:45:50', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('c4cdb0c6-2545-41a4-be1a-469278e0b52b', '\\u4b\\u6b', 'ophyRv6nVKBWzlKql-a-r7FBGFAg', 'o5O6DxG3fpRxz4nWa2BuQ0IXYoVk', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/rqvn1hjHyteWSCgWn4APQfKLOLvpStPyu4icKpialSxXwQG5nnIQicH1Hf6toFCqf3BPiamWs2SNIOyicw8N61rwcrUJEnUicuB7F4/132', '1', '1511935981', '2018-03-08 15:58:48', '2018-03-08 15:58:50', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('c4dacd48-fc30-4eaa-9b30-2f56e73d4421', '\\u7a7a\\u767d\\u5c0f\\u683c\\u8c03', 'ophyRvx2shny_VFY-Adr9866QlpI', 'o5O6DxHpPJnb3c73vdlbh1zwsTBQ', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvrxkrlnqlfnjuSPOndVia9wDWsoREe5bkyb8uJwE3afK8SKAtbNpfjvwKSt2TX09GL8IHXCRETBtlBibo0A7iaeVBzt/132', '1', '1506858174', '2018-03-08 16:24:15', '2018-03-08 16:24:17', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('c71aeead-c575-4035-8075-bce354b3e334', '\\u41\\u2e\\u20\\u20\\u20\\u20\\ud83d\\udc8b\\u96e8\\u5988', 'ophyRv9IBE3DHER4Yp6VFtnVtVeU', 'o5O6DxJEGc4pNLdI5Q0Jw5rylQ4U', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpOGd4FuB8uFRWCLd8349VNrhGAhYBRe2wz1EMJ3HWL6aoW9ZGUXzpvfk7U3sPhodQ3ORASyscca2kjLOGctIlCS/132', '1', '1518881775', '2018-03-08 16:06:21', '2018-03-08 16:06:24', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('c752d825-eecf-49e2-bbb6-7846c50a1550', '\\u9633\\u5149\\u4f9d\\u65e7\\u707f\\u70c2', 'ophyRv5AKKIbuCMAC9dIsUfPM-WI', 'o5O6DxHG1EZfT6I64W_2EAO5pktU', null, '', '', '', '2', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLAqia5mmSgKx1G5zzXocKFnRicDMibbL1hvibia3DDpgqnvJLWiaiadnibDz0l5RD9LoHGC1QfkdFqy31WHwmPO7FEbCMZOVCKuSXvHLXw/132', '1', '1520344193', '2018-03-08 16:18:27', '2018-03-08 16:18:29', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('c7a29a2c-4e14-4c9a-9c0c-1a15fc592e6c', '\\u9633\\u5988\\u5988', 'ophyRv-S0YGfwJOGUBOEmphZNBzk', 'o5O6DxOC5ggBoM4JbZMu65KuH4wg', null, '中国', '浙江', '宁波', '2', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq2qnYzLFqUFeWHbgpv3iaLjHK76JKDViaF24cPAllT18vgJarEMvJ5MGzZhfqnsLAiaZSeGEEMf1aWc9BxegW9R6Ue/132', '1', '1506221900', '2018-03-08 15:59:54', '2018-03-08 15:59:57', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('c80ab959-c9a9-4a5a-90bc-3fb9b6c47e39', '\\u5468\\u82ac', 'ophyRv76CU_i0AVZVL_TDDyQvELI', 'o5O6DxMyojxGWWfosjU4bH87BuDY', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/rqvn1hjHytecSyOL1ZMHGWbrTaCHGoxozCiaNawJbExHqPeM6zvtDGWThwvcIZf31CdE1q6ec4m8wYR1ebcuuCS07uPu4JDG2/132', '1', '1506140409', '2018-03-08 16:10:20', '2018-03-08 16:10:23', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('c91c0583-217c-47a2-b57b-1a12a9424673', '\\u5030\\u7225\\u6e4e\\u8c1b\\u64b6\\u72e7', 'ophyRvzmUNTxkFmwgIigma_AYOS4', 'o5O6DxNzlP8Xu5EqU-ja0yNvz1Xo', null, '中国', '澳门', '花地玛堂区', '2', 'http://thirdwx.qlogo.cn/mmopen/PiajxSqBRaEKVgzxQl8kicNk3VYmNl71Riaqf4FCyCVdmHEqXB00s7xCdFibHbf67PoZyDYk7yqm7bXGUicwhUPWsYRTpoAujbiahColXopianDwk4/132', '1', '1520344171', '2018-03-08 15:55:35', '2018-03-08 15:55:38', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('c944a908-8170-442f-9363-39e307ee3513', '\\u52\\u61\\u65\\u20\\u52\\u6f\\u62\\u69\\u6e\\u73\\u6f\\u6e', 'ophyRvx4C9OLCO437aXSzbQx7_P4', 'o5O6DxMDOBG06OSiUnSy2gVK8b5w', null, '', '', '', '1', 'http://thirdwx.qlogo.cn/mmopen/ywAMlAnkjP907KuvFK7TIIwtghVOO3sp5M2XbzaQ9kwjkJFBhicbHMmHzCordwcYABIOKY0sGibqlPKvwN4dLgNDZ1QjVPicVn6/132', '1', '1519415488', '2018-03-08 16:14:22', '2018-03-08 16:14:25', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('c9b2e46c-ea7c-4f7e-b274-817e2e0f787c', '\\u6bd5\\u4e1a\\u4e86\\u5fc3\\u614c\\u4e86', 'ophyRv9Y2Fn6e9neG0y7q3h3eDzs', 'o5O6DxFE7CosrCtTiFbKOqUBIow0', null, '', '', '', '2', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq2JVibgHY6KjE6PdAqwI1sPUNakSFLEDIMQODLGYGCqGX3K3RrQk6OCAqGLPQk9Mzu6pbAUppkaFDGguLAJfVy9r/132', '1', '1520344175', '2018-03-08 16:17:02', '2018-03-08 16:17:05', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('ca08e5be-b7e9-4a40-9426-96eb223360e9', '\\u51cc\\u9752', 'ophyRv8uQIjjNqG_0HOS9s2TMdeA', 'o5O6DxBg2nNAGHGmTel7a9GdSvj8', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpNcIgHsF4e59Ez3QmYN6ca3qUUNYg172tIRQOY8W3aMJ3LKKicZe8aA8NLvcxyoibshFSVr1bUOicJWczxicfbfSGDo/132', '1', '1520498543', '2018-03-08 16:42:23', '2018-03-08 16:42:24', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('cb298a53-5bd2-457c-80d4-dad903fbdeae', '\\u44\\u47\\uff5e', 'ophyRv77xiv-RHLFhivmYezdmWz4', 'o5O6DxC2Lzv0YrE1XfWiA_Irz_-s', null, '中国', '广东', '广州', '1', 'http://thirdwx.qlogo.cn/mmopen/3b5dWBtwxUoAkMvIicW9KTM2UN9qVsSuKT7ldSSOXxZPicMUBxG6GbUx6S4QIGCNxyBJaFqKblXDPl7qvTheGHdXcriajDWf9CN/132', '1', '1518702281', '2018-03-08 15:49:47', '2018-03-08 15:49:49', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('cb64e358-d86e-4e91-b845-9e10766c2669', '\\u5bb6\\u59b9\\u513f', 'ophyRv-GvPlEvi_6ln96F2k1BOes', 'o5O6DxI46afhGICOFWaoChjQvR3g', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpNpJhgTlBjQcCGQravJttPWyeWiaKib9jcBPaARmEicCibUoAyMm9nLMJHSiaI7qBSPibzo9YnUeT8ptibPhgpjXxrEQd0/132', '1', '1506680469', '2018-03-08 16:08:04', '2018-03-08 16:08:06', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('cb6fbf89-2bb2-4203-9af6-a05a3ceb144f', '\\u4e45\\u4f34', 'ophyRv-0NKIaQx54hwb5ZBWf_Vy4', 'o5O6DxA3I5CKAu2umR9Bv-c_NIVg', null, '中国', '江苏', '盐城', '1', 'http://thirdwx.qlogo.cn/mmopen/Q3auHgzwzM6DXlZslHb7tWic4v1fP2AIPwvJricMMsjZL7uCvculjzoMYF33MrkuGMnKzxC3EhLoe1zib8ZHj25j03LoibN5BwFqRVDiaP8Z48lU/132', '1', '1515506376', '2018-03-08 16:12:49', '2018-03-08 16:12:52', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('cc0a1137-49b8-4a54-88ad-ab620b99e224', '\\u6c\\u65\\u6d\\u6f\\u6e', 'ophyRv4SoaRRfAkOtAYuaZnvnY_0', 'o5O6DxF0jPX24U6UW5a66XUePfYg', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpNnsdqe2l2xILunNk5Tkr8zS9G5rg5ga2mYJkQPJpx5ta5MjHxTAT2LQHscTHnAVCiaoX4E9CqibYca4BCrSvvHRT/132', '1', '1506674775', '2018-03-08 15:59:28', '2018-03-08 15:59:31', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('cc78cfd2-5d17-479c-94f0-11048bf3c942', '\\u7231\\u4eba\\u5df2\\u8d70', 'ophyRv86ozl79u_SXlKq9MEOOvzk', 'o5O6DxN6oCyX3kwdaU_GJxsEbZF0', null, '', '', '', '1', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvrxIPUorwLhwKNjway3shsvmVKzzbRKhfyBiapDuAUTFibz4x0URSPnmmHkhlHoVoPCVzMz44G78TPiaT2iac4zvHNPU/132', '1', '1520344182', '2018-03-08 16:17:17', '2018-03-08 16:17:20', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('cca14bd6-9727-478e-8a05-61630eac7e3d', '\\u848b\\u9e4f\\u31\\u33\\u34\\u35\\u38\\u35\\u32\\u36\\u38\\u39\\u37', 'ophyRv7WWvOg71KLAFoWANxRcoPM', 'o5O6DxL_sUC-r7JwCMcRu-XtgEa4', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpNcIgHsF4e59C9aRZEoUGYtYRUE9VHmIFwGDjJvmGfJNpdbQmiaGrGFfsGCwnt1TY9qPTCTJ03bnwbfDnsrjuI9C/132', '1', '1513146085', '2018-03-08 15:47:39', '2018-03-08 15:47:42', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('ccdb66d5-8b45-4a23-95d1-1a49b15f9dd0', '\\u6c34\\u6676', 'ophyRvyQCJppivH7AzNoqm9yhTbE', 'o5O6DxLZY-qTavQz9ov_VY1Uh0os', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpNcIgHsF4e59MQd5gibYqM21wZHbuslibWyRjGbwkNSyRDDCXgNgfib80EyzMRhrxu4gdHLFXO4dyXl9BFBSqMZHibf/132', '1', '1506136107', '2018-03-08 15:48:43', '2018-03-08 15:48:46', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('cd0b06dc-1858-496e-af62-074dd0294877', '\\u5de8\\u4eba', 'ophyRv4LSZeM679FFV82kChWxZ24', 'o5O6DxNGFYX_kmQkuHx7Ooc7NGbA', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/rqvn1hjHytfaB2v9bcNXIMSicNAYQn7icSkGgUC2NTNIdo2pOkib2rDMvribiapyfpGXHv0ssNQqmOiaefJNmqtFpEgpGeLA5AYGC7/132', '1', '1520585638', '2018-03-09 16:53:59', '2018-03-09 16:54:00', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('cd6a2ccc-9dd4-4765-882a-5579af652208', '\\u5c0f\\u8431\\u8431', 'ophyRvydPm1rI_oCa5XuE7qJeaLo', 'o5O6DxFQFeYQSmnjbeYUkhbB55Po', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvrxEJliagpvwOeySkvwFEYlrharGrQagyq6DmFdibH8bcmyY9DxGcXCHPZ3Wd608YPrvqfRJC4XGXBrlCBUXemX6Ua/132', '1', '1520991650', '2018-03-14 09:40:51', '2018-03-14 09:40:52', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('ce314f61-bd26-40f9-801d-fdc055c763ba', '\\u5468\\u5b8f', 'ophyRv9bE6C1rtrWs2Y9S-b9npoI', 'o5O6DxO0T69ItLdTNAqyT99A3Eqg', null, '中国', '四川', '成都', '0', 'http://thirdwx.qlogo.cn/mmopen/Q3auHgzwzM6afmdmdHrG5biaJNvCchxO6uyrLyEwhBxqjuN9GlbYibUWYOMWAIJr0zjHoI2Yw0Vutvgky8HIDQscdY5HyOj8h3NOyniclO7E94/132', '1', '1506235608', '2018-03-08 16:16:36', '2018-03-08 16:16:39', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('ce3940a1-8fcc-4bf7-99a7-ce6a8248f698', '\\u90a3\\u8936\\u76b1', 'ophyRv5UPoLlACQtF7f3OA16S9U8', 'o5O6DxIl9z_kUarmZZq6UaEyxhBI', null, '', '', '', '1', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq3lTOs9FahqNPhYgpZ7IP9AX3rqYWVVaZ7pfzdBVXiaj99Z7UGzF2kQf5jae6hC6ibFIWibR2icC0tCibAAzNPgrmkoJ/132', '1', '1520344180', '2018-03-08 16:20:29', '2018-03-08 16:20:32', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('ce800b7c-d325-4d32-b2ce-d36f7875678f', '\\ud83c\\udf4e\\u4c\\u4d\\u6c\\u6d', 'ophyRv8tOIC7DfdISrExooG1Oajw', 'o5O6DxLNJmwfBKPVm-Pq5G_PeS4E', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/rqvn1hjHytdUYxUA7rm3FNV31mdO4jpk5XrE08SwwXAjT1ib59BiaflRl7VEa7pEzY8QWWvIMXrfEujiaLHsvdxyHFtNh7zSl7W/132', '1', '1506132825', '2018-03-08 15:50:37', '2018-03-08 15:50:40', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('ce849ed2-098e-402e-8532-92a92c123961', '\\u68\\u6f\\u6c\\u6c\\u6e\\u66', 'ophyRvxdYjodmUpPvgI9zK3xTfPg', 'o5O6DxDrcTanN1VilOYm4tuYHUZY', null, '', '', '', '1', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpN9nmVt2oALM9l5HgrnjQicBV6GxKuImsVc5un2ARRDDCo0pYwyl3Rzz0h3b1n1W4u0ibib7169RarXYUpBIjE39Io/132', '1', '1520344231', '2018-03-08 16:13:38', '2018-03-08 16:13:40', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('ce8f6288-5c91-4dcc-bcdd-7e3b7b6befb6', '\\u5bb9\\u59b9', 'ophyRv1vgezzhPH0B4hyk9ptClbM', 'o5O6DxAQXkP-Fx-peQD9cs_UdIWM', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/rqvn1hjHytfsvia52YZpBULOuJAjccR4hA7hrRjmq5P95PtHGo5sbpBt4ibkofRicKnaxkibhJb8ZibIiaSPoiatibfWpiazibdBCAxcPD/132', '1', '1506133314', '2018-03-08 16:03:55', '2018-03-08 16:03:58', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('ceda829b-c8c0-46d4-b335-dd875196c585', '\\u9648\\u52d2', 'ophyRv_UyFi7oCaCEljSZ0d3PGbQ', 'o5O6DxCJxJjF2Ak5ZNix4CRPlyCY', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/3b5dWBtwxUoAkMvIicW9KTCqPvwGGIVpM8eftGm6xDCibGBSTQLEPCwicThAtIhgSqn0epwxN53dAhUULQkOjh0ChGaDJSHic98j/132', '1', '1506219845', '2018-03-08 15:59:36', '2018-03-08 15:59:39', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('cee52205-6069-4a8e-80b9-dd5f2745654a', '\\u5927\\u732a', 'ophyRvyYxmgieczyj6cj9yMzXnqM', 'o5O6DxOHakrw78sACN7UlQamvcfA', null, '中国', '北京', '海淀', '1', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpNpJhgTlBjQcB8cAl8w4IpDLqbhic3iaTp8Rib0tjW3eK8iaqIjR8j0zCn7XyGRXgqO6HzNhnwSyCe0Yc5yx5MFNcXy/132', '1', '1506677679', '2018-03-08 15:58:26', '2018-03-08 15:58:29', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('cefc93b2-e7ae-4fa4-b5b5-c8dea4661e13', '\\u60ca\\u5915\\u7167', 'ophyRv4ISIywFnfX41nK8M8IVPhE', 'o5O6DxHdVoWbDNYRop-2P_RGNVyM', null, '', '', '', '2', 'http://thirdwx.qlogo.cn/mmopen/ruofsNuhFQ1XSmqPPnKBQeFN5aGDzUgG8AhKQic4IZvZD2vAb75MxYuAeLNLiad7vfOdpBg1NUAqtXChm4rIEkuiaCY1bibYqsJd/132', '1', '1515506015', '2018-03-08 16:17:06', '2018-03-08 16:17:09', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('cff637a6-f7fb-40cb-8a2a-6a62a8f0bfe8', '\\u5f90\\u5c0f\\u745e', 'ophyRv2s3aVqXqDV001Uyg2v6n8M', 'o5O6DxINB69xzZzy9SvzGPUo_3SA', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq3uDVTxq0AwWdaouDf8pPvPX6kNBzp7SBcKevrXLvSK6kUOJkxMicvAoUlWULhfKCKMNdLW4jXje3NwFARnbhblK/132', '1', '1513816326', '2018-03-08 15:53:51', '2018-03-08 15:53:53', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('d082382c-405f-4347-9255-0871162fa777', '\\u951f', 'ophyRv0IOU9reIX5_GAH8Y56Zopw', 'o5O6DxLdaD78xzcLk61IH5LhkPcg', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvryCOfONTZE7ocn0ict9noPU83lfgT7hk5AjNCdXYNYeicYQ16Xl70LtP8Tmv9eb3KSRicnoic6gxxSCia1VdorcVroDr/132', '1', '1513263690', '2018-03-08 16:00:30', '2018-03-08 16:00:33', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('d0a9b6e3-acc4-49d2-9172-c1d545af8b99', '\\u897f\\u897f', 'ophyRv2jYmTqV7vUFAFfQuxRc2jQ', 'o5O6DxKl2sREavb1BOR6LsQcDN-o', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvrzWoiaBOvBnS194wRjlR99XeOdxosia526GM0KQhK1n6ZTmcboCjiaKmTaiayrnCRyNKyFGfFySOqAqUVicWtuuKjeWO/132', '1', '1506235645', '2018-03-08 15:45:14', '2018-03-08 15:45:17', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('d0aa0da2-a115-4acc-b310-ed86b432b1dd', '\\u9189\\u5c71\\u7b11\\u9633\\u4e66\\u96ea', 'ophyRv-yhH7tF60sEiXrZ-IUpgc4', 'o5O6DxJ9MwX72juctlG1QxAd0QH0', null, '中国', '河南', '济源', '2', 'http://thirdwx.qlogo.cn/mmopen/rqvn1hjHytcTKbmHYeOePPv5OGnYYKkzUtvicRwLVcN5ULAiaKt1yM91ibeoZSV9ib7H2BA8aqfSpbcgYUokQ2H4Rl7Cd9rnykibj/132', '1', '1520344235', '2018-03-08 16:16:51', '2018-03-08 16:16:54', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('d105015e-683e-4ddf-9171-d6f84ac35b21', '\\u309e\\u3001\\u96f2\\u7aef\\u306e\\u7434\\u8072\\u30c5', 'ophyRvztkjSW4FQA1d2sLF3FOPLY', 'o5O6DxNqbH724LypjQHxMLwH1EpM', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvryQnquQc1Cicds4urXrbTqq0hw4cGZdmSnLhriaWSqX7URTDcub5pFAqPS49e6gH6ibfmCSXFxxfzKuenmjpFD0rcR/132', '1', '1506858644', '2018-03-08 16:23:19', '2018-03-08 16:23:22', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('d12a1c55-18ca-4010-9a1b-df4fc6c2fd17', '\\u58\\u47\\u48\\u79\\u57', 'ophyRv2VymI9uj15R9n10Am6J2GM', 'o5O6DxFgFO-Tejdy8OTDjKzPciao', null, '', '', '', '0', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq0AB7vaKQp85AHKleCBCGgd75bHR62AE2ickjvbwgCXNn6dDM8jZnz5sak3dCDHd4ia85gEXibiaC8g5N3PlwhWfwpd/132', '1', '1520344170', '2018-03-08 16:23:31', '2018-03-08 16:23:34', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('d14a6374-289d-45c7-8145-1ee01079e683', '\\u5434\\u94a7', 'ophyRv5yUXnPFqnjqOr7xp4dJnZw', 'o5O6DxOS2kBcoWmSIIwg4rvxCxhk', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpPJ1hm0omJr8bmHvYR6JeiaUWumJl5hLpia2rQXt5iaia6PGAtnyhBWwRlI3hcSgbrPG22iahB4Hb0lv1y9o1TRLAuVG/132', '1', '1516509445', '2018-03-08 15:57:33', '2018-03-08 15:57:36', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('d16fd0c4-cc02-4181-8029-d27d9bf377a5', '\\u5d14\\u6c38\\u80dc', 'ophyRv8xzwNvadwqk6pHw2Booa2A', 'o5O6DxMM-9lbQHnXKrQvg6qOW7m4', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/Q3auHgzwzM5Wmb8sPXmOMYUtNFBSoTiaeDuiaUbJMaYic1YePmro1SOeIy0iaib6FHpUeX7fgHKoicYz3CZULk5taqWNxSkiaW1TBfVcZpk0zMniaxg/132', '1', '1512629225', '2018-03-08 16:09:39', '2018-03-08 16:09:42', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('d1a0346d-5305-4be7-b2bd-bc0275b774e6', '\\u5c0f\\u71d5\\u5b50', 'ophyRv3tenMqbWNsTf9v0XYZg3Sc', 'o5O6DxFLInz_0gx1FLcc58YwOO2c', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/Q3auHgzwzM5NlIEh23ibtBZtkJLibFx7Ya1fTzicfVyng7hibVZoiaqrFdEIrvcJEjdiaLvoshrP6WSwOib4RCV1vvyI4kpy9Uqh4Dicf9ibFoYhZqkg/132', '1', '1506232800', '2018-03-08 16:23:38', '2018-03-08 16:23:41', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('d1ff6cbf-4beb-4067-84ca-5556da64c188', '\\u8001\\u592b\\u58a8\\u548c\\u5408', 'ophyRvz-UwjVf2OwXqpGCK5oyWYI', 'o5O6DxDPjvcDSKcE0ThFVyEK7C4s', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq2qnYzLFqUFeRPeCEbGxa4gDmuabyKXkAt9Z5upfPsm7TJD3CNb33cN84ibn6jUVCuJOADfh6ZOsnq4ohMoQVv55/132', '1', '1514881254', '2018-03-08 15:59:47', '2018-03-08 15:59:50', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('d21e34ca-a505-4c39-9a47-1b2d28109bf0', '\\u4f\\u52\\u72\\u44\\u67', 'ophyRv8lei3H45lfgLIirQWyuhgk', 'o5O6DxH3I8a1I1QU5CGM3tRSPMfM', null, '中国', '', '', '1', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq1dFPbB3eBeWODGLBbXVC5b2YqcNmVod2hskGJibGfkMplhOSUBuYwMMwV1YK8JhlDupsloQ6AQadF6tBFWSjKX1/132', '1', '1515506040', '2018-03-08 16:15:18', '2018-03-08 16:15:21', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('d223add1-e5f8-4614-bec7-18736f74d849', '\\u671d\\u9633', 'ophyRvxRO50xtWQrnrV00tl143bs', 'o5O6DxMKA1jSOH7-arzi-6gEulcw', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpPKIaJ0Z19iaTKYGttRnkjibXu41s17GnjfT5sh79ia5oWcbdVB6X2LHfiaxJXRP0ulCor8ZM3KEJibpbh11vNkbzAzS/132', '1', '1513152639', '2018-03-08 15:54:27', '2018-03-08 15:54:30', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('d2611a7d-1eff-42a3-be63-dc4a3731c2e5', '\\u8c37\\u6ce2\\u7fe0\\u6843\\u68a6\\u5c9a', 'ophyRv1zQwSSkJ-mDAmnTJEiv7vI', 'o5O6DxPZIakoEK2AdxIfptO-aF-I', null, '中国', '贵州', '六盘水', '2', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvrxj22SYT69Eiac2soC9eiaoekuQcFgmic5ebJVPy0mCmJaGI8MNvFicEWlAm3Jo5q9oLcz63wibxmNUgiaGps4amx5n9u/132', '1', '1520344170', '2018-03-08 16:17:24', '2018-03-08 16:17:27', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('d307fdde-2794-4890-84b8-32e05a6b2bcd', '\\u8bed', 'ophyRvxkP8u6WtAP6UnisqbUkoM0', 'o5O6DxPKrVgP14wVWrs2eagqzRRU', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvrwkJCn6KHMDCPhVeibXOf4QyBXic7ibtx3KCjs56yMHURJKevB898WNaLnanicx0eAsws7RgnW92FnTicBicrCg3HbxPo/132', '1', '1506684306', '2018-03-08 16:13:04', '2018-03-08 16:13:06', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('d31ce4f3-13e7-4e3b-9dcc-67afa00d8018', '\\u4f17\\u884c\\u5929\\u4e0b\\u20\\ud83c\\udf89\\u8302\\u6797\\ud83c\\udf89', 'ophyRvw-iZI2T-asNTaG57sRiHJ8', 'o5O6DxGVpwckJ1jJcGbixZRV3JKE', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvrz7O3eBueku6JTqsV4Vs7FBvuZPv7ovRVFhyqnLRdNGzGLv5ACUd450YvoIANdme5vGh62fBWqASnYflKxAOicO3/132', '1', '1514216902', '2018-03-08 15:52:35', '2018-03-08 15:52:38', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('d35eb431-16ce-4690-8997-6ad399466ac6', '\\u5de6\\u9f50', 'ophyRv6P7TDN2Sgxt4zxJX-ZOPSA', 'o5O6DxJU7CncUhQbOKCQRfUDemYE', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpNcIgHsF4e59HDFLJsUKibbkFSL0FH2HgdnnQpX7lJONmFTSV0UMSYEic2Zyp0jYVygQHg1tYE7qWkNibYe9NmEI8s/132', '1', '1503218801', '2018-03-08 15:45:04', '2018-03-08 15:45:07', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('d3e7d4ba-a51c-4496-833f-905587a59048', '\\u8881\\u6cc9', 'ophyRvxR2wOEY6aeF-40t9O9C-8Y', 'o5O6DxCHv5G5osfniZFjFojxiCKU', null, '中国', '广东', '汕头', '1', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpPKynnRHiaGDruzDmvoIMibW8y99dABiaIWqJ3sU1pibP2O7pBuaD7peDIac5RPackH62ZcCTkYun3wNtibhoRGpvgys/132', '1', '1520344165', '2018-03-08 15:59:17', '2018-03-08 15:59:19', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('d4370227-17b7-42d9-9a3e-09637e3c4f07', '\\u8fdc\\u65b9', 'ophyRv6DQdYBEmON8Kc4ARiYK7w8', 'o5O6DxE8KOM9C8lkgjBCHAR9v1P0', null, '', '', '', '2', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpMej9CSOpic26RqTPBmLZyVKjsnfibr7aHxOGkWV68kI3P8KXGLKC0SScohp1R7laaXj5qBG5ZD2OjNa9C9qYKads/132', '1', '1520344221', '2018-03-08 16:16:02', '2018-03-08 16:16:05', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('d4eeede8-93d9-4ae7-a9fc-dc6857b7cb48', '\\u6843\\u5b50', 'ophyRvy2XRCGsuWtqFerTT--icpo', 'o5O6DxGAwTNcGgR9I9Arvqb0yi2Q', null, '', '', '', '0', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpNpJhgTlBjQcPAvn3PhTOguXyGibicvq49rg1bPTp1SjDN9kvCiacNEtnMusMtrae3eON2lLx3Jg0HoC2DDL1Wh1ibw/132', '1', '1506134552', '2018-03-08 16:14:14', '2018-03-08 16:14:17', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('d524d1d5-db6b-4238-9857-c38614525c85', '\\u5929\\u5929\\u5411\\u4e0a', 'ophyRvxpKIbh3onx22-MHcjPdfmo', 'o5O6DxOhRl9eN0n3XYeMkL4TBPR4', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/BEH5BnYUfwCibRZLbg7bVdZoTicVINv6lND3WACJPJpicme94aI45vdJDI36ibwOQNUofgOiaoYULjNIwMwPk5qzC2Za9fGtLKRWF/132', '1', '1506137373', '2018-03-08 16:06:57', '2018-03-08 16:07:00', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('d542f900-f36b-49da-b171-b2541f83e891', '\\u48\\u4c\\u5706\\u68a6\\u65e0\\u654c\\u56e2\\u961f\\u4f59\\u4ead\\u5a77\\u7ecf\\u7406', 'ophyRv-k42Vg4nAE2J88TTgRFHxw', 'o5O6DxAg0eUbXOCeg2nj8rhaJKXg', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq1xJDBPKhTsBEd2mB7TNNal0EnDPf8ItOehf4BILt58ECicgK41XlXOyCfy4cOibrD6FicqibQcgCaVGdRkOemSYLtX/132', '1', '1506130125', '2018-03-08 16:11:45', '2018-03-08 16:11:48', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('d579af29-378b-4ec7-8522-0dbeacbe4435', '\\u82e6\\u7b11\\u8fd9\\u4e16\\u95f4', 'ophyRv5ZU1NdUv0lUhOF8oEYNF84', 'o5O6DxAF1It53cw4ATnJWlv1-vBY', null, '', '', '', '2', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvrzJsGyADOGyBG8ick3HPlg2wRxknN9sQPSxvqdY83VYwrOJ1Y73NicFa5cdZiaO01XgK1tiakxGBo1cttBgKHWK98OK/132', '1', '1520344187', '2018-03-08 16:05:06', '2018-03-08 16:05:09', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('d590890d-7d05-40a8-8433-624804b16c31', '\\u6500\\u732a', 'ophyRv8c0IMU0PXV3j3knjjWJteE', 'o5O6DxEIr-HlDQbvzwocNOc1t8yk', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvrxdQRtnvjdKqyEKorzOwm6GBoZchicAhcByiblkcMWwyicYdXceaibcKWfEhAsBSNU5xmM9s72JPsdSk8A9q36mLpzs/132', '1', '1506132929', '2018-03-08 15:55:01', '2018-03-08 15:55:03', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('d5c41fa9-69b1-4201-9563-fec3b4177786', '\\u78\\u65\\u6d\\u6d', 'ophyRvzZNABx6L_YpZoAJpTF7MTM', 'o5O6DxAlXQGgA87E0P8kHkzrBdLI', null, '安道尔', '', '', '2', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpPvydsJrdQMd9bamcZ0dB4x093RhZkRvPm0zMtENmzJliawD2uhsiclBrggm7m4FfrrEu15XZ6c1cYtvfggcJldHB/132', '1', '1520516670', '2018-03-08 21:44:31', '2018-03-08 21:44:32', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('d6423ff7-d69c-43eb-b02c-6af1cf087ed6', '\\u5f20\\u9759', 'ophyRv9UmA98T4yL3qiNrk3qF8o0', 'o5O6DxCaD3g4OVN_5NRqueZuFVGc', null, '中国', '四川', '雅安', '1', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvrwn7iaaIsTF7hZK27qpticH5xSawBHZbV5fA3uLUbH9TzaY22K6Pz8ic1Seibl5Wznoyfs6NW6kqJRrxj7xLCO2Uyeb/132', '1', '1506220463', '2018-03-08 16:12:42', '2018-03-08 16:12:45', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('d6b63122-075c-4d64-a9a1-9f037132ac50', '\\u8fdc\\u79bb\\u4f60\\u7684\\u5371\\u9669', 'ophyRv2H735dibMnet8DZSAytA4o', 'o5O6DxMpmq6gEFUpuMAYbIokUU7Y', null, '', '', '', '1', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpPziaPYYDVOWSicKHCgicepdc4Cyo3pBWWuqtdnoo7vnFEw9bROgX4WMtq8GxbFSqfAmS8GawXibbLZsvuLJ57VTn8c/132', '1', '1515506014', '2018-03-08 15:53:13', '2018-03-08 15:53:16', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('d6ceb523-8947-4d38-b64e-0606b5040c95', '\\u522b\\u8ddf\\u6211\\u78e8\\u53fd', 'ophyRv43JAhbKpd3uMlfJx1METKU', 'o5O6DxBlfSSuycOA-KltP0z_xXyw', null, '中国', '宁夏', '吴忠', '2', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvrwaAiarbkG5Fpy611wkclVGDB6Pun7WNXOMLsgVjMzdqrVIfXITbbiaVahaNB4vqOzk8pzoz8bR4uhibIsaKribicORq/132', '1', '1515506032', '2018-03-08 16:13:41', '2018-03-08 16:13:43', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('d6fd7094-21dc-450e-adc4-d7aed925f830', '\\u9a7c\\u5c0f\\u5b9d', 'ophyRvxXlmtUBQ_OxLIHiOuR5rOk', 'o5O6DxHF1omz5extX-GjV63xg0Kk', null, '中国', '北京', '', '0', 'http://thirdwx.qlogo.cn/mmopen/rqvn1hjHytfaB2v9bcNXIPqJ8aYyBzAv9nlaficLGMfL4weAxYOWBzlM6cUsyElCOVVAFBzb7LrImobBN5a9JdThKKvoCjyRw/132', '1', '1517969188', '2018-03-08 16:18:51', '2018-03-08 16:18:53', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('d81c1c9d-0256-474c-8b55-d654f50edfde', '\\u6570\\u636e\\u4e3a\\u7a7a', 'ophyRv_9ZB2eAj6Mv5n5-PSM8cYw', 'o5O6DxKpmziOgzyK73P9fK-ikODg', null, '', '', '', '1', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq3lTOs9FahqNGR9bkSgiccjUmzrDDEEdDyoULQ7zicWLRUD56fYlsyWicTSMxY7IaWEJ2kiaIItCAibZ7xOGCBXzia81L/132', '1', '1515506015', '2018-03-08 16:21:49', '2018-03-08 16:21:52', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('d8c12326-f426-44c5-9b54-4c373cb2f740', '\\u6570\\u636e\\u4e3a\\u7a7a', 'ophyRv8VuX8HnXbT44b2XpskGE5o', 'o5O6DxAWyGAvgFYna9lf0nikdiHU', null, '', '', '', '1', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq0E89ibIfSickiaib1O9ibaOXznYWzmQicsj64icjLEQHWFud52LMqu46ebCsMC7s9DHxg0bcq0BvyUxYlApd2QSnz3NNl/132', '1', '1515506349', '2018-03-08 16:16:47', '2018-03-08 16:16:50', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('d8ec9c87-5391-49c7-ab4c-c25724769185', '\\u738b\\u5927\\u7237', 'ophyRv4BdWpBiSJsUoEBaqcRFWaI', 'o5O6DxLUtNmEZUqLBAfaBu1bHjt4', null, '巴布亚新几内亚', '', '', '1', '', '1', '1506220336', '2018-03-08 16:02:56', '2018-03-08 16:02:59', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('d8ef4046-73e9-4e7b-809b-4467b4165818', null, 'ophyRv5jloBErF0vS47mM5Q8qGp8', 'o5O6DxKIC3qPe_Io94YRuXhz5Rpo', null, null, null, null, null, null, '1', null, '2018-03-08 16:16:58', null, null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('d983f1f3-d852-40de-91f8-5d8884008d12', '\\u5730\\u6ee1\\u67d4\\u5149', 'ophyRv9VsXNELNeXOwiyx-xJG_M4', 'o5O6DxNShjrhBR_dEmPutmpFLvZ0', null, '阿鲁巴', '', '', '1', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpOlW3Tavm8DChC5a2CibDDtmqLo1CH9vvhJNibtepLkuPPFm3Tm50gre8e6ExJVic4C4R1n6KC0nZGDQ0Uy7YGic1iaW/132', '1', '1520344164', '2018-03-08 16:19:59', '2018-03-08 16:20:02', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('d99b3502-8624-4cd6-ad64-42aed0657125', '\\u5bfb\\u51dd\\u5143\\u7eff\\u767d\\u6674', 'ophyRv9-ed6BkvwW_uAE6_pxwafk', 'o5O6DxEj_BuAT_QWOwVynzLYZ8hU', null, '中国', '澳门', '花地玛堂区', '2', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq2JYiaVsXibAOXDblpC0chhUkX6rpf7VoMAX4kNdC6gnPsuR91VibF4F25WG4mZoUwgq076dQ52JL74sGlXo3R6t7v/132', '1', '1520344167', '2018-03-08 16:19:37', '2018-03-08 16:19:40', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('da07822f-8d94-43a6-848a-61690238d64f', '\\ud83c\\udf43\\u53f6\\uff0c\\u96f6\\u5982\\u96e8\\ud83c\\udf49', 'ophyRv5SlhmdrU0_x8yuTHGkXOe0', 'o5O6DxHYJjrLOolLqttg3OQ3wy9A', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvrxt6YWiajaX1NZViblROFWFcXJ2743jQ4avoIOS5VmeQbzMQZ5kUOkTmiaiaV3fibT5AJKXZVXlPhuzgSymHduPVvlAe/132', '1', '1506138512', '2018-03-08 16:08:15', '2018-03-08 16:08:18', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('db2b1b63-d09e-48c3-bb34-2b6a622a6b88', '\\u707f\\u70c8\\u738b', 'ophyRvwMRslbFBytdGiVo30B881s', 'o5O6DxO3py_ANeAMJl7TA4KarRLA', null, '', '', '', '2', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq2KWl4f4bIx0icPXg7yBlPaxVkB1MLs3vupAuMJ3JKTjuTZdQ6WvOibl2cN5xcE5Fzkiaib9Ir4Tk9AM6qiauBiaKthsM/132', '1', '1520344183', '2018-03-08 16:06:50', '2018-03-08 16:06:52', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('db5979a0-424b-41e3-8286-f849eb009d30', '\\u78a7\\u66fc\\u521d\\u8776\\u95ee\\u9999', 'ophyRv6sSE8nRa-yyy_p5XW-uJ3M', 'o5O6DxPUKgB9V1LOfNVFRd2VGCXo', null, '中国', '湖北', '恩施', '1', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvrz3KLXN0grzzwkic3U7yxLGkiczojysz27WxVUcYLy7AMPKnkP4xLgJ7ZrFia5GsfibkAeymc9Am5J5solhDU2p35Of/132', '1', '1520344167', '2018-03-08 15:52:06', '2018-03-08 15:52:09', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('db915853-e58f-42b2-8489-9a0b17f795bb', '\\ue32a\\u3002\\u6d93\\u20\\u751f\\u20\\u3002\\u7e', 'ophyRv-vzJ5ylImusDxtETwfcJA4', 'o5O6DxFgnL2Jzeh2uphDFXPFdeuE', null, '中国', '四川', '眉山', '2', 'http://thirdwx.qlogo.cn/mmopen/rqvn1hjHyteNwgye1FfknNgX7VXAmu914smT8h7kskRxn6yUgs3VicsianCVV828h5iaDe1zlkAwbSh3UrFs3wzFfZNWpAuFA19/132', '1', '1515502434', '2018-03-08 15:58:22', '2018-03-08 15:58:25', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('dbb7d145-3297-4aef-adcd-6b60565b9208', '\\u74\\u66\\u67\\u79\\u35\\u36\\u64', 'ophyRv3DDU0m-Uua6f-SmZbYQ4PU', 'o5O6DxJQU4l3qnma5tHYxfzjm27E', null, '中国', '福建', '宁德', '1', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpP3vPPkpuPwAY4bHLUjHZLPpRvgFyPAB5s0NbIIEVfs9SzcAeQYzicCzjPvaj77C5GbU2udicWMhUBzP8EU5BqHZc/132', '1', '1520344238', '2018-03-08 16:11:20', '2018-03-08 16:11:23', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('dbe2d892-96f6-4d5e-bbba-4e9d971756e8', '\\u4e54', 'ophyRv79vBw8Dsq_mNHM5yDR2Jfs', 'o5O6DxK1obEzhO9YIrCSRTsBAuC8', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/rqvn1hjHytdn5WKDOGiaqaK30Mt0iae16UMiahXa8cVic0UZh6HwicNoibEEODbCI5icpOtvXSvYmn0picmRWTmVuNAFl7iarb8A79pSib/132', '1', '1506858702', '2018-03-08 15:55:20', '2018-03-08 15:55:23', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('dc45a062-657d-41b5-9efd-2568debc1fc8', '\\u4c\\u69\\u73\\u61', 'ophyRv7Fex143G5YcHF0s3DFPe-Y', 'o5O6DxDba7oZ3tDpgUhMccfVkN9M', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/SxM13k2ibwyBibHQoYdWAoh9ibmvI6YKx0bfWGmN8Qia9er1Q6Wv4Fjr55cgR6Lzz7PwsZvpEiaxRWSoNLnyUbicLiaSKloE365qq8q/132', '1', '1506858279', '2018-03-08 16:07:53', '2018-03-08 16:07:56', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('dd4d91c9-e4b7-45a4-b5a5-05a1561744d6', '\\u96c5\\u67cf\\u591c\\u767d\\u68a6\\u5c9a', 'ophyRv3d3Xx-Z-2S42ULgtFF02nY', 'o5O6DxHa-_8Szt54A0g7c7VeAFBU', null, '中国', '海南', '保亭', '2', 'http://thirdwx.qlogo.cn/mmopen/ywAMlAnkjPibNTWOCDtUakHvPLicJ1Jiby9LKdjYMnibUM2iaSbWN3sZYwLzb31Piad5kaQPILd5Ly1smSKY1Du9w38HaC1MibMtUiaM/132', '1', '1520344238', '2018-03-08 16:07:15', '2018-03-08 16:07:18', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('dd84f5f0-cfb9-4f57-ab3d-4407d4d702bd', '\\u4e09\\u59d0', 'ophyRvzwNzsh23dOWp7S1ZLPfd0A', 'o5O6DxAMLTZ-ivQcUxcewQACe4YA', null, '', '', '', '0', 'http://thirdwx.qlogo.cn/mmopen/9EzCoJDswGyIhdMiciarZibbEybNlODYg2QIqXOgulcCsbiacWv3icxXDXTicT73n3RW3jbtLJxymRQ9ILj3SIEaWffRbypbQruEhu/132', '1', '1506217514', '2018-03-08 16:24:22', '2018-03-08 16:24:25', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('dd868972-be27-414b-85f2-4ca1785eb060', '\\u79cb\\u98ce', 'ophyRv7NrLJ4L73yBeFwtVnuN89o', 'o5O6DxH7768V-iNkvu811zIFt0hY', null, '中国', '上海', '浦东新区', '2', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvryQnquQc1CicdiaQCicgGfR0331dKjb3zia8V9ZmDr0ibzMtqc3bBs8sUmN12PpNh7j0vabZF0gic74ImRc95uC8zphtJ/132', '1', '1516018881', '2018-03-08 15:58:58', '2018-03-08 15:59:01', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('ddcdc2dc-2535-43de-a382-9e18ca9f6a78', '\\u5e78\\u4e8f\\u5f53\\u65f6\\u4e0d\\u8981\\u8138', 'ophyRvxjygeY7wXu2hgNHjWq-Nns', 'o5O6DxCaZUgqWvpgT5tXTt6p2jCg', null, '中国', '吉林', '辽源', '1', 'http://thirdwx.qlogo.cn/mmopen/9EzCoJDswGxa4EdEYeyJ7l0giaSOUlYwzibgtjryH5W0DDOibz0WfNyBvfKxY3azcfkWGtswco8D9bH3JEuoC21Y6K5nKrNx9zc/132', '1', '1520344175', '2018-03-08 16:16:17', '2018-03-08 16:16:20', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('ddd7896c-77e0-4409-bd66-f9ebbceac1f2', '\\u4ed8\\u5f3a', 'ophyRv_iJi43is4J23sKO5uy26ao', 'o5O6DxK3XMcw18MgG-t96IcC6qYk', null, '', '', '', '0', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpMUmiaNeYpOe7ibtdTNUkHdicPgJwXBUWS77QRiah3P2RFJjY7aN47d0cgQZlvSwYKKTL0FebPVLm6l9CrdF7UwuadY/132', '1', '1517966510', '2018-03-08 15:56:53', '2018-03-08 15:56:56', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('de847c80-6342-4df2-b81e-3f79c0f5abdd', '\\u600e\\u6a23\\u4f5c\\u7f77', 'ophyRv0qMw2nW7wIzF95pscgxnH4', 'o5O6DxGBk4Zkpv6TYWEZ3TB5mkDo', null, '', '', '', '2', 'http://thirdwx.qlogo.cn/mmopen/YcWkuiaVVRxy0VJD4zYrueFxQZEow7vZpPxl0yGibrFdywGIeaaoiciaFZLiaiaHSNmDWSVd98SxYd4bNIe92ZEyTogDSyibib9lYUfz/132', '1', '1515506022', '2018-03-08 15:57:19', '2018-03-08 15:57:22', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('df766a16-86c0-4ba8-b7b0-7503a19d7802', '\\u8f6f\\u6bdb', 'ophyRvwMKIY04uCMvifRsP3lJcuw', 'o5O6DxKXm2HO5AU5c0Mm0E9ubBwg', null, '中国', '浙江', '绍兴', '2', 'http://thirdwx.qlogo.cn/mmopen/rqvn1hjHytdYicm7MFwgQtceqjicWPWf9ER79m6F4NzFpGfM1iaobMtDtRXTJme62FOCyIQYtcrcPacicpGyJGaXwGHGakibtoSs3/132', '1', '1513150199', '2018-03-08 16:07:00', '2018-03-08 16:07:03', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('df810f14-d852-4d52-82b3-f4ef60a5dd60', '\\u798f\\u6cc9', 'ophyRv3IGDnoiZ-JNCQ-Z5ADjq-Y', 'o5O6DxEyfQ-aFS0WiSSQDwHDpNGY', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq1lLBia5yDNAJ90KECuSNEysGeOfZUfAXgb5WE522QZrSDnrk03lUwp5I3IcdxibOu3Hm9OwIB7C2ErPiaUauh7cUic/132', '1', '1513828795', '2018-03-08 15:51:29', '2018-03-08 15:51:32', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('dfd733e7-4096-4d0a-a385-adfef51fccc3', '\\u5c0f\\u6587\\u540c\\u5b66', 'ophyRv5lBaAtNH9jfzUaBti0qjbw', 'o5O6DxAPzsoHL2YrORsCokXj9B6U', null, '', '', '', '0', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq2YAuBD4XbfCfIprDRrYWSlcZmJMo5HG0HZXDQtcCPOc489Xicead56AOFic312RdicKiaa1CtA9qSztRQdGSiaYmUek/132', '1', '1506236684', '2018-03-08 16:07:19', '2018-03-08 16:07:22', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('dffb7375-95dd-4d8d-a177-9e29ae8fe1b0', '\\u6a58\\u5b50', 'ophyRv6x4yUcYYQ2hKfpB53NKOBE', 'o5O6DxG8bUuJtc9piRxjEv_Chty0', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq2VEg1bfH2GSZ3t9YYJibk6GaLoAGMexWA1qWyflghiazkI2KuiaQNoEu11sE3hZW4R7BibOLJGLdHcpJ7CPewyC4Be/132', '1', '1515953379', '2018-03-08 16:24:34', '2018-03-08 16:24:36', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('e030c455-36ea-420a-a624-5f376f164f3b', '\\u5f00\\u5fc3\\u624d\\u5e78\\u798f', 'ophyRv6ntAGMKj8J7TPgLdiVd18s', 'o5O6DxO7kzTXLiq9HzIOex-Ba1xU', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpMCEROEo9wBcLgxKMQ6OicJxL0MvcfSialhs3MP7zr8Pb952mRlNn5DofqbZSULMTDvpT0dMGTv46YqTPEQppnDTj/132', '1', '1506217415', '2018-03-08 16:08:22', '2018-03-08 16:08:25', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('e11b5b83-cded-42dc-a2e0-5556843c084e', '\\u41\\u6e\\u64\\u79', 'ophyRv9t9907lq9qqxP5hphVZi18', 'o5O6DxLZq5kaP3YVK_Vc33_868lQ', null, '安提瓜岛和巴布达', '', '', '2', 'http://thirdwx.qlogo.cn/mmopen/rqvn1hjHytfAicIhCiaiacEo6yxj9OtNCVpHHO82f54NMhNjNJGsibGOsIlJE00UMO7nuE41Y3k5s2IYCSn17srqIzseH5WF3p8U/132', '1', '1506138628', '2018-03-08 16:21:08', '2018-03-08 16:21:11', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('e11bb455-27a2-44f3-a3f9-13f89dbc36f7', '\\u6cd5\\u514b\\u6cb9', 'ophyRvz7iMKaop3OqPBC8PPjDQRY', 'o5O6DxBRXFdDJfr5Z_APWcjIH-zA', null, '', '', '', '2', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq18N9k4aZNfl9PvP29FgSib5NOWNfrjTsBqQgkrWmhK5uhEGRUBDVAOmWDI0y6EdVOW33Z5zGmDxIqGAwfZKuERn/132', '1', '1520344189', '2018-03-08 16:15:22', '2018-03-08 16:15:25', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('e12c5de1-5d9b-4ca8-923c-f0ae6aa40254', '\\u5c0f\\u654f', 'ophyRvwtg_mEjwfJZyHYZL8lYE2Q', 'o5O6DxKLYaK7UD6MCeZX4PxXy5R0', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvryy3qFWtTWibN4ABHvEsTqVnIs60ibzxjZC3ph9tYHvkRJ1waBnuIFOO6PWdetaiaiaRK4RtTl989gtaR3X3oxSm55g/132', '1', '1506136410', '2018-03-08 16:00:52', '2018-03-08 16:00:54', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('e139c6bd-cb36-48db-aa43-7175b331decd', '\\u519b', 'ophyRv9SvrHIdpf1DQr6_XQ6JyuY', 'o5O6DxCVG0OPQwdG7oHpEUSoS3d4', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpPnKSBeCocKZoIN8SSmH6kjfqjgxfdvLyX0kAT7cJT5dhZJnrSkGIicpp3e6bV9puxSS8OpibNw32UamRduvPvAKX/132', '1', '1506233529', '2018-03-08 15:55:04', '2018-03-08 15:55:08', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('e28beb5e-1233-40af-83e2-dd5a7e1ceb1f', '\\u600e\\u80fd\\u591f', 'ophyRv2UBLWjm9aO-W_yvp6LQSg8', 'o5O6DxPUoRutSfeixrMSqKrHUAKA', null, '', '', '', '1', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq2kQcfGEIx9DL1rQHIOPpibjy1TkoCLq5icz1WrbnOiakNZuiaYXD10z50EdNaHb6HtmfH0ao5T7RBvCwNVfdpWe3dQ/132', '1', '1520344221', '2018-03-08 16:04:51', '2018-03-08 16:04:54', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('e334d812-360f-40d0-9f08-b303ecc05cfc', '\\u52\\u6f\\u62\\u69\\u6e\\u51ef\\u6b\\u61\\u69', 'ophyRv7LKqUXmXNOe1ug8DTGFkks', 'o5O6DxDdGCuDNQb3hm5HvR6Q-NbA', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/Q3auHgzwzM6afmdmdHrG5biaJNvCchxO6HBic3BjeFicPp6NOoiaeEVph3asuIUxmpcUkziahu8SN6lkicgQ6jhwTBuJLxX9UfoHTkdG86oxA5wvA/132', '1', '1508854643', '2018-03-08 16:15:15', '2018-03-08 16:15:17', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('e34a2efd-7b9c-4908-a659-0c415b18e190', '\\u72\\u6f\\u6e\\u67\\u78\\u69\\u6e\\u67', 'ophyRv6SUCfs9oMsrkC8ovtdk-pA', 'o5O6DxAv6b4i8USrzsCLYUw5as6c', null, '中国', '北京', '东城', '1', 'http://thirdwx.qlogo.cn/mmopen/Q3auHgzwzM6X0Q4mhkxnYCJ9Yw9S9ByRXpSrrshM8pBNQc0mrKpCkT2bYcAMaCODUgZRKwWRMmjjDge7TLVDG0sFZnOTFAoU5tmyV8ia9EBA/132', '1', '1515071137', '2018-03-08 15:54:01', '2018-03-08 15:54:04', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('e3aec5da-97f9-4d7f-99c3-4afab9fccabf', '\\u41\\u6c\\u69\\u73\\u61', 'ophyRv9FlY2xPiNX72LYByv1Ju9I', 'o5O6DxDTkXRG7GUfL527d8oM1AYQ', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/s1TK4SnsSzBA4hz9dia1RFuZgY0iaec4VicOeKgSuGHUc8pA9KWWoY3sIE4yQf0dnWFkyUicUVZHfFQ7Az2vmKoQsficEqEfMVs6j/132', '1', '1518007681', '2018-03-08 16:00:15', '2018-03-08 16:00:18', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('e3bea1a5-b430-441f-95c0-b4206179b20e', '\\u5929\\u5916\\u98de\\u4ed9', 'ophyRvyFTlXGXF3Ri9FA2E4aLXUU', 'o5O6DxO5-Y0i9RgOQoIctVR5Vkgo', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvryQnquQc1Cicdl7GSozVWsgFnUgGEwYXo1O3USmF2uLK1l10rhLOnuKpoib7UficeVQibycJag9SQjHLQ7SdETz45IS/132', '1', '1506134153', '2018-03-08 16:07:12', '2018-03-08 16:07:15', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('e3fc9e5b-6348-4dc7-9b10-16424d10c12e', '\\u4c', 'ophyRv7DYGeNIxf7ychBNJ9XCgMk', 'o5O6DxFVyre4nvSLAYSXK_bGxQf8', null, 'CA', 'New Brunswick', 'Saint John', '1', 'http://thirdwx.qlogo.cn/mmopen/PiajxSqBRaEL6any4qkxrvDJabn6FGIDQrQfDgv7m3yicaicrNcoeI8s0o0TeZciapBCnL6tyVQI0t0nw04Mb4RQSw/132', '1', '1506825208', '2018-03-08 15:48:01', '2018-03-08 15:48:04', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('e565f993-59b4-451a-9ef0-7ffcf1120621', '\\u897f\\u884c\\u7684\\u8fbe\\u897f', 'o08dF1IAGlE1HkGhGL_nDxCQrjJ4', 'o5O6DxPHQtGLO18IUjamKae4vjEg', null, '', '', '', '0', '', '1', '1516859503', '2018-03-09 11:51:56', '2018-03-09 11:51:56', null, null, null, '1', '119', '118');
INSERT INTO `focused_user_info` VALUES ('e5c93e1a-f726-40f9-9ee4-382d8717a342', '\\u5c0f\\u4e94', 'o08dF1MfYGHga0aXrlCpThEC49ps', 'o5O6DxBZKm7VMRkSkvWYvTKM-4aY', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpNpJhgTlBjQcEzHUvVDOOSVHpvANicDN7OZvapqDzAdIccddEp17OdrZqI8qoJl5T4fXKafWYh59lVIdKgujpROA/132', '0', '1515055045', '2018-03-09 11:45:09', '2018-03-09 11:45:10', null, null, null, '1', '119', '118');
INSERT INTO `focused_user_info` VALUES ('e61c82be-df28-4b43-86a7-31d970654bac', '\\u971e\\u5149\\u5251\\u5f71', 'ophyRv02b6TZiFHHvV5wYWpHEgwo', 'o5O6DxPkg7GX6Wur0hU9BCuysUOY', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpNcIgHsF4e59BHKnkcibQxpFibkLZhEXib16nxadsX9bguCnKgkU0ToqZorwqPhscGgon1Z2Cic3pv1mPDib1YZJQQx8/132', '1', '1506137685', '2018-03-08 15:48:20', '2018-03-08 15:48:23', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('e6854dbc-4a44-4029-a37a-077803e10190', '\\u4c\\u7a\\u70\\u75\\u7a\\u55\\u63', 'ophyRv6hL8C3lljP8otgTCt_KSyk', 'o5O6DxBzSFfbzGh7VqJFgDftmLpk', null, '', '', '', '0', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvryBVjniaMcIoUyPv1ldfEFj5LKKibzhkCSiaJOLl6micqbKHZp0fFTcTPQ64kWcVafamZgVCZbia14nHL9dCmy3h19bV/132', '1', '1520344181', '2018-03-08 15:53:17', '2018-03-08 15:53:20', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('e69fe6fc-693f-4146-bfdd-5f73681c67e9', '\\u63\\u68\\u65\\u73\\u74\\u6e\\u75\\u74', 'ophyRvwbDt-l_veaVaEafEWoMBHA', 'o5O6DxA3tPiRUXPOh__mwcegZ-N0', null, '法国', '梅斯', '', '2', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvryQnquQc1CicdgFVVF6ETMA0RP2MzEvh54QCDT5C1fI31oAXibK5LlYByIpLfNTyx5I3T4TF9IibNyzRGromqwGJibt/132', '1', '1506086670', '2018-03-08 16:16:55', '2018-03-08 16:16:57', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('e7689c21-b290-494d-b3b6-8c730b91cef1', '\\u59\\u76\\u68\\u79\\u70\\u77\\u71\\u34\\u37\\u38\\u32\\u31\\u39\\u35\\u36\\u31\\u34', 'ophyRv4kO8tw-wVD5K3CjOTq7XjA', 'o5O6DxKOrQOKpd1AOdp58mqL_Q5o', null, '', '', '', '1', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvryQnquQc1CicdkY6sZEwxBlF2rWMcztIeBN7SnDM4JFydKU4KLpHz8niaRGVlq5zfJ2pZa9SeTDc2579Yb1nCoFGL/132', '1', '1520344163', '2018-03-08 16:23:34', '2018-03-08 16:23:37', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('e85fa0f1-dc18-4e04-9860-eeb620d257a0', '\\u7279\\u522b\\u7684\\u4eba', 'ophyRv9yytIKmc1WHqjMT_avV11I', 'o5O6DxPw196rRcFxj1rmXIYh54p8', null, '中国', '内蒙古', '乌海', '2', 'http://thirdwx.qlogo.cn/mmopen/gqc1SG2j0z9LTyT85iblA4ia9SqBBdicEmjhVfEdMVozcF1hibqbqOlQsW5vic24G1otUnvpL0rfnjOy5z3h9n8ULRI4hLscqMJoB/132', '1', '1520344230', '2018-03-08 16:13:48', '2018-03-08 16:13:51', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('e940f905-6d49-4667-9169-9c9fd6e7030d', '\\u6cea\\u5212\\u8fc7\\u96e8\\u591c', 'ophyRv_5Z1tYMEU0OfKilfMiFswU', 'o5O6DxCCQpLf1qpj173f-i77sWkg', null, '', '', '', '1', 'http://thirdwx.qlogo.cn/mmopen/rqvn1hjHytcq1f8Uy0RaESa2yDqW6aVDoehAkNAeseGXia23QwV7YrIBTibveIObPQtJ09Re8EtnLzVZMU0pvRiaLn2TIwUVBMa/132', '1', '1515506014', '2018-03-08 16:22:42', '2018-03-08 16:22:45', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('e952aa56-1682-4a32-9bd4-007e40f907a5', '\\u8d85\\u7ea7\\u5976\\u7238', 'ophyRv2O6nhRApK8a8R8QmpYaM4A', 'o5O6DxKHrb_O8_Y0Zs8iHUZoIVlw', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/Q3auHgzwzM7XUGfY8ek9pPzXqJUmbWMeoYFkXcA0zm4wgGUhOicWRvWFPQNWmAgVo0J7FMq91BdZjgL6txbiavib4bPmAyHOtAwwUnA54A8xao/132', '1', '1506152463', '2018-03-08 15:59:32', '2018-03-08 15:59:35', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('e95f9059-ecf8-43eb-8fc0-a0bfb8627033', '\\u43\\u68\\u61\\u72\\u6c\\u6f\\u74\\u74\\u65', 'ophyRvw_J6WauUTHzZ4XAtrwIW6U', 'o5O6DxO3rEvA_PwH65WZ_ADb_hh4', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/gqc1SG2j0z9LTyT85iblA4gqdODlMagic1kqWyQdVNribCQHzHeiabia8XfUB0zEadB5iauayzib3B2ehY8O0ghjiacS1bbljjWsn7icY/132', '1', '1506235880', '2018-03-08 16:24:37', '2018-03-08 16:24:40', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('e9a69de3-c6e7-4171-a94b-69f972fa35e1', '\\u5a1f\\u5b50', 'ophyRv4HVqvtAhSCdZe72U5A9IR8', 'o5O6DxC7En9ik0sCIAT-PxZkwxko', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvrzWoiaBOvBnS1ibY8BECdK8lXSEB8ZStmn5iapobAv6jkKqbn0c8cNT8GWxnSXhLO1DmjJkXjk2cv9XlIe3SiaTHkCm/132', '1', '1506075990', '2018-03-08 15:48:12', '2018-03-08 15:48:15', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('eaee54b9-b2bb-4d04-b531-3de2070f9774', '\\u52c7\\u54e5\\u20\\u20\\u20\\u20\\u20\\u31\\u38\\u39\\u38\\u31\\u39\\u32\\u37\\u34\\u32\\u34', 'ophyRv49OTRyDW4P50e732X8Y4hs', 'o5O6DxL7ITd9eAQ-FxyZlX1zG6i0', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpPSP0WwKHPb26thlOc6bDrUiaFkh1grUHec08HiaErkp8X1ia8Na28lszbLSD2GedrblotPLIe595Ptibq5ibkLLIXy8/132', '1', '1506130261', '2018-03-08 15:50:49', '2018-03-08 15:50:51', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('eb3617a3-3d59-4f5c-ac5d-2ba2aaf0894f', '\\u767d\\u96ea', 'ophyRv2kjoZ_Auzy-u3mSDsnAUuE', 'o5O6DxDcjX_fSYTrlyt_ty6y2P7o', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpNpJhgTlBjQcEZSrcVjjtjMemZeWx93mpsYasTaibIf7iajxMIiatNbFoRmrp0MbAYhtnHjdRgDPDd4xwicia3gl6wiaic/132', '1', '1506132763', '2018-03-08 16:05:58', '2018-03-08 16:06:01', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('ec6311c8-ac0f-452c-b2e8-84bfcd2c2e99', '\\u5218\\u71d5', 'ophyRv9DAuxACbpEmae77B5tWMJE', 'o5O6DxBaM0f_GnTkpUaPKmNoJQuc', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/ruofsNuhFQ3Y6YXFFXZSVaKWSicZ1AFGzycKicT4wicbFyLA1tIheqrT8e4pu75Ib1QYwfj1jCEWWdvDPxfS35saB8a18KkZmQib/132', '1', '1515567614', '2018-03-08 16:10:12', '2018-03-08 16:10:15', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('ec67dcac-d7bc-4421-9f48-39847a8effa1', '\\u949f\\u4e86\\u4e86', 'ophyRv80y1S5BPIuAooXsAszuobg', 'o5O6DxLFd7IUN2ogI4tTbpBLiYsw', null, '', '', '', '0', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpOibbR4fZqZfEQicHROMamRLU74IMTdjdiauJ6tRibCrZChDYw1jbmQLw86rxK6KPAHy5ECibo2fh6dettfayJgibAGuh/132', '1', '1509513298', '2018-03-08 16:05:32', '2018-03-08 16:05:34', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('ec70a858-f5d4-427f-8c38-fcac2ad76c1c', '\\u836f\\u7ae5\\u771f\\u60c5', 'ophyRv8vCfQH98yq_03MF7hggCIY', 'o5O6DxJL4iL2laHMhoKLU2yidPt0', null, '', '', '', '0', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvrzsZgX2NxSbWhQaw3f9ZnPg7Ay9wsSuPED8M79NQ4a8hFiaZuGnsxunhp0icVYzluMElxW8bOC9R4IRcGadu2M8ibM/132', '1', '1506222340', '2018-03-08 16:05:10', '2018-03-08 16:05:13', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('ec84f892-b2d5-476f-9c0e-1dfabb4a2c46', '\\u598d', 'ophyRv5OTaw5foD4hoUfuk8aIIOE', 'o5O6DxBkHMuFpaSCAu31Fdhvd_M8', null, '', '', '', '0', 'http://thirdwx.qlogo.cn/mmopen/9EzCoJDswGxa4EdEYeyJ7v4a521P6ribGLEvaOcWpuzD5hocXsmIZ2LhCKcY3TicUfnmooTDqiavTrqBe34ib1iaibtW3B0MJ12S7p/132', '1', '1506129684', '2018-03-08 16:24:26', '2018-03-08 16:24:29', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('ecb73ff8-db59-4b96-a80a-7d7f4e7cb2b5', '\\u5170\\u82b1\\u82b1', 'ophyRvwDZF-y75SBgibIujvoJx88', 'o5O6DxEY7ycNJj1VDjYO0xIk_4nM', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq2qnYzLFqUFeRNBsq0A4F4DfAUkbYGVTJaBCDXiaag7UKdXuibaIYb5wubwXFUm4e6icxE240I1jdpo4lC1WD9r6O5/132', '1', '1506136947', '2018-03-08 15:51:18', '2018-03-08 15:51:21', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('ece65178-4680-423d-8670-73d8a807c656', '\\u5c0f\\u4f0d\\u54e5', 'ophyRv91aEZCzimkx6Dr4ixOcTvI', 'o5O6DxOmMWYQqTSw9T5a8n62M4AM', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/ruofsNuhFQ1kdXy4ric0zeUqcu5lzibsOfliaOcr2OB9JxY64SeoZfBUKp2nKQx69KlTjYa2aHpNlale6PUsNuRyXIVxrOtHECv/132', '1', '1506132915', '2018-03-08 15:51:26', '2018-03-08 15:51:29', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('ed2b4843-404f-4a04-a969-5c55f5a095dd', '\\u30\\u3002', 'ophyRv-wSHgBgRrXboc-sz-ZwrIs', 'o5O6DxNwELwcdN3Fhv2C-0XTMAM8', null, '中国', '四川', '南充', '2', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpPSP0WwKHPb21dJ6fzbecTWQBH0jvmicGa3amNegjAibQmw101ialcX3kBQ0FRPv6zl9KbqhWy7Y8ZlxbdMDW8moS3/132', '1', '1506066637', '2018-03-08 15:56:01', '2018-03-08 15:56:04', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('ed5635cb-a4c5-46e3-92e6-33c49c2fcd11', '\\u534e\\u54e5\\u54e5', 'ophyRv6xgmPpftbHHhdSVgt3XSPg', 'o5O6DxID63vqBrzfyIMc-Opdg9FQ', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvrx9IAOgpmtLs4BhofqE0aGmibM6ZOsNpApOpm5QGkJKYibibt1uXSUqSy8azprhJl14yQpEhuNAiaueKqcX6YQQRHLO/132', '1', '1506674715', '2018-03-08 16:14:00', '2018-03-08 16:14:02', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('ed903378-ad4b-4ace-a0c8-8f11c04046bc', '\\u53ef\\u7231\\u7684\\u9aa8\\u5934', 'ophyRvyvzk1ceCZgEHPsyIP2vpfQ', 'o5O6DxAAtMdmiOsCFVFEaRi445F4', null, '中国', '四川', '成都', '0', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpP3hVtjZ3kusvvPud1GjrkaR4XGzqusXoBvBjjUZMND89YQeDKjL9icTnIYjibyVCANSxXKE53vNmT4YfZ3XnSaSU/132', '1', '1515505824', '2018-03-08 16:10:27', '2018-03-08 16:10:30', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('ede487e2-3cf5-410f-8043-3e463a2ee32a', '\\u96be\\u4ee5\\u957f\\u60c5', 'ophyRv9DPkDcVTtzfHfJUDfW0fy0', 'o5O6DxGTAcJeCrC4s_xKDonOF5-s', null, '', '', '', '2', 'http://thirdwx.qlogo.cn/mmopen/bakJJxHl9V7a3gFZDWEcGTlJ5BSnMQSMaMVALtGrTThZm0f6pMoJhr6YA69Rc5GQGuLpEJDUfTuic4L9iaKZPAJ0oHTrWmslT5/132', '1', '1520344209', '2018-03-08 16:12:26', '2018-03-08 16:12:29', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('ee4c847c-9cc8-4225-9c9b-d3529e0bbf5c', '\\u8482\\u4f18\\u54c1\\u5bb6\\u5c45', 'ophyRvyUIl2JUNVJ9IoYqpNGEHlU', 'o5O6DxI6shv2lGmv4z-plVN3xKTU', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvrzWoiaBOvBnS1x2UJ5ibQicKhBMZXGfftfVcKCpYdTTXxxQfDIBZUQiaiceevcpJh1CbMwajicJuQyL5UyplXtzLDq0Fr/132', '1', '1506857951', '2018-03-08 15:46:51', '2018-03-08 15:46:54', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('ee9641b5-5d24-48ec-9f60-4325827c515a', '\\u60c5\\u4eba\\u52ab', 'ophyRv2aPAzv9y7GhvfhkUx8w7PQ', 'o5O6DxPl5DMNTng5jVflVeEaNTyk', null, '', '', '', '1', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvryfcp6ia4AUHout25nV8wYkyjSe7qSeaiaGeHicthBxTNsliaP2ovvQWNibDjHVWfWbOwNLagALhZKZToHfZ39gAwS27/132', '1', '1520344230', '2018-03-08 16:12:57', '2018-03-08 16:13:00', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('eececa97-090e-4cc2-8fd5-49b6bf6cb738', '\\u8309\\u8389\\u82b1\\u9999', 'ophyRv9WtljQX2pY8Tzp-3QaC04k', 'o5O6DxCpQ48GiWJCKZCg9p_-ogY8', null, '', '', '', '0', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvryQnquQc1CicdqOytxPsYqrv0icnY9hhWY95MIqgkibEbP6xOXtF9o0WEwiaWCTfMcibdTqQGl83Aiaw7oibWlMAbcCC4S/132', '1', '1506144510', '2018-03-08 15:59:01', '2018-03-08 15:59:04', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('eed38c2a-a82a-44db-920f-c50d4f95462d', null, 'o08dF1DJ8CD2so8IROBx4dLKE5kY', null, null, null, null, null, null, null, '1', null, '2018-03-12 12:32:12', null, null, null, null, '1', '119', '118');
INSERT INTO `focused_user_info` VALUES ('ef662b6b-eabf-455c-9d65-8a594a23e5a2', '\\u42\\u65\\u72\\u6f\\u77\\u69\\u72\\u69\\u78\\u79\\u64\\u7a\\u62', 'ophyRv4jtg0KnXEI2SL6fcwOmi7Q', 'o5O6DxCYM2skLIJKV7cvXY_EShMQ', null, '', '', '', '1', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpMtT1f8ar4QjJFwLL9eTsQDPqicrnt5VNGe7n78qan8EziaXYzxBiaOf5J5VBPIamicJHvkUbosJJfdolhwGbpcsZLia/132', '1', '1520344167', '2018-03-08 16:18:10', '2018-03-08 16:18:12', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('ef89d9d1-037d-450a-bc8c-5f39f161bd0b', '\\u8309\\u8389\\u82b1', 'ophyRvyToJyeHWolw6dL8tFENDvw', 'o5O6DxKqldKasMTYFrcBANvSWkJg', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpP3vPPkpuPwAfAEKiaXUVl9ZtpqAqBbIsSLicVFNTJnD5NeowiaCb0cqic3BFHOtzicvZLPnBiaTt0W7zyYWBfVGHcWCic/132', '1', '1506859539', '2018-03-08 16:05:43', '2018-03-08 16:05:46', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('f002c9c8-c0b9-441a-9958-0cf242391546', '\\u3081\\u81ea\\u9189\\u81ea\\u6f14', 'ophyRv8cHqNUkeRy_KMa4VujaR9g', 'o5O6DxOFjsWlTiyBVZLsGC6O_LAI', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvrzWAiavmK4aHKCPnjiav4eS1Xcpco73TYHJhMMps7ScOp5dDdVxntAfnAAmOWPDX8iaSMdhdcJ0EpkqmRUUR6qAt0h/132', '1', '1516849114', '2018-03-08 15:51:44', '2018-03-08 15:51:47', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('f0525876-f0d6-41a2-bd80-2b7155a6c8c3', '\\u8349\\u513f', 'ophyRv-7tByTHz05Mwx9-l8OjWis', 'o5O6DxFkcgrQrC82sYxXD3GLjcD0', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/MvtOMxrzrEFXvicyPsl6zFbCmniaO4x0lZVvkXMbchuicyNH2MuVCU2gBibuwQibiave3YJcVMAfSzdJlEUibgyuIBossRibsHVF4MNy/132', '1', '1506235266', '2018-03-08 15:50:52', '2018-03-08 15:50:55', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('f071194e-b1fd-4008-902a-850b751c12e7', '\\u6d88\\u606f', 'ophyRvyD7DMemiAT0GUt8Ppi-OZ0', 'o5O6DxOcYryPMTprgd4HjV-ZaKCs', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpNpJhgTlBjQcNT1TAvNCmdgNandYqJGmL0qD1d5HpSPD1dYVnqK2puhFkuZ6UfKtvBN7ODfBqfEFa3PniayaVL4f/132', '1', '1510069916', '2018-03-08 15:59:24', '2018-03-08 15:59:27', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('f07d4a62-54c6-418f-8b6f-186be3e7f56b', '\\u7b11\\u4e00\\u7b11\\u624d\\u9ad8\\u5174', 'ophyRv7xc6jKuUfGAeeBZ7Izhqs4', 'o5O6DxNl8vC4HPkCt55S66gd9ti0', null, '', '', '', '2', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpNcIgHsF4e59CiaJiajEdnvr4JeTs3MwaRwaeFd1GakHvXHyhQ1MBXJhp7h39MRmkE3MHXs9uIfiacRibshZwlwXscI/132', '1', '1506865664', '2018-03-08 15:46:36', '2018-03-08 15:46:38', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('f081b791-a435-4154-b696-a3d8228f9bca', '\\u5fc3\\u9759', 'ophyRv2PDVrp3HciO3p39ztR0MfA', 'o5O6DxMMb5QWNPoR_rAQXayhCjk0', null, '中国', '四川', '德阳', '2', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq18N9k4aZNflya85oHVpRKRCTCD0icKMaYpQbo2w6t9zTicL4aoocKnmUic6MvV0Rl266EAuns2ltGF0oTXDlqEx11/132', '1', '1508651568', '2018-03-08 16:01:54', '2018-03-08 16:01:57', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('f0b59e54-ba75-4d8e-a859-946c6d8b6997', '\\u4e0d\\u5fc5\\u6df1\\u62e5', 'ophyRv_EWpY-5SCZ2JObqVvn0kd8', 'o5O6DxPe55lONAH81xiYFdVNHN8o', null, '', '', '', '1', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvrz3KLXN0grzzyibGjrpS0YP2RGSdR5X2kOKq4FOnkxdd9kIjBYQLQb07FG8DPRbPic3ZUqHxn4hTxyv4rUBnYajIn/132', '1', '1520344178', '2018-03-08 16:09:35', '2018-03-08 16:09:38', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('f10d87b5-5c64-4535-939a-6058a6bfa2ae', '\\u44\\u72\\u2e\\u66\\u65\\u65\\u6c\\u67\\u6f\\u6f\\u64', 'ophyRvwOodsXkmCbWhgPMy0ss_8w', 'o5O6DxOhIHev-eVzFhKm7M1NiOzU', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLDibibBznqia64YdJToKDUKMW9JoxH4pJlTpa8nuzQJe88WvKdoaXthnmHxQXSniahkKR4tYcPcdw2Y2oD6vlSp1JYGOIUbWzJx8JY/132', '1', '1505726571', '2018-03-08 16:06:02', '2018-03-08 16:06:05', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('f11230ce-c3a5-4e46-873a-53a10b7efea2', '\\u6613\\u70df\\u5b89\\u96c1\\u5c14\\u8299', 'ophyRvyfXbnLek_IqQZoAdu-C0W0', 'o5O6DxLHD9s11P4JFqlp2RyDQbTQ', null, '中国', '甘肃', '嘉峪关', '1', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq2JYiaVsXibAOXBPghkYoicZ4TAt3s5vVjw0icH3Jyo4YLe1LwcaRO9wTAcPkJQoE7WT00tC3QoonCGgcYdNdFq0Cic9/132', '1', '1520344191', '2018-03-08 16:23:12', '2018-03-08 16:23:15', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('f1191a6a-210c-48a2-8fef-1741bab1a8dc', '\\u9189\\u5728\\u4f60\\u6000\\ue32e', 'ophyRv8ZzPOtoRhB_lqSpqq9Y7i0', 'o5O6DxAonlJId-ILoCgVIUlaCe_g', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvrzreFtOYNWK2ib5HarLdvIVPewdhKaBe1QpTqq40nCrxiaCE8BEgVoIBySjWTESdfZNqoiajuoByLvj6uq04MENxlq/132', '1', '1506133290', '2018-03-08 16:09:02', '2018-03-08 16:09:05', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('f1281c88-cd81-4b67-8aca-317bebaa73ee', '\\u7f57\\u6c11', 'ophyRv49xwq5w4niw684qd7fwvq0', 'o5O6DxNkXA4mShYo6fkLaXoTsP7Q', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLAXZANktsLSS8M4ewqgN89wChclfBzo3akEnibmVYhlmmCTPIpXVF2E2ibzJ4tfib8wGzUZkYetRIiaUgM1fLYwfhfzkuCImCeLgwg/132', '1', '1516771100', '2018-03-08 15:52:46', '2018-03-08 15:52:49', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('f15eee70-e00f-42d5-bb71-58ce961fc9dc', '\\u48\\u46', 'ophyRv7sxlev6lUZ6PFKpmcafjYY', 'o5O6DxBLitnTCZhikOD3hZn0ZXEI', null, '', '', '', '2', 'http://thirdwx.qlogo.cn/mmopen/PiajxSqBRaEIvMSB9onmLTJlwmONozI6sPDSWrOP05zdYKpRRbVnPWPkBkwVeZnic75iaKctrrLgWjpSQPBQZsqSGz8Fic6H50iaK9ibP3LpElyuA/132', '1', '1506858612', '2018-03-08 16:23:53', '2018-03-08 16:23:55', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('f16a6768-d172-4779-b4eb-eb88ae50ebfd', '\\u80dc\\u7537', 'ophyRv8qXSBAUDVNbNBMzjCEyMn8', 'o5O6DxPEzn6-ira3_cyrpfgloKhI', null, '中国', '重庆', '渝中', '2', 'http://thirdwx.qlogo.cn/mmopen/3b5dWBtwxUoAkMvIicW9KTDWxgC8HhPr1sJ0A2F8eQtoD66h1LjKXcYbWEibXIFqyicHJhTEpmJWPDDC6SthIPvQLFWlvRfeKcU/132', '1', '1516751917', '2018-03-08 15:58:55', '2018-03-08 15:58:57', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('f18a8015-40cb-40e9-819e-70adde06fbb1', '\\u94f6\\u674f\\u6811', 'o08dF1NGBENuxP5Gvk3hBe9kFTMU', 'o5O6DxCrkTs8caSsMeTCLvLx1nv4', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq02FBbf60ZG1e54LmRticJx0u0m661hG4gJz6Egb0AWXKL0LjNic0WBic0zibqVTj9XHGx6YiaEtcSOqOxrRe7WavUHW/132', '1', '1506402208', '2018-03-14 16:51:21', '2018-03-14 16:51:22', null, null, null, '1', '119', '118');
INSERT INTO `focused_user_info` VALUES ('f1c09634-2704-41dc-a0af-b14a580cc601', '\\u82f1\\u82f1', 'ophyRv1En5tqJv7xM5lsr9mhpCUY', 'o5O6DxNgU7Vq5psPefRb8qILvSFg', null, '', '', '', '0', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpMbMNCr5ySMLLDciaMOoQa1dickicrVoRgU8dCAAhwn5BVnJSAxQwicefQk8UhUL9PqrWXXxH1V4s7WUoJHwq685mRd/132', '1', '1506137458', '2018-03-08 16:06:25', '2018-03-08 16:06:27', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('f2516256-973c-4fa7-ac8b-2fff34bf27ac', '\\u74\\u61\\u6e\\u67', 'ophyRv4YVzPNL8eoa_Ofv4BtuUkk', 'o5O6DxN9kHjRiHxO4Di0x5x12-yE', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq2qnYzLFqUFeRMJvXH7sIhEG3jibxaiaRlSGHpLs8TlzuIQERnKEYenzRoe0mAKuvx4mk348N2hHd8qDqtpqr3qV1/132', '1', '1509512555', '2018-03-08 16:02:16', '2018-03-08 16:02:19', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('f277e28e-b8e8-4ed7-8db4-001ef50bb73b', '\\u4d\\u75\\u6d\\u61\\u62\\u77\\u71\\u32\\u32\\u35\\u32\\u34\\u35\\u37\\u32\\u37\\u36', 'ophyRvwnQLL6rs7w0D11tVjM4wyM', 'o5O6DxD8d3OfsOOUPllFZVPgfBv4', null, '', '', '', '1', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvry4JoQCW9a0EiatiaA98dSjjM1PRENfsy7qqdibJq9rT51RStiaC7icykykLcPHUia3AaxUzVZXwOxWKWY2ib9KxmqSC26/132', '1', '1520344161', '2018-03-08 15:50:01', '2018-03-08 15:50:04', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('f2d037af-72c0-449f-a3f0-b22e972de1c9', '\\u6652\\u592a\\u9633\\u7684\\u5c0f\\u72d7', 'ophyRv6-n8XV6oWtA0Qo7XH6fe9g', 'o5O6DxORlBV2EPp4SBttrDTN9WeE', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq3rH7g5epwhSIjjw0CRaL9yy4Tvl6TF9NM1B7C9y3zFEWq5Ub3B9KrnZRWaB8TBCpaTgNZTSxnW2muibgVpVzVicr/132', '1', '1506257745', '2018-03-08 16:11:41', '2018-03-08 16:11:44', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('f308a50a-3fe4-40b5-b49a-2dc345b65691', '\\ud83d\\udc1c\\u8682\\u8681\\u28\\u3d\\u5e\\u3c9\\u5e\\u3d\\u29\\u7a9d\\u7a9d\\ud83d\\udc1c', 'ophyRv_j03-rssuNEToOYWaX0QAs', 'o5O6DxMypIoH6xtJQsr9TfEl0nwM', null, '', '', '', '1', 'http://thirdwx.qlogo.cn/mmopen/rqvn1hjHytfaB2v9bcNXIJHRcWT0VX3nVXEgetWrw2fhD9L9VNfDGhYpe2lddcuSQjpSPKQHw3iadmt9he1Wx87Tkic6Aa02Cb/132', '1', '1517969405', '2018-03-08 16:02:38', '2018-03-08 16:02:41', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('f575bc27-1636-428b-a431-91103c4b0122', '\\u5c18\\u609f', 'ophyRv5F-ZFzVQC1e-tuCrMnAY5c', 'o5O6DxGxo_hU65mLNwBioSLKPFD0', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvrzWoiaBOvBnS13ddnLkt50NW2lMdEx1icB7alAA7Y4FEKib6rBD90SW6TFu0G7PoAQUlEToUibeyJibC8CtVhSj3k8AG/132', '1', '1515068103', '2018-03-08 15:45:07', '2018-03-08 15:45:10', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('f592f375-e6ac-4824-b7db-3058e850d4b5', '\\u9a6c\\u9732\\u9732', 'ophyRvzUoGOQ-l_UyyGIcudQ9Ubc', 'o5O6DxPeMUaL5jUppzxsshLtJCOg', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpNpJhgTlBjQcBU5ibM6nJKwwoOuMU4NibdX71S426lVZyvic1QyusE0Ua3CtQnCh4Gpib2LhrqWc8F02wE0vVdORiay1/132', '1', '1506857961', '2018-03-08 16:18:47', '2018-03-08 16:18:50', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('f66e452b-3d54-4fda-a44f-2203f6a5ff11', '\\u6de1\\u82e5\\u60a0\\u7136', 'ophyRv5IE5kJxoqISu4aDNF2ai-Y', 'o5O6DxJ2edctSlCwdd0Y0oLmxOTg', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/NDVpu0Yn5C3JQsQPHuYlibZc90xeoNXekoia3PDs6bbDhian0LhMX98iaHXL04KdP8ib3qa9YGO7BfmS9FaIHbBddhCmwgoS3ibZpJ/132', '1', '1506859144', '2018-03-08 15:57:45', '2018-03-08 15:57:48', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('f67a9417-ebf2-4f0e-be79-c7305e12b377', '\\u54\\u49\\u4e\\u51\\u55\\u5a\\u42\\u46', 'ophyRvzQ_Xk8zK15ftm917ZlBj7Q', 'o5O6DxBGcT_fezZv2XJ3boY-ZPy0', null, '', '', '', '1', 'http://thirdwx.qlogo.cn/mmopen/Q3auHgzwzM7bVIxdibwPM3cfhicJFBjkNdeqGqSzJTImHs5NeFib1HVaLu1oSF4ia4U2PpFmg4y3WvmZgc5PnEmgETqTx0z79w4iaicyficYD9SibuM/132', '1', '1520344163', '2018-03-08 16:10:31', '2018-03-08 16:10:34', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('f806301a-70e3-4f5a-ab16-97b50c57bee6', '\\u72fc', 'ophyRv-Ezz6p9bu_r-4qnkZGltus', 'o5O6DxKbN01gsHKJxEQmDgZtBy9I', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpNpJhgTlBjQcEYnFPia4XQcH4zvicww9iaHvW8iaHrjrPNIs26Nznl3cfmTwmnDWCaYFXWA1JlBDnP8vS3g6u6dNsp1/132', '1', '1514214927', '2018-03-08 15:49:28', '2018-03-08 15:49:31', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('f835b345-46ee-4b4f-9618-e71a5f035426', '\\u82bd\\u82bd', 'ophyRv3XuBYU3xDNLJqlulMuf6uM', 'o5O6DxLNPLYv4dFyg36Wo0jAkang', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq2qnYzLFqUFeWMLEWB33OnRk1PibriayygQNAwFJcibx2kX4UfgEILEh4LXXVYK5myibu2up5qCfiaHfLPwZtEcr9nUL/132', '1', '1513223386', '2018-03-08 16:11:16', '2018-03-08 16:11:19', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('f8543cb2-98fa-4758-af8e-749c7d8361f5', '\\u7f18', 'ophyRv74MLxIRxJhvdC70087T50w', 'o5O6DxHRzl4-ZzK1LjtF6vCK63hk', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvrzWoiaBOvBnS13AyfeqrcW1FNcb0ZzGicxIkNZFV2WqA5R59t1ID6sZUibjicfIAMNVs50icjBhknDame9tXnjHapqp0/132', '1', '1506858353', '2018-03-08 15:45:55', '2018-03-08 15:45:57', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('f86cd5e5-bda4-488c-8d0a-87dd5be011cf', '\\u6d\\u79\\u79\\u6f\\u71\\u6d', 'ophyRv65XjyAUijObgOc_6oevGoQ', 'o5O6DxM48bOEUZ3PfFV-rUBZZ9FI', null, '', '', '', '1', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq15VRWwhUUgIia5fO1abdicAx4X0UjYEuhqKlpqtPuTicnVQLt8YgsicXgtMgCia9qVmj1bQ1cWQZeZxrllSIzNBZmZB/132', '1', '1520344161', '2018-03-08 15:48:47', '2018-03-08 15:48:49', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('f875f720-f902-4362-a2ac-96b634175ebe', '\\u5fc3\\u9759', 'ophyRv42iZXqPFqcJcN8POGN4D8s', 'o5O6DxN43DTsnY9JA4FFj_cO9L5E', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/MvtOMxrzrEFXvicyPsl6zFRibxBq29MzVicowohzgEkLXtXFCfYI3WBngVIjLToJib2jgRBnakPqlok0gZ3EyLwLibpUGx9L8MT4K/132', '1', '1514423458', '2018-03-08 15:51:11', '2018-03-08 15:51:13', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('f88b77d6-1dac-41b5-850b-ec280ab2893a', '\\u73b2\\u73d1\\u8349', 'ophyRvwNPUgzQujNfZtSZHZRbb2Y', 'o5O6DxGQX3b_ikr4O4NqjRMbWoHU', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq2qnYzLFqUFee16gocGnZzicZzUG1W9jU8RVictO78dd5Q5p2N9H0ButJjCmMMibXhdjkZFo73EibTBqmnFgY2BhhHJ/132', '1', '1506235562', '2018-03-08 16:04:22', '2018-03-08 16:04:25', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('f9455199-2934-42c9-91de-cb5ad413931c', '\\u8d75\\u51e1\\u51e1', 'ophyRv_ioM7uPzBcjlTG65Fv8n-s', 'o5O6DxG-8Tqa-PiarfWn7uHCJ-II', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvrxnwoD954xuhBjlQoQLQ8enTfibibZGnyDtL9GB6WndxuEZfL8uVLHgiatLOOAcicJXYt0HCM4Dtgkz0iaeQfHnMKXfn/132', '1', '1515067369', '2018-03-08 16:20:07', '2018-03-08 16:20:10', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('f995ab1f-1938-4659-a80a-505c3178c96e', '\\u4d\\u61\\u6e\\u6e\\u79\\u26\\u4d\\u69\\u6c\\u6c\\u79\\u42\\u61\\u42\\u61', 'ophyRv13uxEYZVNXA2u5JXUsoHb0', 'o5O6DxDSCA6Zbd7j9DyIN3GLmeis', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvrxJ2Z6LojQAHFXQedB3CAgIibbibSaf1IObVd7SBuACNfjFYH7RQCunZibVPjLUalwzWFQkgE1hYLU62ooQvpNZtbv/132', '1', '1506217233', '2018-03-08 15:58:51', '2018-03-08 15:58:54', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('f9b88ac9-a031-4724-a339-688a24b0beb0', '\\u674e\\u4e8b\\u6a2f', 'ophyRv0r8gqLON_p1-xVoL7tLxYQ', 'o5O6DxLmp4jvD79i2DAQWMpAwvDk', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/HP3KkcAaWicGBMAbekHrWjcG2F9Rz8xdxfwtciarH031vIOfuJtibhlr7nsQQfYsZicpR1dXTZiacdFpSUiaPGl4WQHSTgv6EwcDpW/132', '1', '1506674744', '2018-03-08 16:00:55', '2018-03-08 16:00:58', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('f9c029b8-4c99-442b-b5bc-9154ab2fedf6', '\\u5f3a\\u5f3a', 'ophyRv1NzXRbpwOi7ZDXV7OUvP6c', 'o5O6DxICgsNDrgbJcL6q-bJMvC6A', null, '中国', '四川', '', '1', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq2FC0h8MVwUcD4x3KOdwJ1dugJQSJEGtGdRxZuLZOVJ44gcD4OO3UMXj8kYv7s8v1CVsLictJZicQcAhFrfu6XkPN/132', '1', '1506146948', '2018-03-08 16:01:29', '2018-03-08 16:01:31', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('fb267459-58cd-4dc5-84db-7e9cff0537b7', '\\u519b\\u54e5', 'ophyRv4CbM63yc6qtMZOdirueEW8', 'o5O6DxGCjVQr-ZEVhjtcC-XMsS_M', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/rqvn1hjHytfaB2v9bcNXIMx3YuL8j3TjDPiaRKibg87ne2noYtJAria8usibZC7JSJpXdXaph1rCeWhGxia3dbMqI12tsVRyeg1KL/132', '1', '1506237716', '2018-03-08 16:17:43', '2018-03-08 16:17:46', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('fb402e2b-e441-4bfc-965e-4c6795e2475f', '\\u5a1f\\u5b50', 'ophyRvx2eF2ysp79GpEndlSDdvjE', 'o5O6DxLMDTiRUUk-_jhvlbt9c4FY', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/gqc1SG2j0z8InAWyx08RVJWicmwVibeT4O0XRCkWaPhtRejyFkvYAhbib6tbwMZ7oXZxicjwQprtuib7AHCCbcws5wJ9OACFxLv3P/132', '1', '1506217581', '2018-03-08 16:11:38', '2018-03-08 16:11:40', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('fbe03891-da38-446f-97fc-2889193e8f70', '\\u5468\\u4f2f\\u901a', 'ophyRv8-rSrmsenwS7ApLMvQ4ofg', 'o5O6DxPbm_QI2SaApb0X6h-8i-v8', null, '中国', '四川', '乐山', '1', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpMtcvVARxpe9fXNzmlpdYo8PRFKKpC3fq89eYPMqqxibjDh2JaVXF9Bx6KI5E6XrZGqia3oh69mZzH3C0ic98V6I9e/132', '1', '1506224653', '2018-03-08 15:58:18', '2018-03-08 15:58:21', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('fc5672fb-bdde-4ca1-bf5e-986f2d6ddefd', '\\u61f5', 'ophyRvzUW9H1xJe2n0blMD79Pdl8', 'o5O6DxMTqd3rB8DCzWLeviQ213KY', null, '巴西', '里约热内卢', '', '1', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpMcDz3aspudjVicnD7mlWtKt74emQXAMIuw9eFv6loib1QIPyr8TCXw5nLHU64JdiaWJCbnnmIMZxudDgOAlAr0qan/132', '1', '1506858680', '2018-03-08 16:01:10', '2018-03-08 16:01:13', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('fd15d723-04de-4df8-a06d-361cc338e4b6', '\\u79bb\\u5f00\\u7684\\u9519\\u89c9', 'ophyRv-HTPjdMDCMuIi4GRkpdaBo', 'o5O6DxGIMFQCQLDnYJBGD3PVS_B4', null, '', '', '', '2', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq2XpLwbQKoX4pQD3MibOvW2mEVKwJ0gxjb3Owm3YAmM8oPWapTaDEEibH0uH6tK39ysbo3FEDkol7uIygaytHD4Qu/132', '1', '1520344190', '2018-03-08 16:16:24', '2018-03-08 16:16:27', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('fd387561-6e72-4b24-bd29-6164a7f98cc0', '\\u66\\u65\\u69\\u77\\u61\\ue030', 'ophyRv8QXHFlzb0sQfZpGfx1851s', 'o5O6DxEkhGF6T1ZUe28cyW1AmZAc', null, '安道尔', '', '', '2', 'http://thirdwx.qlogo.cn/mmopen/UHpCpdM5Tq0Mdbog2bZrtMCyxHmic6AdB5oagkr4mQqBTZXYPN9hlLGQOo8DVenIt26a5pDktVNaXXKnsxINEVkNamnRw4s9d/132', '1', '1506133174', '2018-03-08 15:57:04', '2018-03-08 15:57:07', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('fdfbf60f-2c38-442c-b0bc-f3c4d6bfc344', '\\ue314\\u5b89\\u82d2\\ue314', 'ophyRv7c7cAK-oyOCTWQHJ_PmfKE', 'o5O6DxEmlimtRMoPiBTb0mqkei8o', null, '中国', '四川', '成都', '2', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBWe7Bx6UOgMnGSyfbgJnm0ge4hrJjf4udnI4DDU9EjpGjFk1Cbzliar1ot5T4W0OdYjYXnAGr0Ldw/132', '1', '1506235389', '2018-03-08 15:45:33', '2018-03-08 15:45:35', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('fe1b9f78-df03-49a0-9610-8e0c42385116', '\\u5c14\\u767d\\u5143\\u7476\\u767d\\u5349', 'ophyRv362Ow-dFGco_SveaY89848', 'o5O6DxNKVK422XnQkQ0iI7J9TAc8', null, '中国', '河北', '承德', '1', 'http://thirdwx.qlogo.cn/mmopen/ajNVdqHZLLBGyoMPU5nl96ibsRXevyq8SPC8VCpvmCBBJkWDSdaiaFNeEJuosQCWW0zlz0Ro61qv5Xd6qZJ5m5zl4unqaf0Vvg6mbtj6VX7Ck/132', '1', '1520344168', '2018-03-08 16:19:41', '2018-03-08 16:19:44', null, null, null, '1', '126', '125');
INSERT INTO `focused_user_info` VALUES ('fec0d445-6154-4fac-b3ec-f836c2af6844', '\\u51e1\\u521b\\u6587\\u5316\\u2d\\u5218\\u9633', 'o08dF1BTWJE-abcEXUAcJzBaD6fk', 'o5O6DxL7ePUY6O6t4L_LB0XJMI_Q', null, '', '', '', '0', 'http://thirdwx.qlogo.cn/mmopen/gtaGWVTOvrwTBpMOrvno0bummatAQib3wOzSnB7E5SFOcfJKqU8HojFoP0puzibqdK7mOm9bJA0TazkJ66A8Q6MjRd3I4FUGQe/132', '0', '1521017738', '2018-03-14 16:55:59', '2018-03-14 16:56:00', null, null, null, '1', '119', '118');
INSERT INTO `focused_user_info` VALUES ('ff951b9e-c43b-49c5-a7de-82822e06838d', '\\u5f6d\\u5dcd', 'ophyRv9wmkMF6RvXC1PHLW6BEev0', 'o5O6DxHzlT7K1tiZ9h4VVVbFKhmI', null, '中国', '四川', '成都', '1', 'http://thirdwx.qlogo.cn/mmopen/rqvn1hjHytdvEq5JyWVaETicNpaGY7j6qVB6BcV7hh8BiamX3icogjHJFjF7EWtct0NHMu1yYw3uoxY9VpLLcQTBHBGciaPUegUQ/132', '1', '1517278338', '2018-03-08 16:23:00', '2018-03-08 16:23:03', null, null, null, '1', '126', '125');

-- ----------------------------
-- Table structure for `interface_info`
-- ----------------------------
DROP TABLE IF EXISTS `interface_info`;
CREATE TABLE `interface_info` (
  `ID` varchar(255) NOT NULL COMMENT '主键ID',
  `KEYES` varchar(200) NOT NULL COMMENT 'keyes接口标识，系统扫描接口列表时用来标识接口',
  `DESC_M` varchar(200) DEFAULT NULL COMMENT '接口描述',
  `URL` varchar(350) DEFAULT NULL COMMENT '接口URL地址',
  `PARAMS` varchar(255) DEFAULT NULL COMMENT '参数',
  `TYPE` int(4) DEFAULT NULL COMMENT '接口类型',
  `STATUS` int(4) DEFAULT NULL COMMENT '-1已删除 1未删除',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  `IS_USE` int(4) DEFAULT NULL COMMENT '-1 不使用 1使用',
  PRIMARY KEY (`ID`),
  KEY `ID` (`ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统接口配置表';

-- ----------------------------
-- Records of interface_info
-- ----------------------------
INSERT INTO `interface_info` VALUES ('0a3d4677-6663-49a6-86d0-b5f18de0a7ab', 'SYSTEM_URL', '系统域名配置项（所有的接口在保存时都会自动添加该前置地址，该项配置只能出现一次，如果存在多个，只有一个生效）', 'http://w17b197823.iok.la/', '', '2', '-1', '2018-01-19 11:13:59', '2018-01-30 15:18:19', '0');
INSERT INTO `interface_info` VALUES ('35bd8e92-fd69-43a5-8eb6-28073f5ba127', 'FINAL_ART', '查询本期文章', 'http://w17b197823.iok.la/ssm/art/interfaceGetCurrentPeriodArt', 'menuId(菜单ID)', '2', '1', '2018-01-31 10:43:58', '2018-01-31 10:49:06', '0');
INSERT INTO `interface_info` VALUES ('4b032078-1d34-4605-980b-4081d4b8bf7e', 'GET_USEREXIT', '判断用户是否存在,不存在则保存', 'http://w17b197823.iok.la/ssm/focusedUserInfo/interfaceUserExit', 'openid 用户openid menuId', '2', '1', '2018-01-31 10:48:26', '2018-01-31 10:49:19', '0');
INSERT INTO `interface_info` VALUES ('6715e24a-da66-4ed8-b472-065d4d34835e', 'GET_MENU_BY_PARENT_ID', '通过parentId查询菜单', 'weChatMenu/interface/getMenuListByParentId', 'parentId 父级菜单ID(一级菜单parentId 为 ROOT)', '2', '1', '2018-01-31 10:57:09', null, '0');
INSERT INTO `interface_info` VALUES ('73353677-8e4e-4a53-8ad8-b2bdfaa8635b', 'UPDATE_USER', '根据openid查询用户信息是否完整/并补全不完整的信息', 'http://w17b197823.iok.la/ssm/focusedUserInfo/interfaceUserInfoIntegrity', 'openId,menuId', '2', '1', '2018-01-31 10:54:28', '2018-01-31 10:55:41', '0');
INSERT INTO `interface_info` VALUES ('8321f8ba-abda-4c75-95b2-bb761f104f93', 'SELECT_ART_BY_PERIOD', '通过期号查询文章', 'http://w17b197823.iok.la/ssm/art/interfaceGetPeriodArt', 'current(期号) menuId(菜单Id)', '2', '1', '2018-01-31 10:41:57', '2018-01-31 10:48:51', '0');
INSERT INTO `interface_info` VALUES ('8ce23a9c-baa5-4c94-b9f4-34b6be984d81', 'UPDATE_USER_SUBSCRIBE', '更新用户的关注状态', 'http://w17b197823.iok.la/ssm/focusedUserInfo/interfaceUpdateUserSubscribe', 'openid,subscribe,menuId', '2', '1', '2018-01-31 10:52:22', '2018-01-31 10:52:38', '0');
INSERT INTO `interface_info` VALUES ('aad23c41-9484-45b7-a656-811bdbe6e329', 'PRECISE_SEARCH_MENU', '通过menuId或者menuName精准查询', 'weChatMenu/interface/getMenuByIdOrName', 'menuId 菜单的主键ID,menuName 菜单名字', '2', '1', '2018-01-31 10:55:31', null, '0');
INSERT INTO `interface_info` VALUES ('b8b0479a-aa82-42e9-9060-adc736282307', 'GET_PUBLICNUMBER_TOKEN', '查询公众号帐号信息', 'interfaces/getTokenByMenuid', 'String menuId(公众号menuID)', '2', '1', '2018-01-19 10:46:22', '2018-01-30 16:23:51', '0');
INSERT INTO `interface_info` VALUES ('c2241c33-24a4-4824-b894-1257b46defd0', 'GET_PARENTMENUIDBYMENUID', '根据MenuId查询父MenuId', 'menu/interfaceGetParentMenuId', 'menuId', '2', '1', '2018-01-31 10:57:57', null, '0');
INSERT INTO `interface_info` VALUES ('d4555d09-7e48-4d03-adb5-a3c0394b91e4', 'GET_ALLPUBLICNUMBER', '查询所有微信公众号帐号信息', 'publicAccountInfo/interfaceGetListPublicAccount', 'String usable 公众号启用状态-1 OR 1', '2', '1', '2018-01-19 10:34:31', '2018-01-30 16:25:01', '0');
INSERT INTO `interface_info` VALUES ('ddab81b9-57e0-4704-b731-4365ad1aede3', 'GET_ACCOUNT_INFO', '通过menuId查询帐号部分信息', 'publicAccountInfo/interface/selectInfoByMenuId', 'String menuId 菜单ID', '2', '1', '2018-01-30 16:26:08', null, '0');
INSERT INTO `interface_info` VALUES ('e0951b2e-e646-48be-a3ce-3cda4f4a60c4', 'GET_KEYWORRDS_BYMID_AND_KEY', '关键词查询', 'http://w17b197823.iok.la/ssm/keyWords/getKeyinterfaces', 'keyes(关键词) menuId', '2', '1', '2018-01-31 10:44:47', '2018-01-31 10:51:32', '0');
INSERT INTO `interface_info` VALUES ('f63ff9bb-e122-48bb-be73-4c1cfae54306', '', '微信自定义菜单创建接口', 'https://api.weixin.qq.com/cgi-bin/menu/create', 'access_token', '1', '1', '2018-01-19 10:56:07', '2018-01-31 10:47:44', '0');

-- ----------------------------
-- Table structure for `key_words`
-- ----------------------------
DROP TABLE IF EXISTS `key_words`;
CREATE TABLE `key_words` (
  `ID` varchar(255) NOT NULL COMMENT '主键ID',
  `KEYES` varchar(255) DEFAULT NULL COMMENT '关键字',
  `VALUESS` varchar(255) DEFAULT NULL COMMENT '关键词回复',
  `TYPESS` varchar(255) DEFAULT NULL COMMENT '1敏感词汇 2向导词汇 3广告词汇',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  `STATUS` varchar(255) DEFAULT NULL COMMENT '-1 已删除 1未删除',
  `SORT` varchar(255) DEFAULT NULL COMMENT '排序',
  `MENU_ID` varchar(255) DEFAULT NULL COMMENT '系统菜单ID(这个是关联管理后台那个菜单的)',
  `PARENT_MENU_ID` varchar(10) DEFAULT NULL COMMENT 'parentMenuId绑定公众号的Menu_ID，确定该关键字的所属公众号',
  PRIMARY KEY (`ID`),
  KEY `ID` (`ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='关键字回复表';

-- ----------------------------
-- Records of key_words
-- ----------------------------
INSERT INTO `key_words` VALUES ('0701b4d1-4fc2-499c-9a06-9b80be7fd27e', 'ATTENTION_REPLY', '温江冬日暖暖福袋大放送，请戳以下活动链接，进行您的福袋探索游戏吧：（http://www.daxi51.com/wechat-web-service/activity/WelfarebagNoShare?id=3）。完成游戏在下方对话框输入“我的福袋”即可查看获奖及领奖信息。', 'text', '2018-03-08 14:28:54', '2018-03-08 16:40:35', '1', '1', '127', '125');
INSERT INTO `key_words` VALUES ('4268e7f2-c915-423b-9b11-f289dec33f2a', 'AUTO_REPLY', '老夫没有找到你想要的东西，哈哈\\(^o^)/~', 'text', '2018-02-05 16:33:00', '2018-03-21 16:24:05', '1', '2', '109', '107');
INSERT INTO `key_words` VALUES ('5c5ea386-d125-471c-98e6-e1b074ce0098', 'AUTO_REPLY', '您好，欢迎咨询后台小助理，我们看到消息后将在第一时间回复您。', 'text', '2018-03-08 14:28:54', '2018-03-08 16:40:51', '1', '2', '127', '125');
INSERT INTO `key_words` VALUES ('90d6bffe-75ed-4970-b314-7b5fa9d8d184', 'ATTENTION_REPLY', '欢迎关注一点五小时服务号', 'text', '2018-03-08 10:23:32', '2018-03-08 10:35:01', '1', '1', '120', '118');
INSERT INTO `key_words` VALUES ('9231e989-48da-4d73-a208-cff873f3789e', 'ATTENTION_REPLY', '欢迎关注New Wechat', 'text', '2018-02-05 16:33:00', null, '1', '1', '109', '107');
INSERT INTO `key_words` VALUES ('a77ffac6-c72b-4af0-9ad4-849d75648d13', 'AUTO_REPLY', '没有找到你想搜索的东东哦。', 'text', '2018-03-08 10:23:32', '2018-03-08 10:35:28', '1', '2', '120', '118');
INSERT INTO `key_words` VALUES ('bc562626-9bc6-4d1d-93a6-cc7f39705861', '1', '不要动不动就Q 1', 'text', '2018-03-21 16:24:22', null, '1', null, '109', '107');

-- ----------------------------
-- Table structure for `log`
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `logId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志',
  `userName` varchar(30) DEFAULT NULL COMMENT '操作人',
  `createTime` datetime DEFAULT NULL COMMENT '时间',
  `content` text COMMENT '详细',
  `operation` varchar(300) DEFAULT NULL COMMENT '操作类型（增删改）',
  `ip` varchar(60) DEFAULT NULL COMMENT 'IP地址',
  `module` varchar(40) DEFAULT NULL COMMENT '所属模块',
  PRIMARY KEY (`logId`)
) ENGINE=InnoDB AUTO_INCREMENT=1479 DEFAULT CHARSET=utf8 COMMENT='操作日志记录';

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES ('1', 'test', '2017-11-29 14:31:04', null, '退出', null, null);
INSERT INTO `log` VALUES ('2', 'test', '2017-11-29 14:31:14', null, '登录', '192.168.1.17', null);
INSERT INTO `log` VALUES ('3', 'admin', '2017-12-26 15:14:33', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('4', 'admin', '2017-12-26 15:15:54', null, '退出', null, null);
INSERT INTO `log` VALUES ('5', 'admin', '2017-12-26 15:15:59', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('6', 'admin', '2017-12-26 17:20:53', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('7', 'admin', '2017-12-28 09:46:32', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('8', 'admin', '2017-12-28 09:46:38', null, '退出', null, null);
INSERT INTO `log` VALUES ('9', 'admin', '2017-12-28 09:49:37', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('10', 'admin', '2017-12-28 09:49:39', null, '退出', null, null);
INSERT INTO `log` VALUES ('11', 'admin', '2017-12-28 09:52:04', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('12', 'admin', '2017-12-28 09:52:27', null, '退出', null, null);
INSERT INTO `log` VALUES ('13', 'admin', '2017-12-28 09:58:54', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('14', 'admin', '2017-12-28 10:00:27', null, '退出', null, null);
INSERT INTO `log` VALUES ('15', 'admin', '2017-12-28 10:10:01', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('16', 'admin', '2017-12-28 10:10:44', null, '退出', null, null);
INSERT INTO `log` VALUES ('17', 'admin', '2017-12-28 10:10:56', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('18', 'admin', '2017-12-28 10:11:04', null, '退出', null, null);
INSERT INTO `log` VALUES ('19', 'admin', '2017-12-28 10:50:03', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('20', 'admin', '2017-12-28 11:07:40', null, '退出', null, null);
INSERT INTO `log` VALUES ('21', 'admin', '2017-12-28 11:07:49', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('22', 'admin', '2017-12-28 13:33:54', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('23', 'admin', '2017-12-28 13:48:34', null, '退出', null, null);
INSERT INTO `log` VALUES ('24', 'admin', '2017-12-28 13:48:41', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('25', 'admin', '2017-12-28 15:39:04', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('26', 'admin', '2017-12-28 15:39:21', null, '退出', null, null);
INSERT INTO `log` VALUES ('27', 'admin', '2017-12-28 15:39:32', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('28', 'admin', '2017-12-28 18:04:12', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('29', 'admin', '2017-12-29 23:08:22', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('30', 'admin', '2018-01-02 09:51:50', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('31', 'admin', '2018-01-03 16:00:28', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('32', 'admin', '2018-01-03 17:16:40', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('33', 'admin', '2018-01-03 17:29:03', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('34', 'admin', '2018-01-03 17:37:50', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('35', 'admin', '2018-01-04 09:26:00', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('36', 'admin', '2018-01-04 10:33:01', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('37', 'admin', '2018-01-04 10:36:03', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('38', 'admin', '2018-01-04 10:39:00', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('39', 'admin', '2018-01-04 10:46:23', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('40', 'admin', '2018-01-04 10:51:13', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('41', 'admin', '2018-01-04 11:01:29', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('42', 'admin', '2018-01-04 11:10:05', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('43', 'admin', '2018-01-04 11:13:24', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('44', 'admin', '2018-01-04 11:40:34', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('45', 'admin', '2018-01-04 11:43:00', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('46', 'admin', '2018-01-04 11:53:01', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('47', 'admin', '2018-01-04 12:01:28', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('48', 'admin', '2018-01-04 14:19:53', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('49', 'admin', '2018-01-04 14:29:08', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('50', 'admin', '2018-01-04 14:35:57', 'intercept the method: com.xiaoshu.controller.PublicAccountInfoController.getInfoByUserIdnested exception is org.apache.ibatis.exceptions.TooManyResultsException: Expected one result (or null) to be returned by selectOne(), but found: 3', '拦截到异常', '127.0.0.1', '');
INSERT INTO `log` VALUES ('51', 'admin', '2018-01-04 14:36:21', 'intercept the method: com.xiaoshu.controller.PublicAccountInfoController.getInfoByUserIdnested exception is org.apache.ibatis.exceptions.TooManyResultsException: Expected one result (or null) to be returned by selectOne(), but found: 3', '拦截到异常', '127.0.0.1', '');
INSERT INTO `log` VALUES ('52', 'admin', '2018-01-04 14:37:03', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('53', 'admin', '2018-01-04 14:37:06', 'intercept the method: com.xiaoshu.controller.PublicAccountInfoController.getInfoByUserIdnested exception is org.apache.ibatis.exceptions.TooManyResultsException: Expected one result (or null) to be returned by selectOne(), but found: 3', '拦截到异常', '127.0.0.1', '');
INSERT INTO `log` VALUES ('54', 'admin', '2018-01-04 14:38:40', 'intercept the method: com.xiaoshu.controller.PublicAccountInfoController.getInfoByUserIdnested exception is org.apache.ibatis.exceptions.TooManyResultsException: Expected one result (or null) to be returned by selectOne(), but found: 3', '拦截到异常', '127.0.0.1', '');
INSERT INTO `log` VALUES ('55', 'admin', '2018-01-04 14:39:04', 'intercept the method: com.xiaoshu.controller.PublicAccountInfoController.getInfoByUserIdnested exception is org.apache.ibatis.exceptions.TooManyResultsException: Expected one result (or null) to be returned by selectOne(), but found: 3', '拦截到异常', '127.0.0.1', '');
INSERT INTO `log` VALUES ('56', 'admin', '2018-01-04 14:44:27', 'intercept the method: com.xiaoshu.controller.PublicAccountInfoController.getInfoByUserIdnested exception is org.apache.ibatis.exceptions.TooManyResultsException: Expected one result (or null) to be returned by selectOne(), but found: 3', '拦截到异常', '127.0.0.1', '');
INSERT INTO `log` VALUES ('57', 'admin', '2018-01-04 15:55:27', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('58', 'admin', '2018-01-04 16:27:42', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('59', 'admin', '2018-01-04 16:35:57', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('60', 'admin', '2018-01-04 17:11:18', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('61', 'admin', '2018-01-04 17:13:41', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('62', 'admin', '2018-01-04 17:19:21', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('63', 'admin', '2018-01-04 17:22:56', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('64', 'admin', '2018-01-04 17:35:18', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('65', 'admin', '2018-01-04 17:44:19', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('66', 'admin', '2018-01-04 18:51:38', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('67', 'admin', '2018-01-04 19:13:20', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('68', 'admin', '2018-01-05 14:31:15', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('69', 'admin', '2018-01-05 15:54:57', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('70', 'admin', '2018-01-05 17:12:12', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('71', 'admin', '2018-01-05 17:40:20', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('72', 'admin', '2018-01-05 17:58:28', null, '退出', null, null);
INSERT INTO `log` VALUES ('73', 'admin', '2018-01-05 17:58:37', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('74', 'admin', '2018-01-08 09:58:06', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('75', 'admin', '2018-01-08 10:45:02', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('76', 'admin', '2018-01-08 11:02:09', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('77', 'admin', '2018-01-08 11:03:17', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('78', 'admin', '2018-01-08 11:14:15', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('79', 'admin', '2018-01-08 11:26:46', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('80', 'admin', '2018-01-08 15:17:29', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('81', 'admin', '2018-01-08 16:52:54', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('82', 'admin', '2018-01-08 16:58:46', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('83', 'admin', '2018-01-08 18:14:16', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('84', 'admin', '2018-01-09 09:19:45', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('85', 'admin', '2018-01-09 10:13:59', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('86', 'admin', '2018-01-09 11:32:55', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('87', 'admin', '2018-01-09 11:46:45', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('88', 'admin', '2018-01-09 13:55:39', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('89', 'admin', '2018-01-09 14:45:12', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('90', 'admin', '2018-01-09 15:00:59', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('91', 'admin', '2018-01-09 15:03:38', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('92', 'admin', '2018-01-09 15:19:26', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('93', 'admin', '2018-01-09 15:23:44', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('94', 'admin', '2018-01-09 15:25:21', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('95', 'admin', '2018-01-09 15:27:13', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('96', 'admin', '2018-01-09 15:33:43', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('97', 'admin', '2018-01-09 15:34:08', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('98', 'admin', '2018-01-09 15:36:36', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('99', 'admin', '2018-01-09 15:38:42', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('100', 'admin', '2018-01-09 15:40:11', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('101', 'admin', '2018-01-09 15:44:42', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('102', 'admin', '2018-01-09 15:46:35', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('103', 'admin', '2018-01-09 15:48:58', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('104', 'admin', '2018-01-09 15:49:56', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('105', 'admin', '2018-01-09 15:57:16', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('106', 'admin', '2018-01-09 16:52:39', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('107', 'admin', '2018-01-09 17:10:37', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('108', 'admin', '2018-01-09 17:16:30', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('109', 'admin', '2018-01-09 17:19:00', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('110', 'admin', '2018-01-09 17:28:43', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('111', 'admin', '2018-01-09 17:30:28', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('112', 'admin', '2018-01-09 17:40:05', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('113', 'admin', '2018-01-10 09:31:41', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('114', 'admin', '2018-01-10 09:56:37', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('115', 'admin', '2018-01-10 10:07:42', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('116', 'admin', '2018-01-10 11:08:32', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('117', 'admin', '2018-01-10 11:17:39', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('118', 'admin', '2018-01-10 11:59:37', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('119', 'admin', '2018-01-10 13:54:47', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('120', 'admin', '2018-01-10 14:08:01', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('121', 'admin', '2018-01-10 14:10:50', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('122', 'admin', '2018-01-10 14:12:08', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('123', 'admin', '2018-01-10 16:16:14', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('124', 'admin', '2018-01-10 16:44:47', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('125', 'admin', '2018-01-10 17:20:57', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('126', 'admin', '2018-01-10 17:22:07', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('127', 'admin', '2018-01-10 17:45:35', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('128', 'admin', '2018-01-10 17:57:50', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('129', 'admin', '2018-01-10 18:00:02', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('130', 'admin', '2018-01-10 18:13:28', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('131', 'admin', '2018-01-11 09:32:00', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('132', 'admin', '2018-01-11 09:41:42', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('133', 'admin', '2018-01-11 09:42:50', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('134', 'admin', '2018-01-11 09:44:30', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('135', 'admin', '2018-01-11 09:50:17', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('136', 'admin', '2018-01-11 10:01:30', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('137', 'admin', '2018-01-11 10:03:29', 'intercept the method: com.xiaoshu.controller.FocusedUserInfoController.toView\r\n### Error querying database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'GROUP_NAME\' in \'field list\'\r\n### The error may exist in file [E:\\project\\MF001536\\MF001536\\target\\ssm-0.0.1-SNAPSHOT\\WEB-INF\\classes\\mapper\\FocusedUserInfoMapper.xml]\r\n### The error may involve com.xiaoshu.dao.FocusedUserInfoMapper.selectByPrimaryKey-Inline\r\n### The error occurred while setting parameters\r\n### SQL: select     ID,   USER_ID,   USER_NAME,   ID_CARD,   DEPARTMENT,   POSITION,   PHONE,   PROVINCE,   GENDER,   USER_TYPE,   EMAIL,   WEI_XIN,   ACCOUNT_ID,   HEAD_IMG,   SUBSCRIBE_STATUS,   SUBSCRIBE_TIME,   CITY,   COMMUNITY_ID,   COMMUNITY_NAME,   STREET_ID,   STREET_NAME,   HOUSE_ID,   HOUSE_NUMBER,   ADDRESS,   CREATE_TIME,   UPDATE_TIME,   STATUS,   MENU_ID,   GROUP_ID,   GROUP_NAME    from focused_user_info where ID = ?\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'GROUP_NAME\' in \'field list\'\n; bad SQL grammar []; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'GROUP_NAME\' in \'field list\'', '拦截到异常', '127.0.0.1', '');
INSERT INTO `log` VALUES ('138', 'admin', '2018-01-11 10:05:09', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('139', 'admin', '2018-01-11 10:10:31', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('140', 'admin', '2018-01-11 10:47:39', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('141', 'admin', '2018-01-11 11:38:53', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('142', 'admin', '2018-01-11 13:52:12', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('143', 'admin', '2018-01-11 14:13:33', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('144', 'admin', '2018-01-11 14:40:42', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('145', 'admin', '2018-01-11 14:46:25', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('146', 'admin', '2018-01-11 15:04:49', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('147', 'admin', '2018-01-11 15:43:04', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('148', 'admin', '2018-01-11 15:47:25', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('149', 'admin', '2018-01-11 15:48:16', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('150', 'admin', '2018-01-12 10:05:33', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('151', 'admin', '2018-01-12 10:10:50', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('152', 'admin', '2018-01-12 11:42:32', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('153', 'admin', '2018-01-12 13:51:44', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('154', 'admin', '2018-01-12 14:15:52', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('155', 'admin', '2018-01-12 16:06:11', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('156', 'admin', '2018-01-12 17:06:51', null, '登录', '110.184.49.211', null);
INSERT INTO `log` VALUES ('157', 'admin', '2018-01-12 17:07:52', null, '登录', '110.184.49.211', null);
INSERT INTO `log` VALUES ('158', 'admin', '2018-01-12 17:13:59', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('159', 'admin', '2018-01-15 09:44:34', null, '登录', '110.184.53.209', null);
INSERT INTO `log` VALUES ('160', 'admin', '2018-01-15 09:55:02', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('161', 'admin', '2018-01-15 10:10:05', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('162', 'admin', '2018-01-15 10:19:17', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('163', 'admin', '2018-01-15 10:19:49', 'intercept the method: com.xiaoshu.controller.FocusedUserInfoController.toUserListPage\r\n### Error querying database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'search\' in \'where clause\'\r\n### The error may exist in file [E:\\project\\MF001536\\MF001536\\target\\ssm-0.0.1-SNAPSHOT\\WEB-INF\\classes\\mapper\\FocusedUserInfoMapper.xml]\r\n### The error may involve com.xiaoshu.dao.FocusedUserInfoMapper.selectByPage-Inline\r\n### The error occurred while setting parameters\r\n### SQL: select   t1.*,t2.GROUP_NAME   from focused_user_info t1 LEFT JOIN focused_user_group t2 on t1.GROUP_ID = t2.ID and t1.status = 1 and t2.status = 1    WHERE 1=1         AND t1.NICK_NAME LIKE concat(\'%\',search,\'%\')                             AND t1.MENU_ID = \'14\'                 limit 0,10\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'search\' in \'where clause\'\n; bad SQL grammar []; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'search\' in \'where clause\'', '拦截到异常', '127.0.0.1', '');
INSERT INTO `log` VALUES ('164', 'admin', '2018-01-15 10:20:07', 'intercept the method: com.xiaoshu.controller.FocusedUserInfoController.toUserListPage\r\n### Error querying database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'search\' in \'where clause\'\r\n### The error may exist in file [E:\\project\\MF001536\\MF001536\\target\\ssm-0.0.1-SNAPSHOT\\WEB-INF\\classes\\mapper\\FocusedUserInfoMapper.xml]\r\n### The error may involve com.xiaoshu.dao.FocusedUserInfoMapper.selectByPage-Inline\r\n### The error occurred while setting parameters\r\n### SQL: select   t1.*,t2.GROUP_NAME   from focused_user_info t1 LEFT JOIN focused_user_group t2 on t1.GROUP_ID = t2.ID and t1.status = 1 and t2.status = 1    WHERE 1=1         AND t1.NICK_NAME LIKE concat(\'%\',search,\'%\')                             AND t1.MENU_ID = \'14\'                 limit 0,10\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'search\' in \'where clause\'\n; bad SQL grammar []; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'search\' in \'where clause\'', '拦截到异常', '127.0.0.1', '');
INSERT INTO `log` VALUES ('165', 'admin', '2018-01-15 10:21:47', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('166', 'admin', '2018-01-15 10:42:27', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('167', 'admin', '2018-01-15 10:50:26', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('168', 'admin', '2018-01-15 10:52:08', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('169', 'admin', '2018-01-15 11:27:23', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('170', 'admin', '2018-01-15 11:35:37', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('171', 'admin', '2018-01-15 12:03:12', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('172', 'admin', '2018-01-15 12:11:13', null, '登录', '110.184.53.209', null);
INSERT INTO `log` VALUES ('173', 'admin', '2018-01-15 14:09:16', null, '登录', '110.184.53.209', null);
INSERT INTO `log` VALUES ('174', 'admin', '2018-01-15 14:14:44', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('175', 'admin', '2018-01-15 15:43:00', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('176', 'admin', '2018-01-15 15:47:31', null, '退出', null, null);
INSERT INTO `log` VALUES ('177', 'admin', '2018-01-15 15:47:45', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('178', 'admin', '2018-01-15 17:15:05', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('179', 'admin', '2018-01-15 17:51:45', null, '登录', '110.184.53.209', null);
INSERT INTO `log` VALUES ('180', 'admin', '2018-01-15 17:53:13', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('181', 'admin', '2018-01-16 10:49:47', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('182', 'admin', '2018-01-16 10:53:41', 'intercept the method: com.xiaoshu.controller.MenuController.indexnested exception is org.apache.ibatis.exceptions.PersistenceException: \r\n### Error querying database.  Cause: org.springframework.jdbc.CannotGetJdbcConnectionException: Could not get JDBC Connection; nested exception is java.sql.SQLException: An attempt by a client to checkout a Connection has timed out.\r\n### The error may exist in com/xiaoshu/dao/OperationMapper.java (best guess)\r\n### The error may involve com.xiaoshu.dao.OperationMapper.select\r\n### The error occurred while executing a query\r\n### Cause: org.springframework.jdbc.CannotGetJdbcConnectionException: Could not get JDBC Connection; nested exception is java.sql.SQLException: An attempt by a client to checkout a Connection has timed out.', '拦截到异常', '0:0:0:0:0:0:0:1', '/ssm');
INSERT INTO `log` VALUES ('183', 'admin', '2018-01-16 11:03:04', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('184', 'admin', '2018-01-16 11:04:41', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('185', 'admin', '2018-01-16 13:18:11', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('186', 'admin', '2018-01-16 14:26:24', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('187', 'admin', '2018-01-16 15:22:47', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('188', 'admin', '2018-01-16 16:24:53', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('189', 'admin', '2018-01-16 17:16:12', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('190', 'admin', '2018-01-17 09:12:39', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('191', 'admin', '2018-01-17 09:15:08', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('192', 'admin', '2018-01-17 09:18:37', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('193', 'admin', '2018-01-17 09:40:41', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('194', 'admin', '2018-01-17 09:48:15', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('195', 'admin', '2018-01-17 09:53:36', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('196', 'admin', '2018-01-17 09:57:31', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('197', 'admin', '2018-01-17 10:01:24', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('198', 'admin', '2018-01-17 10:51:47', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('199', 'admin', '2018-01-17 10:56:23', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('200', 'admin', '2018-01-17 11:04:02', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('201', 'admin', '2018-01-17 11:12:38', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('202', 'admin', '2018-01-17 11:20:06', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('203', 'admin', '2018-01-17 11:24:30', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('204', 'admin', '2018-01-17 11:27:47', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('205', 'admin', '2018-01-17 11:33:32', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('206', 'admin', '2018-01-17 12:06:27', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('207', 'admin', '2018-01-17 13:13:01', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('208', 'admin', '2018-01-17 13:51:25', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('209', 'admin', '2018-01-17 13:55:09', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('210', 'admin', '2018-01-17 14:02:42', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('211', 'admin', '2018-01-17 14:04:57', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('212', 'admin', '2018-01-17 14:05:54', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('213', 'admin', '2018-01-17 14:10:16', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('214', 'admin', '2018-01-17 14:27:38', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('215', 'admin', '2018-01-17 14:33:06', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('216', 'admin', '2018-01-17 14:36:25', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('217', 'admin', '2018-01-17 14:40:54', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('218', 'admin', '2018-01-17 14:47:42', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('219', 'admin', '2018-01-17 14:53:16', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('220', 'admin', '2018-01-17 14:59:21', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('221', 'admin', '2018-01-17 15:01:03', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('222', 'admin', '2018-01-17 15:08:46', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('223', 'admin', '2018-01-17 15:17:56', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('224', 'admin', '2018-01-17 15:22:29', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('225', 'admin', '2018-01-17 15:24:15', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('226', 'admin', '2018-01-17 15:29:53', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('227', 'admin', '2018-01-17 15:35:57', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('228', 'admin', '2018-01-17 15:45:46', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('229', 'admin', '2018-01-17 15:50:17', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('230', 'admin', '2018-01-17 16:29:24', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('231', 'admin', '2018-01-17 16:41:12', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('232', 'admin', '2018-01-17 16:55:19', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('233', 'admin', '2018-01-17 16:56:34', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('234', 'admin', '2018-01-17 17:03:08', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('235', 'admin', '2018-01-17 17:05:28', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('236', 'admin', '2018-01-17 17:09:48', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('237', 'admin', '2018-01-17 17:29:22', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('238', 'admin', '2018-01-17 17:30:54', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('239', 'admin', '2018-01-17 17:47:15', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('240', 'admin', '2018-01-17 18:23:01', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('241', 'admin', '2018-01-17 21:21:10', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('242', 'admin', '2018-01-17 21:25:48', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('243', 'admin', '2018-01-18 09:31:36', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('244', 'admin', '2018-01-18 09:42:13', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('245', 'admin', '2018-01-18 09:43:57', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('246', 'admin', '2018-01-18 09:47:08', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('247', 'admin', '2018-01-18 09:49:49', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('248', 'admin', '2018-01-18 10:07:34', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('249', 'admin', '2018-01-18 10:23:21', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('250', 'admin', '2018-01-18 10:37:06', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('251', 'admin', '2018-01-18 10:37:34', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('252', 'admin', '2018-01-18 10:42:51', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('253', 'admin', '2018-01-18 10:45:57', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('254', 'admin', '2018-01-18 11:04:35', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('255', 'admin', '2018-01-18 11:14:39', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('256', 'admin', '2018-01-18 11:24:58', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('257', 'admin', '2018-01-18 11:28:07', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('258', 'admin', '2018-01-18 11:31:08', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('259', 'admin', '2018-01-18 11:36:29', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('260', 'admin', '2018-01-18 11:42:53', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('261', 'admin', '2018-01-18 11:47:58', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('262', 'admin', '2018-01-18 11:50:37', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('263', 'admin', '2018-01-18 11:53:25', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('264', 'admin', '2018-01-18 12:00:02', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('265', 'admin', '2018-01-18 12:02:16', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('266', 'admin', '2018-01-18 13:01:17', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('267', 'admin', '2018-01-18 13:02:53', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('268', 'admin', '2018-01-18 13:06:50', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('269', 'admin', '2018-01-18 13:50:20', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('270', 'admin', '2018-01-18 13:54:02', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('271', 'admin', '2018-01-18 14:03:47', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('272', 'admin', '2018-01-18 14:11:28', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('273', 'admin', '2018-01-18 14:13:06', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('274', 'admin', '2018-01-18 14:17:15', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('275', 'admin', '2018-01-18 14:18:26', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('276', 'admin', '2018-01-18 14:19:49', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('277', 'admin', '2018-01-18 14:23:56', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('278', 'admin', '2018-01-18 14:40:53', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('279', 'admin', '2018-01-18 15:00:27', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('280', 'admin', '2018-01-18 15:03:33', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('281', 'admin', '2018-01-18 15:14:29', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('282', 'admin', '2018-01-18 15:15:16', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('283', 'admin', '2018-01-18 15:16:22', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('284', 'admin', '2018-01-18 15:18:30', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('285', 'admin', '2018-01-18 15:19:37', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('286', 'admin', '2018-01-18 15:27:32', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('287', 'admin', '2018-01-18 15:38:04', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('288', 'admin', '2018-01-18 15:45:19', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('289', 'admin', '2018-01-18 15:53:19', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('290', 'admin', '2018-01-18 16:40:31', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('291', 'admin', '2018-01-18 16:45:43', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('292', 'admin', '2018-01-18 16:51:23', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('293', 'admin', '2018-01-18 16:53:02', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('294', 'admin', '2018-01-18 16:53:07', 'intercept the method: com.xiaoshu.controller.FocusedUserInfoController.toUserListPagenested exception is org.apache.ibatis.reflection.ReflectionException: Could not set property \'userType\' of \'class com.xiaoshu.entity.FocusedUserInfo\' with value \'0\' Cause: org.apache.ibatis.reflection.ReflectionException: There is no setter for property named \'userType\' in \'class com.xiaoshu.entity.FocusedUserInfo\'', '拦截到异常', '127.0.0.1', '');
INSERT INTO `log` VALUES ('295', 'admin', '2018-01-18 16:55:29', 'intercept the method: com.xiaoshu.controller.FocusedUserInfoController.toUserListPagenested exception is org.apache.ibatis.reflection.ReflectionException: Could not set property \'userType\' of \'class com.xiaoshu.entity.FocusedUserInfo\' with value \'0\' Cause: org.apache.ibatis.reflection.ReflectionException: There is no setter for property named \'userType\' in \'class com.xiaoshu.entity.FocusedUserInfo\'', '拦截到异常', '127.0.0.1', '');
INSERT INTO `log` VALUES ('296', 'admin', '2018-01-18 16:55:35', 'intercept the method: com.xiaoshu.controller.FocusedUserInfoController.toUserListPagenested exception is org.apache.ibatis.reflection.ReflectionException: Could not set property \'userType\' of \'class com.xiaoshu.entity.FocusedUserInfo\' with value \'0\' Cause: org.apache.ibatis.reflection.ReflectionException: There is no setter for property named \'userType\' in \'class com.xiaoshu.entity.FocusedUserInfo\'', '拦截到异常', '127.0.0.1', '');
INSERT INTO `log` VALUES ('297', 'admin', '2018-01-18 16:58:55', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('298', 'admin', '2018-01-18 16:59:00', 'intercept the method: com.xiaoshu.controller.FocusedUserInfoController.toUserListPagenested exception is org.apache.ibatis.reflection.ReflectionException: Could not set property \'userType\' of \'class com.xiaoshu.entity.FocusedUserInfo\' with value \'0\' Cause: org.apache.ibatis.reflection.ReflectionException: There is no setter for property named \'userType\' in \'class com.xiaoshu.entity.FocusedUserInfo\'', '拦截到异常', '127.0.0.1', '');
INSERT INTO `log` VALUES ('299', 'admin', '2018-01-18 17:10:18', 'intercept the method: com.xiaoshu.controller.FocusedUserInfoController.toUserListPagenested exception is org.apache.ibatis.reflection.ReflectionException: Could not set property \'userType\' of \'class com.xiaoshu.entity.FocusedUserInfo\' with value \'0\' Cause: org.apache.ibatis.reflection.ReflectionException: There is no setter for property named \'userType\' in \'class com.xiaoshu.entity.FocusedUserInfo\'', '拦截到异常', '127.0.0.1', '');
INSERT INTO `log` VALUES ('300', 'admin', '2018-01-18 17:10:49', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('301', 'admin', '2018-01-18 17:13:10', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('302', 'admin', '2018-01-18 17:13:28', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('303', 'admin', '2018-01-18 17:22:16', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('304', 'admin', '2018-01-18 17:25:27', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('305', 'admin', '2018-01-18 17:34:00', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('306', 'admin', '2018-01-18 17:37:40', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('307', 'admin', '2018-01-18 17:42:55', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('308', 'admin', '2018-01-18 17:43:02', 'intercept the method: com.xiaoshu.controller.FocusedUserInfoController.toUserListPage\r\n### Error querying database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'t1.GROUP_ID\' in \'on clause\'\r\n### The error may exist in file [G:\\eclipse\\workspace_weixin\\target\\ssm-0.0.1-SNAPSHOT\\WEB-INF\\classes\\mapper\\FocusedUserInfoMapper.xml]\r\n### The error may involve com.xiaoshu.dao.FocusedUserInfoMapper.selectByPage-Inline\r\n### The error occurred while setting parameters\r\n### SQL: select   t1.*,t2.GROUP_NAME   from focused_user_info t1 LEFT JOIN focused_user_group t2 on t1.GROUP_ID = t2.ID and t1.status = 1 and t2.status = 1    WHERE 1=1                         AND t1.MENU_ID = \'14\'                 limit 0,10\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'t1.GROUP_ID\' in \'on clause\'\n; bad SQL grammar []; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'t1.GROUP_ID\' in \'on clause\'', '拦截到异常', '127.0.0.1', '');
INSERT INTO `log` VALUES ('309', 'admin', '2018-01-18 17:45:47', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('310', 'admin', '2018-01-19 09:18:14', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('311', 'admin', '2018-01-19 09:21:23', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('312', 'admin', '2018-01-19 09:29:10', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('313', 'admin', '2018-01-19 09:57:44', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('314', 'admin', '2018-01-19 10:00:26', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('315', 'admin', '2018-01-19 10:08:14', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('316', 'admin', '2018-01-19 10:15:35', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('317', 'admin', '2018-01-19 10:16:10', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('318', 'admin', '2018-01-19 10:21:47', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('319', 'admin', '2018-01-19 11:03:18', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('320', 'admin', '2018-01-19 11:07:39', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('321', 'admin', '2018-01-19 11:35:42', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('322', 'admin', '2018-01-19 11:37:00', 'intercept the method: com.xiaoshu.controller.InterfaceInfoController.list\r\n### Error querying database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'limit 0,10\' at line 26\r\n### The error may exist in file [G:\\eclipse\\workspace_weixin\\target\\ssm-0.0.1-SNAPSHOT\\WEB-INF\\classes\\mapper\\InterfaceInfoMapper.xml]\r\n### The error may involve com.xiaoshu.dao.InterfaceInfoMapper.selectByPage-Inline\r\n### The error occurred while setting parameters\r\n### SQL: select       ID,   DESC_M,   URL,   PARAMS,   TYPE,   STATUS,   CREATE_TIME,   UPDATE_TIME,   IS_USE      from interface_info    WHERE 1=1 and status = 1         AND (DESC_M LIKE CONCAT(\'%\',\'\',\'%\') OR PARAMS LIKE CONCAT(\'%\',\'\',\'%\'))             AND TYPE =                              limit 0,10\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'limit 0,10\' at line 26\n; bad SQL grammar []; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'limit 0,10\' at line 26', '拦截到异常', '127.0.0.1', '');
INSERT INTO `log` VALUES ('323', 'admin', '2018-01-19 11:38:10', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('324', 'admin', '2018-01-19 11:46:47', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('325', 'admin', '2018-01-19 11:53:14', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('326', 'admin', '2018-01-19 11:55:06', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('327', 'admin', '2018-01-19 11:57:17', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('328', 'admin', '2018-01-19 12:00:31', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('329', 'admin', '2018-01-19 13:04:15', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('330', 'admin', '2018-01-19 13:12:10', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('331', 'admin', '2018-01-19 13:41:40', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('332', 'admin', '2018-01-19 13:45:06', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('333', 'admin', '2018-01-19 13:52:30', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('334', 'admin', '2018-01-19 13:54:55', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('335', 'admin', '2018-01-19 14:05:35', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('336', 'admin', '2018-01-19 14:34:56', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('337', 'admin', '2018-01-19 14:37:23', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('338', 'admin', '2018-01-19 14:40:35', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('339', 'admin', '2018-01-19 14:43:58', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('340', 'admin', '2018-01-19 14:57:45', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('341', 'admin', '2018-01-19 15:17:00', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('342', 'admin', '2018-01-19 15:17:52', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('343', 'admin', '2018-01-19 15:24:54', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('344', 'admin', '2018-01-19 15:28:35', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('345', 'admin', '2018-01-19 15:32:07', 'intercept the method: com.xiaoshu.controller.PublicAccountInfoController.getInfoByUserId\r\n### Error querying database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'USER_ID\' in \'where clause\'\r\n### The error may exist in file [G:\\eclipse\\workspace_weixin\\target\\ssm-0.0.1-SNAPSHOT\\WEB-INF\\classes\\mapper\\PublicAccountInfoMapper.xml]\r\n### The error may involve com.xiaoshu.dao.PublicAccountInfoMapper.getInfoByUserId-Inline\r\n### The error occurred while setting parameters\r\n### SQL: SELECT * FROM public_account_info where USER_ID = \'1\' AND MENU_ID = \'13\'\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'USER_ID\' in \'where clause\'\n; bad SQL grammar []; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'USER_ID\' in \'where clause\'', '拦截到异常', '127.0.0.1', '');
INSERT INTO `log` VALUES ('346', 'admin', '2018-01-19 15:32:04', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('347', 'admin', '2018-01-19 15:38:47', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('348', 'admin', '2018-01-19 15:41:24', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('349', 'admin', '2018-01-19 15:49:45', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('350', 'admin', '2018-01-19 15:53:06', 'intercept the method: com.xiaoshu.controller.PublicAccountInfoController.getInfoByUserId\r\n### Error querying database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'USER_ID\' in \'where clause\'\r\n### The error may exist in file [G:\\eclipse\\workspace_weixin\\target\\ssm-0.0.1-SNAPSHOT\\WEB-INF\\classes\\mapper\\PublicAccountInfoMapper.xml]\r\n### The error may involve com.xiaoshu.dao.PublicAccountInfoMapper.getInfoByUserId-Inline\r\n### The error occurred while setting parameters\r\n### SQL: SELECT * FROM public_account_info where USER_ID = \'1\' AND MENU_ID = \'13\'\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'USER_ID\' in \'where clause\'\n; bad SQL grammar []; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'USER_ID\' in \'where clause\'', '拦截到异常', '127.0.0.1', '');
INSERT INTO `log` VALUES ('351', 'admin', '2018-01-19 15:59:15', 'intercept the method: com.xiaoshu.controller.PublicAccountInfoController.listnested exception is org.apache.ibatis.reflection.ReflectionException: Could not set property \'effectivetime\' of \'class com.xiaoshu.entity.PublicAccountInfo\' with value \'7000\' Cause: org.apache.ibatis.reflection.ReflectionException: There is no setter for property named \'effectivetime\' in \'class com.xiaoshu.entity.PublicAccountInfo\'', '拦截到异常', '127.0.0.1', '');
INSERT INTO `log` VALUES ('352', 'admin', '2018-01-19 16:01:08', 'intercept the method: com.xiaoshu.controller.PublicAccountInfoController.listnested exception is org.apache.ibatis.reflection.ReflectionException: Could not set property \'effectivetime\' of \'class com.xiaoshu.entity.PublicAccountInfo\' with value \'7000\' Cause: org.apache.ibatis.reflection.ReflectionException: There is no setter for property named \'effectivetime\' in \'class com.xiaoshu.entity.PublicAccountInfo\'', '拦截到异常', '127.0.0.1', '');
INSERT INTO `log` VALUES ('353', 'admin', '2018-01-19 16:06:07', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('354', 'admin', '2018-01-19 16:24:46', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('355', 'admin', '2018-01-19 16:26:38', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('356', 'admin', '2018-01-19 16:28:32', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('357', 'admin', '2018-01-19 16:28:40', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('358', 'admin', '2018-01-19 16:32:04', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('359', 'admin', '2018-01-19 16:32:01', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('360', 'admin', '2018-01-19 16:35:40', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('361', 'admin', '2018-01-19 16:37:59', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('362', 'admin', '2018-01-19 16:41:22', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('363', 'admin', '2018-01-19 16:46:37', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('364', 'admin', '2018-01-19 16:50:15', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('365', 'admin', '2018-01-19 16:54:37', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('366', 'admin', '2018-01-19 16:57:33', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('367', 'admin', '2018-01-19 17:00:54', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('368', 'admin', '2018-01-19 17:05:15', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('369', 'admin', '2018-01-19 17:09:32', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('370', 'admin', '2018-01-19 17:13:46', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('371', 'admin', '2018-01-19 17:14:00', 'intercept the method: com.xiaoshu.controller.PublicAccountInfoController.getInfoByUserId\r\n### Error querying database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'USER_ID\' in \'where clause\'\r\n### The error may exist in file [E:\\apache-tomcat\\apache-tomcat-8\\webapps\\ssm\\WEB-INF\\classes\\mapper\\PublicAccountInfoMapper.xml]\r\n### The error may involve com.xiaoshu.dao.PublicAccountInfoMapper.getInfoByUserId-Inline\r\n### The error occurred while setting parameters\r\n### SQL: SELECT * FROM public_account_info where USER_ID = \'1\' AND MENU_ID = \'24\'\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'USER_ID\' in \'where clause\'\n; bad SQL grammar []; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'USER_ID\' in \'where clause\'', '拦截到异常', '0:0:0:0:0:0:0:1', '/ssm');
INSERT INTO `log` VALUES ('372', 'admin', '2018-01-19 17:19:17', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('373', 'admin', '2018-01-19 17:19:29', 'intercept the method: com.xiaoshu.controller.PublicAccountInfoController.getInfoByUserId\r\n### Error querying database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'USER_ID\' in \'where clause\'\r\n### The error may exist in file [E:\\apache-tomcat\\apache-tomcat-8\\webapps\\ssm\\WEB-INF\\classes\\mapper\\PublicAccountInfoMapper.xml]\r\n### The error may involve com.xiaoshu.dao.PublicAccountInfoMapper.getInfoByUserId-Inline\r\n### The error occurred while setting parameters\r\n### SQL: SELECT * FROM public_account_info where USER_ID = \'1\' AND MENU_ID = \'24\'\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'USER_ID\' in \'where clause\'\n; bad SQL grammar []; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'USER_ID\' in \'where clause\'', '拦截到异常', '0:0:0:0:0:0:0:1', '/ssm');
INSERT INTO `log` VALUES ('374', 'admin', '2018-01-19 17:22:40', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('375', 'admin', '2018-01-19 17:28:53', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('376', 'admin', '2018-01-19 17:33:57', 'intercept the method: com.xiaoshu.controller.PublicAccountInfoController.getInfoByUserId\r\n### Error querying database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'USER_ID\' in \'where clause\'\r\n### The error may exist in file [E:\\apache-tomcat\\apache-tomcat-8\\webapps\\ssm\\WEB-INF\\classes\\mapper\\PublicAccountInfoMapper.xml]\r\n### The error may involve com.xiaoshu.dao.PublicAccountInfoMapper.getInfoByUserId-Inline\r\n### The error occurred while setting parameters\r\n### SQL: SELECT * FROM public_account_info where USER_ID = \'1\' AND MENU_ID = \'24\'\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'USER_ID\' in \'where clause\'\n; bad SQL grammar []; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'USER_ID\' in \'where clause\'', '拦截到异常', '0:0:0:0:0:0:0:1', '/ssm');
INSERT INTO `log` VALUES ('377', 'admin', '2018-01-20 09:04:13', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('378', 'admin', '2018-01-20 09:08:42', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('379', 'admin', '2018-01-20 09:11:44', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('380', 'admin', '2018-01-20 09:14:42', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('381', 'admin', '2018-01-20 09:16:13', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('382', 'admin', '2018-01-21 11:05:22', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('383', 'admin', '2018-01-21 11:06:07', 'intercept the method: com.xiaoshu.controller.FocusedUserInfoController.toUserListPage\r\n### Error querying database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'t1.GROUP_ID\' in \'on clause\'\r\n### The error may exist in file [E:\\Program Files\\server\\apache-tomcat-7.0.72\\webapps\\ROOT\\WEB-INF\\classes\\mapper\\FocusedUserInfoMapper.xml]\r\n### The error may involve com.xiaoshu.dao.FocusedUserInfoMapper.selectByPage-Inline\r\n### The error occurred while setting parameters\r\n### SQL: select   t1.*,t2.GROUP_NAME   from focused_user_info t1 LEFT JOIN focused_user_group t2 on t1.GROUP_ID = t2.ID and t1.status = 1 and t2.status = 1    WHERE 1=1                             AND t1.MENU_ID = \'14\'                 limit 0,10\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'t1.GROUP_ID\' in \'on clause\'\n; bad SQL grammar []; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'t1.GROUP_ID\' in \'on clause\'', '拦截到异常', '127.0.0.1', '');
INSERT INTO `log` VALUES ('384', 'admin', '2018-01-21 11:10:21', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('385', 'admin', '2018-01-21 11:16:05', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('386', 'admin', '2018-01-21 11:19:09', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('387', 'admin', '2018-01-21 11:20:28', 'intercept the method: com.xiaoshu.controller.FocusedUserInfoController.toUserListPage\r\n### Error querying database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown table \'t1\'\r\n### The error may exist in file [E:\\Program Files\\IdeaProject\\weChatManage\\target\\ssm-0.0.1-SNAPSHOT\\WEB-INF\\classes\\mapper\\FocusedUserInfoMapper.xml]\r\n### The error may involve com.xiaoshu.dao.FocusedUserInfoMapper.selectByPage-Inline\r\n### The error occurred while setting parameters\r\n### SQL: select   t1.*   from focused_user_info    WHERE 1=1 and status = 1                         AND MENU_ID = \'14\'                 limit 0,10\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown table \'t1\'\n; bad SQL grammar []; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown table \'t1\'', '拦截到异常', '127.0.0.1', '');
INSERT INTO `log` VALUES ('388', 'admin', '2018-01-21 11:21:12', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('389', 'admin', '2018-01-21 11:28:53', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('390', 'admin', '2018-01-21 11:29:13', 'intercept the method: com.xiaoshu.controller.PublicAccountInfoController.getInfoByUserId\r\n### Error querying database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'USER_ID\' in \'where clause\'\r\n### The error may exist in file [E:\\Program Files\\IdeaProject\\weChatManage\\target\\ssm-0.0.1-SNAPSHOT\\WEB-INF\\classes\\mapper\\PublicAccountInfoMapper.xml]\r\n### The error may involve com.xiaoshu.dao.PublicAccountInfoMapper.getInfoByUserId-Inline\r\n### The error occurred while setting parameters\r\n### SQL: SELECT * FROM public_account_info where USER_ID = \'1\' AND MENU_ID = \'13\'\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'USER_ID\' in \'where clause\'\n; bad SQL grammar []; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'USER_ID\' in \'where clause\'', '拦截到异常', '127.0.0.1', '');
INSERT INTO `log` VALUES ('391', 'admin', '2018-01-21 11:29:30', 'intercept the method: com.xiaoshu.controller.PublicAccountInfoController.getInfoByUserId\r\n### Error querying database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'USER_ID\' in \'where clause\'\r\n### The error may exist in file [E:\\Program Files\\IdeaProject\\weChatManage\\target\\ssm-0.0.1-SNAPSHOT\\WEB-INF\\classes\\mapper\\PublicAccountInfoMapper.xml]\r\n### The error may involve com.xiaoshu.dao.PublicAccountInfoMapper.getInfoByUserId-Inline\r\n### The error occurred while setting parameters\r\n### SQL: SELECT * FROM public_account_info where USER_ID = \'1\' AND MENU_ID = \'13\'\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'USER_ID\' in \'where clause\'\n; bad SQL grammar []; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'USER_ID\' in \'where clause\'', '拦截到异常', '127.0.0.1', '');
INSERT INTO `log` VALUES ('392', 'admin', '2018-01-21 11:30:35', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('393', 'admin', '2018-01-21 11:43:59', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('394', 'admin', '2018-01-22 09:26:23', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('395', 'admin', '2018-01-22 09:45:53', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('396', 'admin', '2018-01-22 09:51:50', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('397', 'admin', '2018-01-22 09:56:43', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('398', 'admin', '2018-01-22 10:12:32', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('399', 'admin', '2018-01-22 10:26:23', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('400', 'admin', '2018-01-22 10:32:50', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('401', 'admin', '2018-01-22 10:33:36', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('402', 'admin', '2018-01-22 10:37:49', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('403', 'admin', '2018-01-22 10:51:04', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('404', 'admin', '2018-01-22 11:09:10', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('405', 'admin', '2018-01-22 11:13:35', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('406', 'admin', '2018-01-22 11:17:45', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('407', 'admin', '2018-01-22 11:23:01', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('408', 'admin', '2018-01-22 11:27:08', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('409', 'admin', '2018-01-22 11:30:17', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('410', 'admin', '2018-01-22 11:37:12', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('411', 'admin', '2018-01-22 11:40:44', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('412', 'admin', '2018-01-22 11:46:15', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('413', 'admin', '2018-01-22 11:50:48', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('414', 'admin', '2018-01-22 11:53:49', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('415', 'admin', '2018-01-22 11:56:36', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('416', 'admin', '2018-01-22 12:01:06', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('417', 'admin', '2018-01-22 12:03:40', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('418', 'admin', '2018-01-22 12:16:02', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('419', 'admin', '2018-01-22 12:23:45', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('420', 'admin', '2018-01-22 13:18:56', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('421', 'admin', '2018-01-22 13:26:05', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('422', 'admin', '2018-01-22 14:02:27', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('423', 'admin', '2018-01-22 14:07:52', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('424', 'admin', '2018-01-22 14:13:59', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('425', 'admin', '2018-01-22 14:14:29', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('426', 'admin', '2018-01-22 14:33:14', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('427', 'admin', '2018-01-22 14:39:12', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('428', 'admin', '2018-01-22 14:50:38', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('429', 'admin', '2018-01-22 14:53:11', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('430', 'admin', '2018-01-22 14:55:24', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('431', 'admin', '2018-01-22 15:02:30', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('432', 'admin', '2018-01-22 15:11:08', null, '登录', '110.184.55.67', null);
INSERT INTO `log` VALUES ('433', 'admin', '2018-01-22 15:16:33', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('434', 'admin', '2018-01-22 15:16:36', null, '退出', null, null);
INSERT INTO `log` VALUES ('435', 'admin', '2018-01-22 15:16:52', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('436', 'admin', '2018-01-22 15:19:08', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('437', 'admin', '2018-01-22 15:39:08', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('438', 'admin', '2018-01-22 15:45:42', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('439', 'admin', '2018-01-22 15:46:44', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('440', 'admin', '2018-01-22 15:50:56', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('441', 'admin', '2018-01-22 15:58:14', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('442', 'admin', '2018-01-22 16:00:38', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('443', 'admin', '2018-01-22 16:26:30', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('444', 'admin', '2018-01-22 16:27:26', 'intercept the method: com.xiaoshu.controller.PublicAccountInfoController.list\r\n### Error querying database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'limit 0,10\' at line 34\r\n### The error may exist in file [G:\\eclipse\\workspace_weixin\\target\\ssm-0.0.1-SNAPSHOT\\WEB-INF\\classes\\mapper\\PublicAccountInfoMapper.xml]\r\n### The error may involve com.xiaoshu.dao.PublicAccountInfoMapper.selectByPage-Inline\r\n### The error occurred while setting parameters\r\n### SQL: select       ID,   ACCOUNT_NAME,   ACCOUNT_ID,   TOKEN,   APP_ID,   APP_SECRET,   ACCOUNT_TYPE,   INTERFACE_URL,   CREATE_TIME,   UPDATE_TIME,   STATUS,   DESC_M,   USABLE,   EFFECTIVE_TIME,   OPEN_PLATFORM,   MCH_ID,   MCH_KEY,   NOTIFY_ERROR_URL,   NOTIFY_URL,   MENU_ID      from public_account_info    WHERE 1=1 and status = 1         AND ACCOUNT_NAME LIKE CONCAT(\'%\',\'\',\'%\')             AND USABLE =                  limit 0,10\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'limit 0,10\' at line 34\n; bad SQL grammar []; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'limit 0,10\' at line 34', '拦截到异常', '127.0.0.1', '');
INSERT INTO `log` VALUES ('445', 'admin', '2018-01-22 16:28:27', 'intercept the method: com.xiaoshu.controller.PublicAccountInfoController.list\r\n### Error querying database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'limit 0,10\' at line 34\r\n### The error may exist in file [G:\\eclipse\\workspace_weixin\\target\\ssm-0.0.1-SNAPSHOT\\WEB-INF\\classes\\mapper\\PublicAccountInfoMapper.xml]\r\n### The error may involve com.xiaoshu.dao.PublicAccountInfoMapper.selectByPage-Inline\r\n### The error occurred while setting parameters\r\n### SQL: select       ID,   ACCOUNT_NAME,   ACCOUNT_ID,   TOKEN,   APP_ID,   APP_SECRET,   ACCOUNT_TYPE,   INTERFACE_URL,   CREATE_TIME,   UPDATE_TIME,   STATUS,   DESC_M,   USABLE,   EFFECTIVE_TIME,   OPEN_PLATFORM,   MCH_ID,   MCH_KEY,   NOTIFY_ERROR_URL,   NOTIFY_URL,   MENU_ID      from public_account_info    WHERE 1=1 and status = 1         AND ACCOUNT_NAME LIKE CONCAT(\'%\',\'\',\'%\')             AND USABLE =                  limit 0,10\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'limit 0,10\' at line 34\n; bad SQL grammar []; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'limit 0,10\' at line 34', '拦截到异常', '127.0.0.1', '');
INSERT INTO `log` VALUES ('446', 'admin', '2018-01-22 16:29:05', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('447', 'admin', '2018-01-22 16:36:09', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('448', 'admin', '2018-01-22 16:50:25', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('449', 'admin', '2018-01-22 17:28:52', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('450', 'admin', '2018-01-23 09:09:11', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('451', 'admin', '2018-01-23 09:16:48', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('452', 'admin', '2018-01-23 09:46:19', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('453', 'admin', '2018-01-23 10:53:39', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('454', 'admin', '2018-01-23 11:00:51', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('455', 'admin', '2018-01-23 11:05:03', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('456', 'admin', '2018-01-23 11:11:09', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('457', 'admin', '2018-01-23 11:15:09', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('458', 'admin', '2018-01-23 11:53:24', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('459', 'admin', '2018-01-23 12:00:17', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('460', 'admin', '2018-01-23 14:38:01', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('461', 'admin', '2018-01-23 14:40:59', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('462', 'admin', '2018-01-23 14:53:17', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('463', 'admin', '2018-01-23 15:02:19', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('464', 'admin', '2018-01-23 15:15:27', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('465', 'admin', '2018-01-23 15:16:39', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('466', 'admin', '2018-01-23 15:17:49', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('467', 'admin', '2018-01-23 15:30:38', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('468', 'admin', '2018-01-23 15:48:47', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('469', 'admin', '2018-01-23 15:56:44', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('470', 'admin', '2018-01-23 16:02:45', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('471', 'admin', '2018-01-23 16:14:42', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('472', 'admin', '2018-01-23 16:26:18', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('473', 'admin', '2018-01-23 16:26:12', 'intercept the method: com.xiaoshu.controller.LoginController.toMain\r\n### Error querying database.  Cause: com.mysql.jdbc.exceptions.jdbc4.CommunicationsException: Communications link failure\n\nThe last packet successfully received from the server was 125,107 milliseconds ago.  The last packet sent successfully to the server was 125,095 milliseconds ago.\r\n### The error may exist in com/xiaoshu/dao/MenuMapper.java (best guess)\r\n### The error may involve com.xiaoshu.dao.MenuMapper.selectByExample-Inline\r\n### The error occurred while setting parameters\r\n### SQL: SELECT  menuId,menuName,menuUrl,parentId,menuDescription,state,iconCls,seq  FROM menu  WHERE       (  menuId in               (                 ?               ,                 ?               ,                 ?               ,                 ?               ,                 ?               ,                 ?               ,                 ?               ,                 ?               ,                 ?               ,                 ?               ,                 ?               ,                 ?               ,                 ?               ,                 ?               ,                 ?               ,                 ?               ,                 ?               ,                 ?               ,                 ?               ,                 ?               ,                 ?               ,                 ?               )                                                and parentId = ? )\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.CommunicationsException: Communications link failure\n\nThe last packet successfully received from the server was 125,107 milliseconds ago.  The last packet sent successfully to the server was 125,095 milliseconds ago.\n; SQL []; Communications link failure\n\nThe last packet successfully received from the server was 125,107 milliseconds ago.  The last packet sent successfully to the server was 125,095 milliseconds ago.; nested exception is com.mysql.jdbc.exceptions.jdbc4.CommunicationsException: Communications link failure\n\nThe last packet successfully received from the server was 125,107 milliseconds ago.  The last packet sent successfully to the server was 125,095 milliseconds ago.', '拦截到异常', '0:0:0:0:0:0:0:1', '');
INSERT INTO `log` VALUES ('474', 'admin', '2018-01-23 16:28:11', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('475', 'admin', '2018-01-23 16:28:25', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('476', 'admin', '2018-01-23 16:31:43', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('477', 'admin', '2018-01-23 16:34:13', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('478', 'admin', '2018-01-23 16:38:38', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('479', 'admin', '2018-01-23 16:43:08', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('480', 'admin', '2018-01-23 16:49:43', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('481', 'admin', '2018-01-23 16:50:32', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('482', 'admin', '2018-01-23 17:01:16', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('483', 'admin', '2018-01-23 17:04:15', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('484', 'admin', '2018-01-23 17:08:32', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('485', 'admin', '2018-01-23 17:10:23', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('486', 'admin', '2018-01-23 17:11:58', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('487', 'admin', '2018-01-23 17:25:46', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('488', 'admin', '2018-01-23 17:35:05', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('489', 'admin', '2018-01-23 17:37:14', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('490', 'admin', '2018-01-24 09:34:43', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('491', 'admin', '2018-01-24 09:37:20', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('492', 'admin', '2018-01-24 09:38:16', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('493', 'admin', '2018-01-24 09:53:32', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('494', 'admin', '2018-01-24 10:04:52', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('495', 'admin', '2018-01-24 10:39:17', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('496', 'admin', '2018-01-24 10:42:09', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('497', 'admin', '2018-01-24 10:50:45', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('498', 'admin', '2018-01-24 10:51:03', 'intercept the method: com.xiaoshu.controller.UploadController.listnull', '拦截到异常', '127.0.0.1', '');
INSERT INTO `log` VALUES ('499', 'admin', '2018-01-24 14:29:11', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('500', 'admin', '2018-01-24 14:43:28', 'intercept the method: com.xiaoshu.controller.UploadController.listnull', '拦截到异常', '127.0.0.1', '');
INSERT INTO `log` VALUES ('501', 'admin', '2018-01-24 14:43:56', 'intercept the method: com.xiaoshu.controller.UploadController.listnull', '拦截到异常', '127.0.0.1', '');
INSERT INTO `log` VALUES ('502', 'admin', '2018-01-25 10:50:16', null, '登录', '110.184.55.67', null);
INSERT INTO `log` VALUES ('503', 'admin', '2018-01-25 17:10:23', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('504', 'admin', '2018-01-25 17:17:47', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('505', 'admin', '2018-01-26 09:22:24', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('506', 'admin', '2018-01-26 09:30:43', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('507', 'admin', '2018-01-26 09:31:27', 'intercept the method: com.xiaoshu.controller.WechatMaterialController.list\r\n### Error querying database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'limit 0,10\' at line 19\r\n### The error may exist in file [E:\\eclipse_v4.7\\eclipse\\workspace\\wechatManager\\target\\ssm-0.0.1-SNAPSHOT\\WEB-INF\\classes\\mapper\\WechatMaterialMapper.xml]\r\n### The error may involve com.xiaoshu.dao.WechatMaterialMapper.selectByPage-Inline\r\n### The error occurred while setting parameters\r\n### SQL: select       ID,   DESC_M,   TYPESE,   URL,   MATERIAL_ID,   CREATE_TIME,   UPDATE_TIME,   STATUS,   MENU_ID,   PARENT_MENU_ID      from wechat_material    WHERE 1=1 and status = 1 and MENU_ID =                  limit 0,10\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'limit 0,10\' at line 19\n; bad SQL grammar []; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'limit 0,10\' at line 19', '拦截到异常', '0:0:0:0:0:0:0:1', '');
INSERT INTO `log` VALUES ('508', 'admin', '2018-01-26 09:31:47', 'intercept the method: com.xiaoshu.controller.WechatMaterialController.list\r\n### Error querying database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'limit 0,10\' at line 19\r\n### The error may exist in file [E:\\eclipse_v4.7\\eclipse\\workspace\\wechatManager\\target\\ssm-0.0.1-SNAPSHOT\\WEB-INF\\classes\\mapper\\WechatMaterialMapper.xml]\r\n### The error may involve com.xiaoshu.dao.WechatMaterialMapper.selectByPage-Inline\r\n### The error occurred while setting parameters\r\n### SQL: select       ID,   DESC_M,   TYPESE,   URL,   MATERIAL_ID,   CREATE_TIME,   UPDATE_TIME,   STATUS,   MENU_ID,   PARENT_MENU_ID      from wechat_material    WHERE 1=1 and status = 1 and MENU_ID =                  limit 0,10\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'limit 0,10\' at line 19\n; bad SQL grammar []; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'limit 0,10\' at line 19', '拦截到异常', '0:0:0:0:0:0:0:1', '');
INSERT INTO `log` VALUES ('509', 'admin', '2018-01-26 09:33:07', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('510', 'admin', '2018-01-26 09:44:15', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('511', 'admin', '2018-01-26 10:31:49', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('512', 'admin', '2018-01-26 10:59:39', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('513', 'admin', '2018-01-26 11:05:58', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('514', 'admin', '2018-01-26 11:18:42', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('515', 'admin', '2018-01-26 11:43:28', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('516', 'admin', '2018-01-26 11:59:50', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('517', 'admin', '2018-01-26 13:01:04', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('518', 'admin', '2018-01-26 15:43:58', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('519', 'admin', '2018-01-26 16:09:51', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('520', 'admin', '2018-01-26 16:37:07', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('521', 'admin', '2018-01-26 21:00:15', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('522', 'admin', '2018-01-26 21:35:37', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('523', 'admin', '2018-01-26 21:47:18', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('524', 'admin', '2018-01-27 07:17:07', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('525', 'admin', '2018-01-27 07:25:20', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('526', 'admin', '2018-01-27 07:29:10', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('527', 'admin', '2018-01-27 07:30:27', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('528', 'admin', '2018-01-27 07:36:24', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('529', 'admin', '2018-01-27 07:42:18', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('530', 'admin', '2018-01-27 07:49:42', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('531', 'admin', '2018-01-27 07:53:16', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('532', 'admin', '2018-01-27 07:59:16', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('533', 'admin', '2018-01-27 08:10:52', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('534', 'admin', '2018-01-27 08:14:31', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('535', 'admin', '2018-01-27 08:19:05', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('536', 'admin', '2018-01-27 08:56:33', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('537', 'admin', '2018-01-27 09:03:44', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('538', 'admin', '2018-01-27 09:06:20', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('539', 'admin', '2018-01-27 09:11:43', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('540', 'admin', '2018-01-27 09:14:12', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('541', 'admin', '2018-01-27 09:52:53', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('542', 'admin', '2018-01-27 10:37:33', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('543', 'admin', '2018-01-27 11:31:49', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('544', 'admin', '2018-01-27 11:35:20', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('545', 'admin', '2018-01-27 11:37:52', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('546', 'admin', '2018-01-27 11:39:42', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('547', 'admin', '2018-01-27 11:44:47', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('548', 'admin', '2018-01-27 11:47:21', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('549', 'admin', '2018-01-27 11:52:13', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('550', 'admin', '2018-01-27 11:58:06', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('551', 'admin', '2018-01-27 12:12:01', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('552', 'admin', '2018-01-27 12:25:54', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('553', 'admin', '2018-01-27 12:28:02', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('554', 'admin', '2018-01-27 13:06:56', null, '登录', '222.210.165.176', null);
INSERT INTO `log` VALUES ('555', 'admin', '2018-01-27 13:09:43', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('556', 'admin', '2018-01-28 15:42:23', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('557', 'admin', '2018-01-28 15:53:16', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('558', 'admin', '2018-01-28 16:27:32', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('559', 'admin', '2018-01-28 16:46:55', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('560', 'admin', '2018-01-28 16:53:23', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('561', 'admin', '2018-01-28 16:56:43', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('562', 'admin', '2018-01-28 17:30:48', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('563', 'admin', '2018-01-28 17:38:47', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('564', 'admin', '2018-01-28 17:53:46', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('565', 'admin', '2018-01-28 18:17:41', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('566', 'admin', '2018-01-28 18:25:45', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('567', 'admin', '2018-01-28 18:28:13', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('568', 'admin', '2018-01-28 18:40:28', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('569', 'admin', '2018-01-28 18:46:11', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('570', 'admin', '2018-01-28 18:49:26', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('571', 'admin', '2018-01-28 19:33:24', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('572', 'admin', '2018-01-28 19:36:44', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('573', 'admin', '2018-01-29 09:17:25', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('574', 'admin', '2018-01-29 09:21:01', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('575', 'admin', '2018-01-29 09:23:16', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('576', 'admin', '2018-01-29 09:31:03', null, '登录', '110.184.51.44', null);
INSERT INTO `log` VALUES ('577', 'admin', '2018-01-29 09:33:07', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('578', 'admin', '2018-01-29 09:36:42', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('579', 'admin', '2018-01-29 09:45:31', null, '登录', '110.184.51.44', null);
INSERT INTO `log` VALUES ('580', 'admin', '2018-01-29 09:49:27', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('581', 'admin', '2018-01-29 10:03:43', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('582', 'admin', '2018-01-29 10:08:20', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('583', 'admin', '2018-01-29 10:10:14', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('584', 'admin', '2018-01-29 10:10:25', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('585', 'admin', '2018-01-29 10:18:18', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('586', 'admin', '2018-01-29 10:37:29', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('587', 'admin', '2018-01-29 10:39:52', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('588', 'admin', '2018-01-29 10:47:54', null, '登录', '110.184.51.44', null);
INSERT INTO `log` VALUES ('589', 'admin', '2018-01-29 11:11:28', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('590', 'admin', '2018-01-29 11:17:58', null, '登录', '110.184.51.44', null);
INSERT INTO `log` VALUES ('591', 'admin', '2018-01-29 11:21:36', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('592', 'admin', '2018-01-29 11:23:43', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('593', 'admin', '2018-01-29 11:32:06', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('594', 'admin', '2018-01-29 11:39:21', null, '登录', '110.184.51.44', null);
INSERT INTO `log` VALUES ('595', 'admin', '2018-01-29 11:55:02', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('596', 'admin', '2018-01-29 11:58:38', null, '登录', '110.184.51.44', null);
INSERT INTO `log` VALUES ('597', 'admin', '2018-01-29 12:01:57', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('598', 'admin', '2018-01-29 12:03:59', null, '登录', '110.184.51.44', null);
INSERT INTO `log` VALUES ('599', 'admin', '2018-01-29 12:57:38', null, '登录', '110.184.51.44', null);
INSERT INTO `log` VALUES ('600', 'admin', '2018-01-29 12:57:48', 'intercept the method: com.xiaoshu.controller.LoginController.loginnull', '拦截到异常', '110.184.51.44', '/weChatManag');
INSERT INTO `log` VALUES ('601', 'admin', '2018-01-29 12:58:08', null, '登录', '110.184.51.44', null);
INSERT INTO `log` VALUES ('602', 'admin', '2018-01-29 13:07:02', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('603', 'admin', '2018-01-29 13:10:12', null, '登录', '110.184.51.44', null);
INSERT INTO `log` VALUES ('604', 'admin', '2018-01-29 13:25:05', null, '登录', '110.184.51.44', null);
INSERT INTO `log` VALUES ('605', 'admin', '2018-01-29 13:36:38', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('606', 'admin', '2018-01-29 13:42:28', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('607', 'admin', '2018-01-29 13:44:11', null, '登录', '110.184.51.44', null);
INSERT INTO `log` VALUES ('608', 'admin', '2018-01-29 13:47:06', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('609', 'admin', '2018-01-29 13:49:43', null, '登录', '110.184.51.44', null);
INSERT INTO `log` VALUES ('610', 'admin', '2018-01-29 14:17:47', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('611', 'admin', '2018-01-29 14:28:24', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('612', 'admin', '2018-01-29 14:34:47', null, '登录', '110.184.51.44', null);
INSERT INTO `log` VALUES ('613', 'admin', '2018-01-29 14:42:50', null, '登录', '110.184.51.44', null);
INSERT INTO `log` VALUES ('614', 'admin', '2018-01-29 14:44:36', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('615', 'admin', '2018-01-29 14:56:16', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('616', 'admin', '2018-01-29 14:58:41', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('617', 'admin', '2018-01-29 15:10:13', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('618', 'admin', '2018-01-29 15:13:50', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('619', 'admin', '2018-01-29 15:19:00', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('620', 'admin', '2018-01-29 15:21:40', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('621', 'admin', '2018-01-29 15:23:30', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('622', 'admin', '2018-01-29 15:30:50', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('623', 'admin', '2018-01-29 15:41:23', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('624', 'admin', '2018-01-29 16:14:23', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('625', 'admin', '2018-01-29 16:18:40', null, '登录', '110.184.51.44', null);
INSERT INTO `log` VALUES ('626', 'admin', '2018-01-29 16:25:07', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('627', 'admin', '2018-01-29 16:30:05', null, '登录', '110.184.51.44', null);
INSERT INTO `log` VALUES ('628', 'admin', '2018-01-29 16:40:03', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('629', 'admin', '2018-01-29 16:41:18', null, '登录', '110.184.51.44', null);
INSERT INTO `log` VALUES ('630', 'admin', '2018-01-29 16:45:52', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('631', 'admin', '2018-01-29 16:56:18', null, '登录', '110.184.51.44', null);
INSERT INTO `log` VALUES ('632', 'admin', '2018-01-29 17:13:07', null, '登录', '110.184.51.44', null);
INSERT INTO `log` VALUES ('633', 'admin', '2018-01-29 17:29:11', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('634', 'admin', '2018-01-29 17:31:05', null, '登录', '110.184.51.44', null);
INSERT INTO `log` VALUES ('635', 'admin', '2018-01-29 20:08:30', null, '登录', '118.112.141.103', null);
INSERT INTO `log` VALUES ('636', 'admin', '2018-01-29 20:25:20', null, '登录', '118.112.141.103', null);
INSERT INTO `log` VALUES ('637', 'admin', '2018-01-29 20:30:17', null, '登录', '118.112.141.103', null);
INSERT INTO `log` VALUES ('638', 'admin', '2018-01-29 20:39:03', null, '登录', '118.112.141.103', null);
INSERT INTO `log` VALUES ('639', 'admin', '2018-01-29 20:57:35', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('640', 'admin', '2018-01-29 20:57:51', null, '登录', '118.112.141.103', null);
INSERT INTO `log` VALUES ('641', 'admin', '2018-01-30 09:10:12', null, '登录', '110.184.51.44', null);
INSERT INTO `log` VALUES ('642', 'admin', '2018-01-30 09:13:18', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('643', 'admin', '2018-01-30 09:22:04', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('644', 'admin', '2018-01-30 09:24:49', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('645', 'admin', '2018-01-30 09:24:58', null, '登录', '110.184.51.44', null);
INSERT INTO `log` VALUES ('646', 'admin', '2018-01-30 09:26:42', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('647', 'admin', '2018-01-30 09:32:39', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('648', 'admin', '2018-01-30 09:34:12', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('649', 'admin', '2018-01-30 09:36:10', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('650', 'admin', '2018-01-30 09:41:37', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('651', 'admin', '2018-01-30 10:24:40', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('652', 'admin', '2018-01-30 10:45:42', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('653', 'admin', '2018-01-30 10:47:03', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('654', 'admin', '2018-01-30 10:56:13', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('655', 'admin', '2018-01-30 11:00:14', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('656', 'admin', '2018-01-30 11:02:29', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('657', 'admin', '2018-01-30 11:11:45', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('658', 'admin', '2018-01-30 11:15:13', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('659', 'admin', '2018-01-30 11:19:16', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('660', 'admin', '2018-01-30 11:21:47', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('661', 'admin', '2018-01-30 11:32:01', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('662', 'admin', '2018-01-30 11:34:01', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('663', 'admin', '2018-01-30 11:36:37', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('664', 'admin', '2018-01-30 11:38:34', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('665', 'admin', '2018-01-30 11:42:08', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('666', 'admin', '2018-01-30 11:56:57', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('667', 'admin', '2018-01-30 14:37:54', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('668', 'admin', '2018-01-30 14:41:14', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('669', 'admin', '2018-01-30 14:47:40', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('670', 'admin', '2018-01-30 14:51:11', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('671', 'admin', '2018-01-30 14:56:04', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('672', 'admin', '2018-01-30 14:58:18', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('673', 'admin', '2018-01-30 15:01:29', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('674', 'admin', '2018-01-30 15:04:17', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('675', 'admin', '2018-01-30 15:09:25', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('676', 'admin', '2018-01-30 15:12:26', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('677', 'admin', '2018-01-30 15:12:35', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('678', 'admin', '2018-01-30 15:16:25', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('679', 'admin', '2018-01-30 15:36:46', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('680', 'admin', '2018-01-30 15:39:57', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('681', 'admin', '2018-01-30 15:41:59', null, '登录', '110.184.51.44', null);
INSERT INTO `log` VALUES ('682', 'admin', '2018-01-30 15:44:47', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('683', 'admin', '2018-01-30 15:48:58', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('684', 'admin', '2018-01-30 15:50:40', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('685', 'admin', '2018-01-30 15:54:15', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('686', 'admin', '2018-01-30 16:07:26', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('687', 'admin', '2018-01-30 16:13:35', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('688', 'admin', '2018-01-30 16:15:28', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('689', 'admin', '2018-01-30 16:23:29', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('690', 'admin', '2018-01-30 16:40:05', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('691', 'admin', '2018-01-30 16:42:48', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('692', 'admin', '2018-01-30 16:55:49', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('693', 'admin', '2018-01-30 17:01:07', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('694', 'admin', '2018-01-30 17:06:24', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('695', 'admin', '2018-01-30 17:22:04', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('696', 'admin', '2018-01-30 17:38:32', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('697', 'admin', '2018-01-30 17:41:31', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('698', 'admin', '2018-01-31 07:43:07', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('699', 'admin', '2018-01-31 09:14:56', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('700', 'admin', '2018-01-31 09:19:54', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('701', 'admin', '2018-01-31 09:22:11', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('702', 'admin', '2018-01-31 09:25:40', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('703', 'admin', '2018-01-31 09:39:43', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('704', 'admin', '2018-01-31 09:45:13', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('705', 'admin', '2018-01-31 09:53:24', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('706', 'admin', '2018-01-31 10:00:44', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('707', 'admin', '2018-01-31 10:02:59', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('708', 'admin', '2018-01-31 10:07:52', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('709', 'admin', '2018-01-31 10:09:22', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('710', 'admin', '2018-01-31 10:14:26', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('711', 'admin', '2018-01-31 10:15:30', 'intercept the method: com.xiaoshu.controller.wechat.OauthController.oauth2Login1', '拦截到异常', '0:0:0:0:0:0:0:1', '/ssm');
INSERT INTO `log` VALUES ('712', 'admin', '2018-01-31 10:16:58', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('713', 'admin', '2018-01-31 10:19:14', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('714', 'admin', '2018-01-31 10:25:22', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('715', 'admin', '2018-01-31 10:28:36', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('716', 'admin', '2018-01-31 10:35:29', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('717', 'admin', '2018-01-31 10:38:25', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('718', 'admin', '2018-01-31 10:41:11', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('719', 'admin', '2018-01-31 10:48:49', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('720', 'admin', '2018-01-31 10:49:59', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('721', 'admin', '2018-01-31 10:58:40', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('722', 'admin', '2018-01-31 11:08:34', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('723', 'admin', '2018-01-31 11:10:26', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('724', 'admin', '2018-01-31 11:12:05', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('725', 'admin', '2018-01-31 11:21:11', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('726', 'admin', '2018-01-31 11:27:01', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('727', 'admin', '2018-01-31 11:26:50', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('728', 'admin', '2018-01-31 11:28:52', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('729', 'admin', '2018-01-31 11:31:48', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('730', 'admin', '2018-01-31 11:57:40', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('731', 'admin', '2018-01-31 13:52:01', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('732', 'admin', '2018-01-31 13:54:39', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('733', 'admin', '2018-01-31 13:58:21', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('734', 'admin', '2018-01-31 13:59:35', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('735', 'admin', '2018-01-31 14:02:13', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('736', 'admin', '2018-01-31 16:03:14', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('737', 'admin', '2018-01-31 16:16:06', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('738', 'admin', '2018-01-31 16:48:43', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('739', 'admin', '2018-01-31 16:50:07', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('740', 'admin', '2018-01-31 16:54:43', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('741', 'admin', '2018-01-31 17:16:24', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('742', 'admin', '2018-01-31 17:24:03', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('743', 'admin', '2018-01-31 17:25:18', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('744', 'admin', '2018-01-31 17:28:47', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('745', 'admin', '2018-01-31 17:35:42', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('746', 'admin', '2018-01-31 17:40:28', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('747', 'admin', '2018-01-31 17:43:17', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('748', 'admin', '2018-01-31 17:45:22', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('749', 'admin', '2018-02-01 09:17:59', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('750', 'admin', '2018-02-01 11:07:57', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('751', 'admin', '2018-02-01 11:10:08', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('752', 'admin', '2018-02-01 11:13:26', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('753', 'admin', '2018-02-01 11:55:22', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('754', 'admin', '2018-02-01 12:03:06', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('755', 'admin', '2018-02-01 12:47:50', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('756', 'admin', '2018-02-01 13:32:59', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('757', 'admin', '2018-02-01 14:06:57', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('758', 'admin', '2018-02-01 14:30:39', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('759', 'admin', '2018-02-01 14:37:50', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('760', 'admin', '2018-02-01 14:41:13', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('761', 'admin', '2018-02-01 14:49:07', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('762', 'admin', '2018-02-01 14:49:30', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('763', 'admin', '2018-02-01 14:49:35', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('764', 'admin', '2018-02-01 14:55:23', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('765', 'admin', '2018-02-01 14:56:39', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('766', 'admin', '2018-02-01 14:57:40', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('767', 'admin', '2018-02-01 14:59:23', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('768', 'admin', '2018-02-01 15:06:29', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('769', 'admin', '2018-02-01 15:49:27', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('770', 'admin', '2018-02-01 15:52:39', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('771', 'admin', '2018-02-01 16:02:04', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('772', 'admin', '2018-02-01 16:06:09', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('773', 'admin', '2018-02-01 16:17:39', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('774', 'admin', '2018-02-01 16:27:18', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('775', 'admin', '2018-02-01 16:36:36', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('776', 'admin', '2018-02-01 16:36:58', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('777', 'admin', '2018-02-01 16:43:40', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('778', 'admin', '2018-02-01 17:14:51', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('779', 'admin', '2018-02-01 17:20:34', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('780', 'admin', '2018-02-01 17:26:03', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('781', 'admin', '2018-02-01 17:30:34', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('782', 'admin', '2018-02-01 17:33:46', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('783', 'admin', '2018-02-02 09:11:23', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('784', 'admin', '2018-02-02 09:31:46', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('785', 'admin', '2018-02-02 09:34:02', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('786', 'admin', '2018-02-02 09:44:26', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('787', 'admin', '2018-02-02 09:56:57', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('788', 'admin', '2018-02-02 10:04:19', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('789', 'admin', '2018-02-02 10:35:23', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('790', 'admin', '2018-02-02 10:36:51', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('791', 'admin', '2018-02-02 10:42:09', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('792', 'admin', '2018-02-02 10:45:45', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('793', 'admin', '2018-02-02 11:05:24', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('794', 'admin', '2018-02-02 11:07:34', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('795', 'admin', '2018-02-02 11:28:02', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('796', 'admin', '2018-02-02 11:34:06', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('797', 'admin', '2018-02-02 11:42:32', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('798', 'admin', '2018-02-02 11:44:45', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('799', 'admin', '2018-02-02 11:47:49', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('800', 'admin', '2018-02-02 15:22:53', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('801', 'admin', '2018-02-02 15:25:19', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('802', 'admin', '2018-02-02 15:32:01', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('803', 'admin', '2018-02-02 15:34:00', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('804', 'admin', '2018-02-02 15:36:53', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('805', 'admin', '2018-02-02 16:32:22', 'intercept the method: com.xiaoshu.controller.admin.KeyWordsController.toViewnull', '拦截到异常', '0:0:0:0:0:0:0:1', '/ssm');
INSERT INTO `log` VALUES ('806', 'admin', '2018-02-02 16:32:28', 'intercept the method: com.xiaoshu.controller.admin.KeyWordsController.toViewnull', '拦截到异常', '0:0:0:0:0:0:0:1', '/ssm');
INSERT INTO `log` VALUES ('807', 'admin', '2018-02-02 16:33:10', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('808', 'admin', '2018-02-02 16:51:59', 'intercept the method: com.xiaoshu.controller.admin.KeyWordsController.toViewnested exception is org.apache.ibatis.exceptions.TooManyResultsException: Expected one result (or null) to be returned by selectOne(), but found: 3', '拦截到异常', '0:0:0:0:0:0:0:1', '/ssm');
INSERT INTO `log` VALUES ('809', 'admin', '2018-02-02 16:52:20', 'intercept the method: com.xiaoshu.controller.admin.KeyWordsController.toViewnested exception is org.apache.ibatis.exceptions.TooManyResultsException: Expected one result (or null) to be returned by selectOne(), but found: 3', '拦截到异常', '0:0:0:0:0:0:0:1', '/ssm');
INSERT INTO `log` VALUES ('810', 'admin', '2018-02-02 16:53:39', 'intercept the method: com.xiaoshu.controller.admin.KeyWordsController.toViewnested exception is org.apache.ibatis.exceptions.TooManyResultsException: Expected one result (or null) to be returned by selectOne(), but found: 3', '拦截到异常', '0:0:0:0:0:0:0:1', '/ssm');
INSERT INTO `log` VALUES ('811', 'admin', '2018-02-02 16:55:39', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('812', 'admin', '2018-02-02 16:59:06', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('813', 'admin', '2018-02-02 17:00:53', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('814', 'admin', '2018-02-02 17:05:11', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('815', 'admin', '2018-02-04 09:41:35', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('816', 'admin', '2018-02-04 09:59:10', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('817', 'admin', '2018-02-04 10:04:27', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('818', 'admin', '2018-02-04 10:10:33', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('819', 'admin', '2018-02-04 10:24:57', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('820', 'admin', '2018-02-04 10:26:18', 'intercept the method: com.xiaoshu.controller.admin.ArtController.toViewnested exception is org.apache.ibatis.binding.BindingException: Parameter \'id\' not found. Available parameters are [1, 0, param1, param2]', '拦截到异常', '127.0.0.1', '/ssm');
INSERT INTO `log` VALUES ('821', 'admin', '2018-02-04 10:29:48', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('822', 'admin', '2018-02-04 10:33:51', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('823', 'admin', '2018-02-04 10:38:45', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('824', 'admin', '2018-02-04 11:01:34', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('825', 'admin', '2018-02-04 11:10:11', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('826', 'admin', '2018-02-04 11:17:25', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('827', 'admin', '2018-02-04 11:27:23', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('828', 'admin', '2018-02-04 11:36:03', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('829', 'admin', '2018-02-04 11:46:37', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('830', 'admin', '2018-02-04 11:54:21', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('831', 'admin', '2018-02-04 12:12:07', null, '登录', '118.112.141.139', null);
INSERT INTO `log` VALUES ('832', 'admin', '2018-02-04 12:29:21', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('833', 'admin', '2018-02-04 12:32:15', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('834', 'admin', '2018-02-04 12:43:49', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('835', 'admin', '2018-02-04 12:47:44', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('836', 'admin', '2018-02-04 14:21:18', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('837', 'admin', '2018-02-04 14:37:10', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('838', 'admin', '2018-02-04 14:43:23', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('839', 'admin', '2018-02-05 09:15:45', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('840', 'admin', '2018-02-05 09:17:17', 'intercept the method: com.xiaoshu.controller.wechat.OauthController.oauth2Loginuser1', '拦截到异常', '0:0:0:0:0:0:0:1', '/ssm');
INSERT INTO `log` VALUES ('841', 'admin', '2018-02-05 09:41:24', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('842', 'admin', '2018-02-05 09:47:52', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('843', 'admin', '2018-02-05 09:56:42', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('844', 'admin', '2018-02-05 10:12:18', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('845', 'admin', '2018-02-05 10:22:52', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('846', 'admin', '2018-02-05 10:26:29', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('847', 'admin', '2018-02-05 10:29:37', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('848', 'admin', '2018-02-05 10:39:07', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('849', 'admin', '2018-02-05 10:41:35', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('850', 'admin', '2018-02-05 10:45:58', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('851', 'admin', '2018-02-05 10:46:19', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('852', 'admin', '2018-02-05 10:49:30', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('853', 'admin', '2018-02-05 11:32:18', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('854', 'admin', '2018-02-05 11:38:27', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('855', 'admin', '2018-02-05 15:19:20', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('856', 'admin', '2018-02-05 15:24:41', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('857', 'admin', '2018-02-05 16:11:24', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('858', 'admin', '2018-02-05 16:17:31', null, '登录', '110.184.54.103', null);
INSERT INTO `log` VALUES ('859', 'admin', '2018-02-05 16:17:37', 'intercept the method: com.xiaoshu.controller.KeyWordsController.list\n### Error querying database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'TITLE\' in \'field list\'\n### The error may exist in file [/usr/local/tomcat/webapps/ssm/WEB-INF/classes/mapper/KeyWordsMapper.xml]\n### The error may involve com.xiaoshu.dao.KeyWordsMapper.selectByPage-Inline\n### The error occurred while setting parameters\n### SQL: select       ID,   KEYES,   VALUESS,   TYPESS,   TITLE,   DESC_M,   URL,   COVER_URL,   CREATE_TIME,   UPDATE_TIME,   STATUS,   SORT,   MENU_ID,   PARENT_MENU_ID      from key_words    WHERE 1=1 and status = 1                              AND MENU_ID = \'102\'                              limit 0,10\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'TITLE\' in \'field list\'\n; bad SQL grammar []; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'TITLE\' in \'field list\'', '拦截到异常', '110.184.54.103', '/ssm');
INSERT INTO `log` VALUES ('860', 'admin', '2018-02-05 16:32:17', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('861', 'admin', '2018-02-05 16:45:27', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('862', 'admin', '2018-02-05 17:03:39', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('863', 'admin', '2018-02-05 17:07:15', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('864', 'admin', '2018-02-05 17:22:25', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('865', 'admin', '2018-02-05 17:28:40', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('866', 'admin', '2018-02-05 17:36:25', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('867', 'admin', '2018-02-05 17:39:01', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('868', 'admin', '2018-02-05 17:41:48', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('869', 'admin', '2018-02-05 17:42:38', 'intercept the method: com.xiaoshu.controller.admin.PublicAccountInfoController.publicAccountSavenull', '拦截到异常', '0:0:0:0:0:0:0:1', '/ssm');
INSERT INTO `log` VALUES ('870', 'admin', '2018-02-05 17:46:23', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('871', 'admin', '2018-02-05 17:48:00', 'intercept the method: com.xiaoshu.controller.admin.PublicAccountInfoController.publicAccountSavenull', '拦截到异常', '0:0:0:0:0:0:0:1', '/ssm');
INSERT INTO `log` VALUES ('872', 'admin', '2018-02-05 17:48:50', 'intercept the method: com.xiaoshu.controller.admin.PublicAccountInfoController.publicAccountSavenull', '拦截到异常', '0:0:0:0:0:0:0:1', '/ssm');
INSERT INTO `log` VALUES ('873', 'admin', '2018-02-05 17:50:05', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('874', 'admin', '2018-02-05 17:50:58', 'intercept the method: com.xiaoshu.controller.admin.PublicAccountInfoController.publicAccountSavenull', '拦截到异常', '0:0:0:0:0:0:0:1', '/ssm');
INSERT INTO `log` VALUES ('875', 'admin', '2018-02-06 17:26:33', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('876', 'admin', '2018-02-07 06:29:30', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('877', 'admin', '2018-02-07 06:30:37', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('878', 'admin', '2018-02-07 06:50:42', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('879', 'admin', '2018-02-07 06:50:46', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('880', 'admin', '2018-02-07 06:51:24', 'intercept the method: com.xiaoshu.controller.activity.WechatActivityController.list\r\n### Error querying database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'TITLE\' in \'where clause\'\r\n### The error may exist in file [G:\\workspaceSVN\\weChatManage\\target\\ssm-0.0.1-SNAPSHOT\\WEB-INF\\classes\\mapper\\WechatActivityMapper.xml]\r\n### The error may involve com.xiaoshu.dao.WechatActivityMapper.selectCount-Inline\r\n### The error occurred while setting parameters\r\n### SQL: select count(*) from key_words    WHERE 1=1                              AND MENU_ID = \'114\'                      AND (TITLE LIKE concat(\'%\',?,\'%\') OR DESC_M LIKE concat(\'%\',?,\'%\'))\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'TITLE\' in \'where clause\'\n; bad SQL grammar []; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'TITLE\' in \'where clause\'', '拦截到异常', '127.0.0.1', '/ssm');
INSERT INTO `log` VALUES ('881', 'admin', '2018-02-07 07:03:14', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('882', 'admin', '2018-02-07 07:04:10', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('883', 'admin', '2018-02-07 07:13:15', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('884', 'admin', '2018-02-07 07:15:13', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('885', 'admin', '2018-02-07 07:15:25', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('886', 'admin', '2018-02-07 18:00:58', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('887', 'admin', '2018-02-07 18:44:36', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('888', 'admin', '2018-02-07 19:33:39', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('889', 'admin', '2018-02-09 09:27:14', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('890', 'admin', '2018-02-09 10:02:29', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('891', 'admin', '2018-02-09 10:05:42', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('892', 'admin', '2018-02-09 10:36:10', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('893', 'admin', '2018-02-09 11:07:50', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('894', 'admin', '2018-02-09 11:32:49', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('895', 'admin', '2018-02-09 12:30:46', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('896', 'admin', '2018-02-09 15:59:18', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('897', 'admin', '2018-02-09 16:32:20', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('898', 'admin', '2018-02-09 16:35:39', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('899', 'admin', '2018-02-09 16:49:57', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('900', 'admin', '2018-02-09 16:56:43', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('901', 'admin', '2018-02-09 16:58:57', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('902', 'admin', '2018-02-09 17:01:48', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('903', 'admin', '2018-02-09 17:20:14', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('904', 'admin', '2018-02-10 09:06:46', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('905', 'admin', '2018-02-10 09:11:55', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('906', 'admin', '2018-02-10 09:18:06', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('907', 'admin', '2018-02-10 09:23:29', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('908', 'admin', '2018-02-10 09:43:01', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('909', 'admin', '2018-02-10 09:48:38', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('910', 'admin', '2018-02-10 09:53:28', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('911', 'admin', '2018-02-10 10:00:31', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('912', 'admin', '2018-02-10 10:03:01', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('913', 'admin', '2018-02-10 10:08:20', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('914', 'admin', '2018-02-10 10:15:15', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('915', 'admin', '2018-02-10 10:18:19', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('916', 'admin', '2018-02-10 10:21:09', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('917', 'admin', '2018-02-10 10:31:59', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('918', 'admin', '2018-02-10 10:38:02', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('919', 'admin', '2018-02-10 10:48:05', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('920', 'admin', '2018-02-10 10:54:58', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('921', 'admin', '2018-02-10 10:59:02', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('922', 'admin', '2018-02-10 11:09:03', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('923', 'admin', '2018-02-10 11:13:18', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('924', 'admin', '2018-02-10 11:21:47', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('925', 'admin', '2018-02-10 11:39:33', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('926', 'admin', '2018-02-10 11:40:43', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('927', 'admin', '2018-02-10 11:48:41', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('928', 'admin', '2018-02-10 11:54:22', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('929', 'admin', '2018-02-10 12:15:50', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('930', 'admin', '2018-02-10 12:27:35', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('931', 'admin', '2018-02-11 09:09:24', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('932', 'admin', '2018-02-11 09:21:34', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('933', 'admin', '2018-02-11 09:25:37', 'intercept the method: com.xiaoshu.controller.activity.WechatActivityController.listnested exception is org.apache.ibatis.exceptions.PersistenceException: \r\n### Error querying database.  Cause: org.springframework.jdbc.CannotGetJdbcConnectionException: Could not get JDBC Connection; nested exception is java.sql.SQLException: An attempt by a client to checkout a Connection has timed out.\r\n### The error may exist in file [E:\\eclipse_v4.7\\eclipse\\workspace\\wechatManager\\target\\ssm-0.0.1-SNAPSHOT\\WEB-INF\\classes\\mapper\\WechatActivityMapper.xml]\r\n### The error may involve com.xiaoshu.dao.WechatActivityMapper.selectByPage\r\n### The error occurred while executing a query\r\n### Cause: org.springframework.jdbc.CannotGetJdbcConnectionException: Could not get JDBC Connection; nested exception is java.sql.SQLException: An attempt by a client to checkout a Connection has timed out.', '拦截到异常', '0:0:0:0:0:0:0:1', '/ssm');
INSERT INTO `log` VALUES ('934', 'admin', '2018-02-11 09:33:04', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('935', 'admin', '2018-02-11 09:58:17', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('936', 'admin', '2018-02-11 10:15:52', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('937', 'admin', '2018-02-11 10:15:58', 'intercept the method: com.xiaoshu.controller.activity.WechatActivityController.toViewnull', '拦截到异常', '0:0:0:0:0:0:0:1', '/ssm');
INSERT INTO `log` VALUES ('938', 'admin', '2018-02-11 10:16:26', 'intercept the method: com.xiaoshu.controller.activity.WechatActivityController.toViewnull', '拦截到异常', '0:0:0:0:0:0:0:1', '/ssm');
INSERT INTO `log` VALUES ('939', 'admin', '2018-02-11 10:16:38', 'intercept the method: com.xiaoshu.controller.activity.WechatActivityController.toViewnull', '拦截到异常', '0:0:0:0:0:0:0:1', '/ssm');
INSERT INTO `log` VALUES ('940', 'admin', '2018-02-11 10:17:28', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('941', 'admin', '2018-02-11 10:21:00', 'intercept the method: com.xiaoshu.controller.activity.WechatActivityController.toViewnull', '拦截到异常', '0:0:0:0:0:0:0:1', '/ssm');
INSERT INTO `log` VALUES ('942', 'admin', '2018-02-11 10:21:29', 'intercept the method: com.xiaoshu.controller.activity.WechatActivityController.toViewnull', '拦截到异常', '0:0:0:0:0:0:0:1', '/ssm');
INSERT INTO `log` VALUES ('943', 'admin', '2018-02-11 10:23:03', 'intercept the method: com.xiaoshu.controller.activity.WechatActivityController.toViewnull', '拦截到异常', '0:0:0:0:0:0:0:1', '/ssm');
INSERT INTO `log` VALUES ('944', 'admin', '2018-02-11 10:24:44', 'intercept the method: com.xiaoshu.controller.activity.WechatActivityController.toViewnull', '拦截到异常', '0:0:0:0:0:0:0:1', '/ssm');
INSERT INTO `log` VALUES ('945', 'admin', '2018-02-11 10:25:56', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('946', 'admin', '2018-02-11 10:28:04', 'intercept the method: com.xiaoshu.controller.activity.WechatActivityController.toViewnull', '拦截到异常', '0:0:0:0:0:0:0:1', '/ssm');
INSERT INTO `log` VALUES ('947', 'admin', '2018-02-11 10:28:15', 'intercept the method: com.xiaoshu.controller.activity.WechatActivityController.toViewnull', '拦截到异常', '0:0:0:0:0:0:0:1', '/ssm');
INSERT INTO `log` VALUES ('948', 'admin', '2018-02-11 10:28:22', 'intercept the method: com.xiaoshu.controller.activity.WechatActivityController.toViewnull', '拦截到异常', '0:0:0:0:0:0:0:1', '/ssm');
INSERT INTO `log` VALUES ('949', 'admin', '2018-02-11 10:30:00', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('950', 'admin', '2018-02-11 10:30:58', 'intercept the method: com.xiaoshu.controller.activity.WechatActivityController.toViewnull', '拦截到异常', '0:0:0:0:0:0:0:1', '/ssm');
INSERT INTO `log` VALUES ('951', 'admin', '2018-02-11 10:33:31', 'intercept the method: com.xiaoshu.controller.activity.WechatActivityController.toViewnull', '拦截到异常', '0:0:0:0:0:0:0:1', '/ssm');
INSERT INTO `log` VALUES ('952', 'admin', '2018-02-11 10:34:27', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('953', 'admin', '2018-02-11 10:37:19', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('954', 'admin', '2018-02-11 10:46:30', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('955', 'admin', '2018-02-11 10:48:14', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('956', 'admin', '2018-02-11 10:56:26', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('957', 'admin', '2018-02-11 10:57:40', 'intercept the method: com.xiaoshu.controller.activity.WechatActivityController.list\r\n### Error querying database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'TITLE\' in \'where clause\'\r\n### The error may exist in file [E:\\eclipse_v4.7\\eclipse\\workspace\\wechatManager\\target\\ssm-0.0.1-SNAPSHOT\\WEB-INF\\classes\\mapper\\WechatActivityMapper.xml]\r\n### The error may involve com.xiaoshu.dao.WechatActivityMapper.selectCount-Inline\r\n### The error occurred while setting parameters\r\n### SQL: select count(*) from key_words    WHERE 1=1                              AND MENU_ID = \'115\'                      AND (TITLE LIKE concat(\'%\',?,\'%\') OR DESC_M LIKE concat(\'%\',?,\'%\'))\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'TITLE\' in \'where clause\'\n; bad SQL grammar []; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'TITLE\' in \'where clause\'', '拦截到异常', '0:0:0:0:0:0:0:1', '/ssm');
INSERT INTO `log` VALUES ('958', 'admin', '2018-02-11 10:59:47', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('959', 'admin', '2018-02-11 11:06:28', 'intercept the method: com.xiaoshu.controller.activity.WechatActivityController.list\r\n### Error querying database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'TITLE\' in \'where clause\'\r\n### The error may exist in file [E:\\eclipse_v4.7\\eclipse\\workspace\\wechatManager\\target\\ssm-0.0.1-SNAPSHOT\\WEB-INF\\classes\\mapper\\WechatActivityMapper.xml]\r\n### The error may involve com.xiaoshu.dao.WechatActivityMapper.selectCount-Inline\r\n### The error occurred while setting parameters\r\n### SQL: select count(*) from key_words    WHERE 1=1                              AND MENU_ID = \'115\'                      AND (TITLE LIKE concat(\'%\',?,\'%\') OR DESC_M LIKE concat(\'%\',?,\'%\'))\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'TITLE\' in \'where clause\'\n; bad SQL grammar []; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'TITLE\' in \'where clause\'', '拦截到异常', '0:0:0:0:0:0:0:1', '/ssm');
INSERT INTO `log` VALUES ('960', 'admin', '2018-02-11 11:29:57', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('961', 'admin', '2018-02-11 11:42:09', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('962', 'admin', '2018-02-11 11:49:45', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('963', 'admin', '2018-02-11 11:51:20', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('964', 'admin', '2018-02-11 12:06:54', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('965', 'admin', '2018-02-11 13:50:17', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('966', 'admin', '2018-02-11 13:56:47', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('967', 'admin', '2018-02-11 14:01:33', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('968', 'admin', '2018-02-11 14:06:11', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('969', 'admin', '2018-02-11 14:17:50', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('970', 'admin', '2018-02-11 14:22:39', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('971', 'admin', '2018-02-11 14:23:42', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('972', 'admin', '2018-02-11 14:34:48', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('973', 'admin', '2018-02-11 14:40:32', 'intercept the method: com.xiaoshu.controller.activity.WechatActivityController.list\r\n### Error querying database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'TITLE\' in \'where clause\'\r\n### The error may exist in file [E:\\eclipse_v4.7\\eclipse\\workspace\\wechatManager\\target\\ssm-0.0.1-SNAPSHOT\\WEB-INF\\classes\\mapper\\WechatActivityMapper.xml]\r\n### The error may involve com.xiaoshu.dao.WechatActivityMapper.selectCount-Inline\r\n### The error occurred while setting parameters\r\n### SQL: select count(*) from key_words    WHERE 1=1                              AND MENU_ID = \'115\'                      AND (TITLE LIKE concat(\'%\',?,\'%\') OR DESC_M LIKE concat(\'%\',?,\'%\'))\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'TITLE\' in \'where clause\'\n; bad SQL grammar []; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'TITLE\' in \'where clause\'', '拦截到异常', '0:0:0:0:0:0:0:1', '/ssm');
INSERT INTO `log` VALUES ('974', 'admin', '2018-02-11 14:44:47', 'intercept the method: com.xiaoshu.controller.activity.WechatActivityController.list\r\n### Error querying database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'TITLE\' in \'where clause\'\r\n### The error may exist in file [E:\\eclipse_v4.7\\eclipse\\workspace\\wechatManager\\target\\ssm-0.0.1-SNAPSHOT\\WEB-INF\\classes\\mapper\\WechatActivityMapper.xml]\r\n### The error may involve com.xiaoshu.dao.WechatActivityMapper.selectCount-Inline\r\n### The error occurred while setting parameters\r\n### SQL: select count(*) from key_words    WHERE 1=1                              AND MENU_ID = \'115\'                      AND (TITLE LIKE concat(\'%\',?,\'%\') OR DESC_M LIKE concat(\'%\',?,\'%\'))\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'TITLE\' in \'where clause\'\n; bad SQL grammar []; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'TITLE\' in \'where clause\'', '拦截到异常', '0:0:0:0:0:0:0:1', '/ssm');
INSERT INTO `log` VALUES ('975', 'admin', '2018-02-11 14:45:18', 'intercept the method: com.xiaoshu.controller.activity.WechatActivityController.list\r\n### Error querying database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'TITLE\' in \'where clause\'\r\n### The error may exist in file [E:\\eclipse_v4.7\\eclipse\\workspace\\wechatManager\\target\\ssm-0.0.1-SNAPSHOT\\WEB-INF\\classes\\mapper\\WechatActivityMapper.xml]\r\n### The error may involve com.xiaoshu.dao.WechatActivityMapper.selectCount-Inline\r\n### The error occurred while setting parameters\r\n### SQL: select count(*) from key_words    WHERE 1=1                              AND MENU_ID = \'115\'                      AND (TITLE LIKE concat(\'%\',?,\'%\') OR DESC_M LIKE concat(\'%\',?,\'%\'))\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'TITLE\' in \'where clause\'\n; bad SQL grammar []; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'TITLE\' in \'where clause\'', '拦截到异常', '0:0:0:0:0:0:0:1', '/ssm');
INSERT INTO `log` VALUES ('976', 'admin', '2018-02-11 14:46:29', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('977', 'admin', '2018-02-11 14:49:36', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('978', 'admin', '2018-02-11 15:00:05', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('979', 'admin', '2018-02-11 15:03:25', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('980', 'admin', '2018-02-11 15:05:55', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('981', 'admin', '2018-02-11 15:08:35', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('982', 'admin', '2018-02-11 15:16:33', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('983', 'admin', '2018-02-11 15:21:24', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('984', 'admin', '2018-02-11 15:33:57', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('985', 'admin', '2018-02-11 15:50:25', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('986', 'admin', '2018-02-11 16:21:35', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('987', 'admin', '2018-02-12 09:55:20', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('988', 'admin', '2018-02-12 09:59:12', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('989', 'admin', '2018-02-12 10:10:02', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('990', 'admin', '2018-02-12 10:19:37', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('991', 'admin', '2018-02-12 10:22:03', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('992', 'admin', '2018-02-12 10:25:25', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('993', 'admin', '2018-02-12 10:30:44', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('994', 'admin', '2018-02-12 10:34:54', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('995', 'admin', '2018-02-12 10:36:29', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('996', 'admin', '2018-02-12 10:41:31', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('997', 'admin', '2018-02-12 10:47:03', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('998', 'admin', '2018-02-12 10:55:59', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('999', 'admin', '2018-02-12 10:58:34', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1000', 'admin', '2018-02-12 10:59:30', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1001', 'admin', '2018-02-12 11:10:36', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1002', 'admin', '2018-02-12 11:53:56', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1003', 'admin', '2018-02-14 23:00:07', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1004', 'admin', '2018-02-28 09:57:03', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1005', 'admin', '2018-02-28 09:57:25', 'intercept the method: com.xiaoshu.controller.wechat.OauthController.oauth2Loginuser1', '拦截到异常', '0:0:0:0:0:0:0:1', '/ssm');
INSERT INTO `log` VALUES ('1006', 'admin', '2018-02-28 09:57:43', 'intercept the method: com.xiaoshu.controller.wechat.OauthController.oauth2Loginuser1', '拦截到异常', '0:0:0:0:0:0:0:1', '/ssm');
INSERT INTO `log` VALUES ('1007', 'admin', '2018-02-28 10:04:10', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1008', 'admin', '2018-02-28 10:04:11', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1009', 'admin', '2018-02-28 10:04:22', 'intercept the method: com.xiaoshu.controller.wechat.OauthController.oauth2Loginuser1', '拦截到异常', '0:0:0:0:0:0:0:1', '/ssm');
INSERT INTO `log` VALUES ('1010', 'admin', '2018-02-28 10:06:15', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1011', 'admin', '2018-02-28 10:06:37', 'intercept the method: com.xiaoshu.controller.wechat.OauthController.oauth2Loginuser1', '拦截到异常', '0:0:0:0:0:0:0:1', '/ssm');
INSERT INTO `log` VALUES ('1012', 'admin', '2018-02-28 10:08:47', 'intercept the method: com.xiaoshu.controller.wechat.OauthController.oauth2Loginuser1', '拦截到异常', '0:0:0:0:0:0:0:1', '/ssm');
INSERT INTO `log` VALUES ('1013', 'admin', '2018-02-28 10:09:13', 'intercept the method: com.xiaoshu.controller.wechat.OauthController.oauth2Loginuser1', '拦截到异常', '0:0:0:0:0:0:0:1', '/ssm');
INSERT INTO `log` VALUES ('1014', 'admin', '2018-02-28 10:11:23', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1015', 'admin', '2018-02-28 10:11:30', 'intercept the method: com.xiaoshu.controller.wechat.OauthController.oauth2Loginuser1', '拦截到异常', '0:0:0:0:0:0:0:1', '/ssm');
INSERT INTO `log` VALUES ('1016', 'admin', '2018-02-28 10:12:30', 'intercept the method: com.xiaoshu.controller.wechat.OauthController.oauth2Loginuser1', '拦截到异常', '0:0:0:0:0:0:0:1', '/ssm');
INSERT INTO `log` VALUES ('1017', 'admin', '2018-02-28 10:14:08', 'intercept the method: com.xiaoshu.controller.wechat.OauthController.oauth2Loginuser1', '拦截到异常', '0:0:0:0:0:0:0:1', '/ssm');
INSERT INTO `log` VALUES ('1018', 'admin', '2018-02-28 10:14:47', 'intercept the method: com.xiaoshu.controller.wechat.OauthController.oauth2Loginuser1', '拦截到异常', '0:0:0:0:0:0:0:1', '/ssm');
INSERT INTO `log` VALUES ('1019', 'admin', '2018-02-28 10:19:27', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1020', 'admin', '2018-02-28 10:21:01', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1021', 'admin', '2018-02-28 10:33:14', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1022', 'admin', '2018-02-28 10:33:15', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1023', 'admin', '2018-02-28 10:33:15', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1024', 'admin', '2018-02-28 10:33:15', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1025', 'admin', '2018-02-28 10:38:03', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1026', 'admin', '2018-02-28 10:40:19', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1027', 'admin', '2018-02-28 10:43:18', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1028', 'admin', '2018-02-28 10:48:48', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1029', 'admin', '2018-02-28 10:59:59', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1030', 'admin', '2018-02-28 13:17:55', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1031', 'admin', '2018-02-28 13:37:15', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1032', 'admin', '2018-02-28 14:02:13', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1033', 'admin', '2018-02-28 14:06:13', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1034', 'admin', '2018-02-28 14:08:43', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1035', 'admin', '2018-02-28 14:14:07', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1036', 'admin', '2018-02-28 14:18:34', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1037', 'admin', '2018-02-28 14:21:03', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1038', 'admin', '2018-02-28 14:36:54', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1039', 'admin', '2018-02-28 14:46:52', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1040', 'admin', '2018-02-28 14:59:23', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1041', 'admin', '2018-02-28 15:09:56', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1042', 'admin', '2018-02-28 15:12:16', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1043', 'admin', '2018-02-28 15:15:56', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1044', 'admin', '2018-02-28 15:18:30', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1045', 'admin', '2018-02-28 15:28:42', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1046', 'admin', '2018-02-28 15:30:13', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1047', 'admin', '2018-02-28 15:33:59', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1048', 'admin', '2018-02-28 15:39:15', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1049', 'admin', '2018-02-28 15:41:08', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1050', 'admin', '2018-02-28 15:46:51', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1051', 'admin', '2018-02-28 15:58:54', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1052', 'admin', '2018-02-28 16:08:13', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1053', 'admin', '2018-02-28 16:13:10', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1054', 'admin', '2018-02-28 16:30:04', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1055', 'admin', '2018-02-28 16:43:29', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1056', 'admin', '2018-02-28 16:55:57', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1057', 'admin', '2018-02-28 17:00:19', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1058', 'admin', '2018-02-28 17:14:45', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1059', 'admin', '2018-02-28 17:25:47', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1060', 'admin', '2018-02-28 17:29:36', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1061', 'admin', '2018-03-01 09:30:10', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1062', 'admin', '2018-03-01 09:32:45', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1063', 'admin', '2018-03-01 09:38:53', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1064', 'admin', '2018-03-01 10:48:21', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1065', 'admin', '2018-03-01 10:52:05', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1066', 'admin', '2018-03-01 10:55:14', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1067', 'admin', '2018-03-01 11:01:23', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1068', 'admin', '2018-03-01 11:03:19', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1069', 'admin', '2018-03-01 11:18:33', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1070', 'admin', '2018-03-01 11:23:48', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1071', 'admin', '2018-03-01 11:25:21', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1072', 'admin', '2018-03-01 11:28:41', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1073', 'admin', '2018-03-01 11:32:48', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1074', 'admin', '2018-03-01 11:38:41', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1075', 'admin', '2018-03-01 11:40:38', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1076', 'admin', '2018-03-01 11:43:23', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1077', 'admin', '2018-03-01 11:46:42', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1078', 'admin', '2018-03-01 11:48:58', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1079', 'admin', '2018-03-01 11:52:16', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1080', 'admin', '2018-03-01 11:57:31', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1081', 'admin', '2018-03-01 12:00:36', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1082', 'admin', '2018-03-01 13:35:33', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1083', 'admin', '2018-03-01 14:05:17', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1084', 'admin', '2018-03-01 14:22:03', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1085', 'admin', '2018-03-01 14:23:38', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1086', 'admin', '2018-03-01 14:26:48', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1087', 'admin', '2018-03-01 14:31:03', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1088', 'admin', '2018-03-01 14:39:13', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1089', 'admin', '2018-03-01 15:17:26', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1090', 'admin', '2018-03-01 15:29:10', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1091', 'admin', '2018-03-01 15:47:03', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1092', 'admin', '2018-03-01 15:50:08', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1093', 'admin', '2018-03-01 15:52:42', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1094', 'admin', '2018-03-01 16:23:37', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1095', 'admin', '2018-03-01 16:23:39', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1096', 'admin', '2018-03-01 16:29:35', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1097', 'admin', '2018-03-01 16:37:16', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1098', 'admin', '2018-03-01 16:44:35', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1099', 'admin', '2018-03-01 16:52:49', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1100', 'admin', '2018-03-01 16:56:42', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1101', 'admin', '2018-03-01 16:59:48', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1102', 'admin', '2018-03-01 17:04:10', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1103', 'admin', '2018-03-01 17:14:39', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1104', 'admin', '2018-03-01 17:17:30', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1105', 'admin', '2018-03-01 17:21:14', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1106', 'admin', '2018-03-01 17:27:45', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1107', 'admin', '2018-03-02 09:45:36', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1108', 'admin', '2018-03-02 09:48:52', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1109', 'admin', '2018-03-02 09:55:59', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1110', 'admin', '2018-03-02 09:57:25', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1111', 'admin', '2018-03-02 10:01:46', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1112', 'admin', '2018-03-02 10:08:43', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1113', 'admin', '2018-03-02 10:18:15', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1114', 'admin', '2018-03-02 10:27:18', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1115', 'admin', '2018-03-02 10:29:37', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1116', 'admin', '2018-03-02 10:32:28', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1117', 'admin', '2018-03-02 10:38:00', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1118', 'admin', '2018-03-02 10:42:18', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1119', 'admin', '2018-03-02 10:45:52', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1120', 'admin', '2018-03-02 10:51:07', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1121', 'admin', '2018-03-02 11:12:35', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1122', 'admin', '2018-03-02 11:18:26', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1123', 'admin', '2018-03-02 13:06:31', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1124', 'admin', '2018-03-02 13:45:23', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1125', 'admin', '2018-03-02 13:49:09', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1126', 'admin', '2018-03-02 13:50:43', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1127', 'admin', '2018-03-02 14:45:49', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1128', 'admin', '2018-03-02 14:49:58', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1129', 'admin', '2018-03-02 14:55:16', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1130', 'admin', '2018-03-02 14:59:33', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1131', 'admin', '2018-03-02 15:05:22', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1132', 'admin', '2018-03-02 15:55:04', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1133', 'admin', '2018-03-02 16:01:01', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1134', 'admin', '2018-03-02 16:06:29', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1135', 'admin', '2018-03-02 16:24:50', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1136', 'admin', '2018-03-02 16:34:20', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1137', 'admin', '2018-03-02 17:13:13', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1138', 'admin', '2018-03-02 17:15:02', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1139', 'admin', '2018-03-02 17:18:37', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1140', 'admin', '2018-03-03 16:58:00', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1141', 'admin', '2018-03-04 08:43:18', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1142', 'admin', '2018-03-05 09:33:31', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1143', 'admin', '2018-03-05 09:38:56', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1144', 'admin', '2018-03-05 09:40:55', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1145', 'admin', '2018-03-05 09:50:05', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1146', 'admin', '2018-03-05 09:54:29', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1147', 'admin', '2018-03-05 09:59:07', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1148', 'admin', '2018-03-05 10:03:19', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1149', 'admin', '2018-03-05 10:17:37', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1150', 'admin', '2018-03-05 10:21:07', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1151', 'admin', '2018-03-05 11:31:58', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1152', 'daxi', '2018-03-05 11:37:12', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1153', 'admin', '2018-03-05 11:44:46', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1154', 'admin', '2018-03-05 11:49:07', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1155', 'admin', '2018-03-05 11:51:51', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1156', 'admin', '2018-03-05 12:43:35', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1157', 'admin', '2018-03-05 13:01:21', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1158', 'admin', '2018-03-05 13:43:13', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1159', 'admin', '2018-03-05 13:46:05', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1160', 'admin', '2018-03-05 13:52:11', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1161', 'admin', '2018-03-05 14:19:37', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1162', 'admin', '2018-03-05 15:00:46', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1163', 'admin', '2018-03-05 15:04:34', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1164', 'admin', '2018-03-05 15:09:06', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1165', 'admin', '2018-03-05 15:12:56', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1166', 'admin', '2018-03-05 15:21:35', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1167', 'admin', '2018-03-05 15:29:35', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1168', 'admin', '2018-03-05 15:32:42', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1169', 'admin', '2018-03-05 15:40:57', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1170', 'admin', '2018-03-05 15:58:34', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1171', 'admin', '2018-03-05 16:01:50', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1172', 'admin', '2018-03-05 16:04:33', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1173', 'admin', '2018-03-05 16:13:26', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1174', 'admin', '2018-03-05 16:17:18', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1175', 'admin', '2018-03-05 16:20:50', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1176', 'admin', '2018-03-05 16:29:20', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1177', 'admin', '2018-03-05 16:34:45', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1178', 'admin', '2018-03-05 16:37:18', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1179', 'admin', '2018-03-05 16:40:44', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1180', 'admin', '2018-03-05 16:42:46', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1181', 'admin', '2018-03-05 16:44:47', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1182', 'admin', '2018-03-05 16:47:55', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1183', 'admin', '2018-03-05 16:49:56', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1184', 'admin', '2018-03-05 16:54:46', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1185', 'admin', '2018-03-05 16:58:47', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1186', 'admin', '2018-03-05 17:01:36', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1187', 'admin', '2018-03-05 17:08:59', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1188', 'admin', '2018-03-05 17:13:31', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1189', 'admin', '2018-03-05 17:30:34', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1190', 'admin', '2018-03-07 09:16:52', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1191', 'admin', '2018-03-07 09:18:15', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1192', 'admin', '2018-03-07 09:22:05', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1193', 'admin', '2018-03-07 09:30:14', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1194', 'admin', '2018-03-07 09:33:46', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1195', 'admin', '2018-03-07 09:34:56', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1196', 'admin', '2018-03-07 09:37:07', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1197', 'admin', '2018-03-07 09:47:15', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1198', 'admin', '2018-03-07 09:50:30', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1199', 'admin', '2018-03-07 09:53:04', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1200', 'admin', '2018-03-07 09:56:18', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1201', 'admin', '2018-03-07 10:13:09', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1202', 'admin', '2018-03-07 10:17:50', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1203', 'admin', '2018-03-07 10:19:28', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1204', 'admin', '2018-03-07 10:26:09', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1205', 'admin', '2018-03-07 10:30:07', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1206', 'admin', '2018-03-07 10:35:28', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1207', 'admin', '2018-03-07 10:42:51', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1208', 'admin', '2018-03-07 10:47:31', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1209', 'admin', '2018-03-07 10:52:35', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1210', 'admin', '2018-03-07 10:56:26', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1211', 'admin', '2018-03-07 11:12:21', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1212', 'admin', '2018-03-07 11:14:26', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1213', 'admin', '2018-03-07 11:19:51', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1214', 'admin', '2018-03-07 11:21:07', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1215', 'admin', '2018-03-07 11:45:17', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1216', 'admin', '2018-03-07 11:51:12', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1217', 'admin', '2018-03-07 12:09:21', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1218', 'admin', '2018-03-07 13:49:42', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1219', 'admin', '2018-03-07 14:03:21', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1220', 'admin', '2018-03-07 14:43:29', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1221', 'admin', '2018-03-07 14:49:59', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1222', 'admin', '2018-03-07 15:08:32', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1223', 'admin', '2018-03-07 15:13:30', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1224', 'admin', '2018-03-07 15:19:04', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1225', 'admin', '2018-03-07 15:22:29', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1226', 'admin', '2018-03-07 15:31:23', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1227', 'admin', '2018-03-07 15:43:50', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1228', 'admin', '2018-03-07 16:37:43', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1229', 'admin', '2018-03-07 16:41:26', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1230', 'admin', '2018-03-07 16:46:07', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1231', 'admin', '2018-03-07 17:10:11', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1232', 'admin', '2018-03-07 17:14:55', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1233', 'admin', '2018-03-07 17:18:45', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1234', 'admin', '2018-03-07 17:22:09', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1235', 'admin', '2018-03-07 17:25:08', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1236', 'admin', '2018-03-07 17:27:42', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1237', 'admin', '2018-03-07 17:31:21', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1238', 'admin', '2018-03-07 17:35:25', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1239', 'admin', '2018-03-07 17:36:56', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1240', 'admin', '2018-03-08 10:18:05', null, '登录', '110.184.48.221', null);
INSERT INTO `log` VALUES ('1241', 'admin', '2018-03-08 10:54:03', null, '登录', '110.184.48.221', null);
INSERT INTO `log` VALUES ('1242', 'admin', '2018-03-08 11:24:36', null, '登录', '110.184.48.221', null);
INSERT INTO `log` VALUES ('1243', 'admin', '2018-03-08 14:16:38', null, '登录', '110.184.48.221', null);
INSERT INTO `log` VALUES ('1244', 'admin', '2018-03-08 14:44:08', null, '登录', '223.104.9.198', null);
INSERT INTO `log` VALUES ('1245', 'admin', '2018-03-08 14:50:52', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1246', 'admin', '2018-03-08 14:53:05', null, '登录', '223.104.9.198', null);
INSERT INTO `log` VALUES ('1247', 'admin', '2018-03-08 14:57:56', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1248', 'admin', '2018-03-08 15:01:04', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1249', 'admin', '2018-03-08 15:06:13', null, '登录', '0:0:0:0:0:0:0:1', null);
INSERT INTO `log` VALUES ('1250', 'admin', '2018-03-08 16:38:32', null, '登录', '223.104.9.198', null);
INSERT INTO `log` VALUES ('1251', 'admin', '2018-03-09 08:14:30', null, '登录', '223.104.9.198', null);
INSERT INTO `log` VALUES ('1252', 'admin', '2018-03-09 08:15:02', null, '登录', '223.104.9.198', null);
INSERT INTO `log` VALUES ('1253', 'admin', '2018-03-09 09:11:15', null, '登录', '110.184.48.221', null);
INSERT INTO `log` VALUES ('1254', 'admin', '2018-03-09 11:29:41', null, '登录', '110.184.48.221', null);
INSERT INTO `log` VALUES ('1255', 'admin', '2018-03-09 12:32:36', null, '登录', '110.184.48.221', null);
INSERT INTO `log` VALUES ('1256', 'admin', '2018-03-09 14:20:05', null, '登录', '110.184.48.221', null);
INSERT INTO `log` VALUES ('1257', 'admin', '2018-03-09 15:10:42', null, '登录', '110.184.48.221', null);
INSERT INTO `log` VALUES ('1258', 'admin', '2018-03-09 15:46:51', null, '登录', '110.184.48.221', null);
INSERT INTO `log` VALUES ('1259', 'admin', '2018-03-10 01:37:05', null, '登录', '222.210.164.178', null);
INSERT INTO `log` VALUES ('1260', 'admin', '2018-03-11 11:48:54', null, '登录', '117.136.62.4', null);
INSERT INTO `log` VALUES ('1261', 'admin', '2018-03-13 14:33:31', null, '登录', '110.184.54.249', null);
INSERT INTO `log` VALUES ('1262', 'admin', '2018-03-13 16:12:58', null, '登录', '110.184.54.249', null);
INSERT INTO `log` VALUES ('1263', 'admin', '2018-03-14 10:23:30', null, '登录', '110.184.54.249', null);
INSERT INTO `log` VALUES ('1264', 'admin', '2018-03-14 11:41:33', null, '登录', '110.184.54.249', null);
INSERT INTO `log` VALUES ('1265', 'admin', '2018-03-14 13:20:04', null, '登录', '110.184.54.249', null);
INSERT INTO `log` VALUES ('1266', 'admin', '2018-03-14 13:20:37', null, '登录', '110.184.54.249', null);
INSERT INTO `log` VALUES ('1267', 'admin', '2018-03-14 15:03:32', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1268', 'test', '2018-03-14 15:12:25', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1269', 'admin', '2018-03-14 15:13:39', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1270', 'admin', '2018-03-14 15:14:37', 'intercept the method: com.xiaoshu.controller.FocusedUserInfoController.toUserListPage\r\n### Error querying database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'t1.GROUP_ID\' in \'on clause\'\r\n### The error may exist in file [C:\\Users\\Yang Xing Luo\\Desktop\\plat(1)\\target\\ssm-0.0.1-SNAPSHOT\\WEB-INF\\classes\\mapper\\FocusedUserInfoMapper.xml]\r\n### The error may involve com.xiaoshu.dao.FocusedUserInfoMapper.selectByPage-Inline\r\n### The error occurred while setting parameters\r\n### SQL: select   t1.*,t2.GROUP_NAME   from focused_user_info t1 LEFT JOIN focused_user_group t2 on t1.GROUP_ID = t2.ID and t1.status = 1 and t2.status = 1    WHERE 1=1                             AND t1.MENU_ID = \'108\'                 limit 0,10\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'t1.GROUP_ID\' in \'on clause\'\n; bad SQL grammar []; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'t1.GROUP_ID\' in \'on clause\'', '拦截到异常', '127.0.0.1', '');
INSERT INTO `log` VALUES ('1271', 'admin', '2018-03-14 15:14:38', 'intercept the method: com.xiaoshu.controller.KeyWordsController.list\r\n### Error querying database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'TITLE\' in \'field list\'\r\n### The error may exist in file [C:\\Users\\Yang Xing Luo\\Desktop\\plat(1)\\target\\ssm-0.0.1-SNAPSHOT\\WEB-INF\\classes\\mapper\\KeyWordsMapper.xml]\r\n### The error may involve com.xiaoshu.dao.KeyWordsMapper.selectByPage-Inline\r\n### The error occurred while setting parameters\r\n### SQL: select       ID,   KEYES,   VALUESS,   TYPESS,   TITLE,   DESC_M,   URL,   COVER_URL,   CREATE_TIME,   UPDATE_TIME,   STATUS,   SORT,   MENU_ID      from key_words    WHERE 1=1 and status = 1                 limit 0,10\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'TITLE\' in \'field list\'\n; bad SQL grammar []; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'TITLE\' in \'field list\'', '拦截到异常', '127.0.0.1', '');
INSERT INTO `log` VALUES ('1272', 'admin', '2018-03-14 15:14:41', 'intercept the method: com.xiaoshu.controller.PublicAccountInfoController.getInfoByUserId\r\n### Error querying database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'USER_ID\' in \'where clause\'\r\n### The error may exist in file [C:\\Users\\Yang Xing Luo\\Desktop\\plat(1)\\target\\ssm-0.0.1-SNAPSHOT\\WEB-INF\\classes\\mapper\\PublicAccountInfoMapper.xml]\r\n### The error may involve com.xiaoshu.dao.PublicAccountInfoMapper.getInfoByUserId-Inline\r\n### The error occurred while setting parameters\r\n### SQL: SELECT * FROM public_account_info where USER_ID = \'1\' AND MENU_ID = \'113\'\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'USER_ID\' in \'where clause\'\n; bad SQL grammar []; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'USER_ID\' in \'where clause\'', '拦截到异常', '127.0.0.1', '');
INSERT INTO `log` VALUES ('1273', 'admin', '2018-03-14 15:14:43', 'intercept the method: com.xiaoshu.controller.PublicAccountInfoController.getInfoByUserId\r\n### Error querying database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'USER_ID\' in \'where clause\'\r\n### The error may exist in file [C:\\Users\\Yang Xing Luo\\Desktop\\plat(1)\\target\\ssm-0.0.1-SNAPSHOT\\WEB-INF\\classes\\mapper\\PublicAccountInfoMapper.xml]\r\n### The error may involve com.xiaoshu.dao.PublicAccountInfoMapper.getInfoByUserId-Inline\r\n### The error occurred while setting parameters\r\n### SQL: SELECT * FROM public_account_info where USER_ID = \'1\' AND MENU_ID = \'124\'\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'USER_ID\' in \'where clause\'\n; bad SQL grammar []; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Unknown column \'USER_ID\' in \'where clause\'', '拦截到异常', '127.0.0.1', '');
INSERT INTO `log` VALUES ('1274', 'admin', '2018-03-14 15:55:22', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1275', 'admin', '2018-03-14 16:45:59', null, '登录', '110.184.54.249', null);
INSERT INTO `log` VALUES ('1276', 'admin', '2018-03-15 10:10:42', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1277', 'admin', '2018-03-15 10:32:04', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1278', 'admin', '2018-03-15 11:18:02', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1279', 'admin', '2018-03-15 11:39:59', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1280', 'admin', '2018-03-15 12:57:14', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1281', 'admin', '2018-03-15 14:15:41', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1282', 'admin', '2018-03-15 14:33:10', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1283', 'admin', '2018-03-15 14:36:32', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1284', 'admin', '2018-03-15 14:39:49', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1285', 'admin', '2018-03-15 14:57:46', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1286', 'admin', '2018-03-15 15:08:40', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1287', 'admin', '2018-03-15 15:32:34', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1288', 'admin', '2018-03-15 16:19:18', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1289', 'admin', '2018-03-15 17:06:43', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1290', 'admin', '2018-03-16 09:17:13', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1291', 'admin', '2018-03-16 09:20:30', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1292', 'admin', '2018-03-16 09:23:07', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1293', 'admin', '2018-03-16 09:26:05', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1294', 'admin', '2018-03-16 09:28:20', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1295', 'admin', '2018-03-16 09:36:02', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1296', 'admin', '2018-03-16 09:55:35', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1297', 'admin', '2018-03-16 10:27:55', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1298', 'admin', '2018-03-16 10:37:15', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1299', 'admin', '2018-03-16 11:23:33', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1300', 'admin', '2018-03-16 11:34:21', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1301', 'admin', '2018-03-16 11:46:57', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1302', 'admin', '2018-03-16 14:06:09', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1303', 'admin', '2018-03-16 14:40:56', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1304', 'admin', '2018-03-16 14:56:28', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1305', 'admin', '2018-03-16 15:07:53', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1306', 'admin', '2018-03-16 15:20:11', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1307', 'admin', '2018-03-16 16:29:08', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1308', 'admin', '2018-03-16 16:45:55', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1309', 'admin', '2018-03-16 16:56:56', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1310', 'admin', '2018-03-19 09:12:43', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1311', 'admin', '2018-03-19 09:12:43', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1312', 'admin', '2018-03-19 09:46:45', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1313', 'admin', '2018-03-19 11:21:58', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1314', 'admin', '2018-03-19 16:25:52', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1315', 'admin', '2018-03-19 16:40:02', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1316', 'admin', '2018-03-19 16:44:13', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1317', 'admin', '2018-03-19 16:51:42', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1318', 'admin', '2018-03-19 16:56:03', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1319', 'admin', '2018-03-19 17:01:33', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1320', 'admin', '2018-03-19 17:07:07', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1321', 'admin', '2018-03-19 17:15:50', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1322', 'admin', '2018-03-19 17:18:06', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1323', 'admin', '2018-03-19 17:22:13', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1324', 'admin', '2018-03-20 09:13:16', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1325', 'admin', '2018-03-20 09:20:36', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1326', 'admin', '2018-03-20 09:57:41', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1327', 'admin', '2018-03-20 14:41:16', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1328', 'admin', '2018-03-20 15:47:12', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1329', 'admin', '2018-03-20 16:10:18', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1330', 'admin', '2018-03-21 09:14:23', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1331', 'admin', '2018-03-21 14:42:04', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1332', 'admin', '2018-03-21 15:47:00', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1333', 'admin', '2018-03-21 15:58:40', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1334', 'admin', '2018-03-21 16:03:46', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1335', 'admin', '2018-03-21 16:08:46', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1336', 'admin', '2018-03-21 16:12:56', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1337', 'admin', '2018-03-21 16:14:45', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1338', 'admin', '2018-03-21 16:17:05', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1339', 'admin', '2018-03-21 16:18:48', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1340', 'admin', '2018-03-21 16:42:47', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1341', 'admin', '2018-03-21 16:52:59', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1342', 'admin', '2018-03-21 17:04:39', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1343', 'admin', '2018-03-22 10:30:25', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1344', 'admin', '2018-03-22 10:45:20', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1345', 'admin', '2018-03-22 10:47:18', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1346', 'admin', '2018-03-22 10:50:09', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1347', 'admin', '2018-03-22 10:58:40', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1348', 'admin', '2018-03-22 11:00:46', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1349', 'admin', '2018-03-22 11:02:25', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1350', 'admin', '2018-03-22 11:23:20', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1351', 'admin', '2018-03-22 11:37:34', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1352', 'admin', '2018-03-22 12:43:52', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1353', 'admin', '2018-03-22 16:15:01', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1354', 'admin', '2018-03-22 16:18:44', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1355', 'admin', '2018-03-22 16:22:49', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1356', 'admin', '2018-03-23 17:04:12', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1357', 'admin', '2018-03-23 17:28:44', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1358', 'admin', '2018-03-26 09:12:56', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1359', 'admin', '2018-03-26 09:43:15', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1360', 'admin', '2018-03-26 10:59:49', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1361', 'admin', '2018-03-26 11:27:54', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1362', 'admin', '2018-03-26 11:29:35', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1363', 'admin', '2018-03-26 11:32:55', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1364', 'admin', '2018-03-26 11:43:36', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1365', 'admin', '2018-03-26 11:48:53', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1366', 'admin', '2018-03-26 11:59:42', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1367', 'admin', '2018-03-26 12:37:21', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1368', 'admin', '2018-03-26 13:21:21', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1369', 'admin', '2018-03-26 13:23:59', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1370', 'admin', '2018-03-26 13:29:49', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1371', 'admin', '2018-03-26 13:33:49', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1372', 'admin', '2018-03-26 13:36:07', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1373', 'admin', '2018-03-26 13:44:31', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1374', 'admin', '2018-03-26 13:52:15', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1375', 'admin', '2018-03-26 13:58:12', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1376', 'admin', '2018-03-26 14:07:25', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1377', 'admin', '2018-03-26 14:14:22', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1378', 'admin', '2018-03-26 14:21:45', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1379', 'admin', '2018-03-26 14:40:34', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1380', 'admin', '2018-03-26 14:47:51', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1381', 'admin', '2018-03-26 15:14:18', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1382', 'admin', '2018-03-26 15:15:52', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1383', 'admin', '2018-03-26 15:20:38', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1384', 'admin', '2018-03-26 15:25:31', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1385', 'admin', '2018-03-26 15:28:05', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1386', 'admin', '2018-03-26 15:30:41', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1387', 'admin', '2018-03-26 15:33:56', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1388', 'admin', '2018-03-26 15:37:21', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1389', 'admin', '2018-03-26 15:40:31', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1390', 'admin', '2018-03-26 15:51:45', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1391', 'admin', '2018-03-26 15:52:00', 'intercept the method: com.xiaoshu.controller.admin.middleKey.MessageRecordController.addQueueMessage0', '拦截到异常', '127.0.0.1', '/ssm');
INSERT INTO `log` VALUES ('1392', 'admin', '2018-03-26 15:52:17', 'intercept the method: com.xiaoshu.controller.admin.middleKey.MessageRecordController.addQueueMessage0', '拦截到异常', '127.0.0.1', '/ssm');
INSERT INTO `log` VALUES ('1393', 'admin', '2018-03-26 15:53:26', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1394', 'admin', '2018-03-26 15:55:00', 'intercept the method: com.xiaoshu.controller.admin.middleKey.MessageRecordController.addQueueMessage0', '拦截到异常', '127.0.0.1', '/ssm');
INSERT INTO `log` VALUES ('1395', 'admin', '2018-03-26 15:57:37', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1396', 'admin', '2018-03-26 15:58:21', 'intercept the method: com.xiaoshu.controller.admin.middleKey.MessageRecordController.addQueueMessage0', '拦截到异常', '127.0.0.1', '/ssm');
INSERT INTO `log` VALUES ('1397', 'admin', '2018-03-26 16:00:48', 'intercept the method: com.xiaoshu.controller.admin.middleKey.MessageRecordController.addQueueMessage0', '拦截到异常', '127.0.0.1', '/ssm');
INSERT INTO `log` VALUES ('1398', 'admin', '2018-03-26 16:02:34', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1399', 'admin', '2018-03-26 16:07:19', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1400', 'admin', '2018-03-26 16:11:32', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1401', 'admin', '2018-03-26 16:13:30', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1402', 'admin', '2018-03-26 16:16:28', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1403', 'admin', '2018-03-26 16:18:11', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1404', 'admin', '2018-03-26 16:21:19', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1405', 'admin', '2018-03-26 16:23:23', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1406', 'admin', '2018-03-26 16:25:25', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1407', 'admin', '2018-03-26 16:27:16', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1408', 'admin', '2018-03-26 16:29:57', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1409', 'admin', '2018-03-27 09:39:27', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1410', 'admin', '2018-03-27 09:55:12', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1411', 'admin', '2018-03-27 09:57:10', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1412', 'admin', '2018-03-27 09:59:59', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1413', 'admin', '2018-03-27 10:04:46', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1414', 'admin', '2018-03-27 10:07:56', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1415', 'admin', '2018-03-27 10:16:51', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1416', 'admin', '2018-03-27 10:20:55', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1417', 'admin', '2018-03-27 10:26:48', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1418', 'admin', '2018-03-27 10:35:13', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1419', 'admin', '2018-03-27 10:38:19', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1420', 'admin', '2018-03-27 10:40:06', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1421', 'admin', '2018-03-27 10:44:09', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1422', 'admin', '2018-03-27 10:50:26', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1423', 'admin', '2018-03-27 10:56:01', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1424', 'admin', '2018-03-27 11:01:37', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1425', 'admin', '2018-03-27 11:14:30', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1426', 'admin', '2018-03-27 11:30:51', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1427', 'admin', '2018-03-27 12:43:43', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1428', 'admin', '2018-03-27 14:29:00', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1429', 'admin', '2018-03-27 15:23:26', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1430', 'admin', '2018-03-27 15:39:22', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1431', 'admin', '2018-03-27 16:05:05', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1432', 'admin', '2018-03-27 16:10:29', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1433', 'admin', '2018-03-27 16:12:52', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1434', 'admin', '2018-03-27 16:53:47', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1435', 'admin', '2018-03-27 16:58:36', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1436', 'admin', '2018-03-27 17:08:32', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1437', 'admin', '2018-03-27 17:14:13', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1438', 'admin', '2018-03-27 17:27:34', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1439', 'admin', '2018-03-28 09:33:14', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1440', 'admin', '2018-03-28 10:00:25', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1441', 'admin', '2018-03-28 11:34:43', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1442', 'admin', '2018-03-28 12:13:28', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1443', 'admin', '2018-03-28 12:47:45', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1444', 'admin', '2018-03-28 13:06:05', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1445', 'admin', '2018-03-28 16:47:32', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1446', 'admin', '2018-03-28 17:29:45', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1447', 'admin', '2018-03-28 17:41:18', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1448', 'admin', '2018-03-28 17:42:15', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1449', 'admin', '2018-03-29 09:30:14', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1450', 'admin', '2018-03-29 11:43:32', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1451', 'admin', '2018-03-29 12:06:49', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1452', 'admin', '2018-03-29 12:40:25', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1453', 'admin', '2018-03-29 14:37:32', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1454', 'admin', '2018-03-29 14:42:32', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1455', 'admin', '2018-03-29 14:48:45', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1456', 'admin', '2018-03-29 14:55:09', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1457', 'admin', '2018-03-29 14:58:20', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1458', 'admin', '2018-03-29 15:05:21', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1459', 'admin', '2018-03-29 15:34:34', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1460', 'admin', '2018-03-29 15:47:42', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1461', 'admin', '2018-03-29 16:02:18', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1462', 'admin', '2018-03-29 16:07:39', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1463', 'admin', '2018-03-29 16:26:32', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1464', 'admin', '2018-03-29 16:29:39', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1465', 'admin', '2018-03-29 16:33:41', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1466', 'admin', '2018-03-29 16:36:17', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1467', 'admin', '2018-03-29 16:41:43', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1468', 'admin', '2018-03-29 16:51:44', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1469', 'admin', '2018-03-29 16:55:57', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1470', 'admin', '2018-03-29 16:59:28', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1471', 'admin', '2018-03-29 17:04:03', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1472', 'admin', '2018-03-29 17:08:46', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1473', 'admin', '2018-03-30 12:59:58', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1474', 'admin', '2018-03-30 13:05:26', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1475', 'admin', '2018-03-30 13:55:31', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1476', 'admin', '2018-03-30 13:58:35', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1477', 'admin', '2018-03-30 14:03:26', null, '登录', '127.0.0.1', null);
INSERT INTO `log` VALUES ('1478', 'admin', '2018-03-30 14:19:38', null, '登录', '127.0.0.1', null);

-- ----------------------------
-- Table structure for `menu`
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `menuId` int(10) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menuName` varchar(50) DEFAULT NULL COMMENT '名称',
  `menuUrl` varchar(100) DEFAULT NULL COMMENT '方法',
  `parentId` int(11) DEFAULT NULL COMMENT '父ID',
  `menuDescription` varchar(200) DEFAULT NULL COMMENT '描述',
  `state` varchar(20) DEFAULT NULL COMMENT '状态/OPEN/CLOSED',
  `iconCls` varchar(50) DEFAULT NULL COMMENT '图标',
  `seq` int(11) DEFAULT NULL COMMENT '顺序排序',
  PRIMARY KEY (`menuId`)
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('1', 'SSM系统', '', '-1', '主菜单', 'isParent', 'fa fa-university', '1');
INSERT INTO `menu` VALUES ('2', '系统管理', '', '1', '', 'isParent', 'fa fa-desktop', '1');
INSERT INTO `menu` VALUES ('5', '菜单管理', 'menu/menuIndex.htm', '2', '', '', 'fa fa-sliders', '4');
INSERT INTO `menu` VALUES ('6', '角色管理', 'role/roleIndex.htm', '2', '', '', 'fa fa-users', '3');
INSERT INTO `menu` VALUES ('7', '用户管理', 'user/userIndex.htm', '2', '', '', 'fa fa-user', '2');
INSERT INTO `menu` VALUES ('8', '日志管理', 'log/logIndex.htm', '2', '', '', 'fa fa-tags', '4');
INSERT INTO `menu` VALUES ('9', '微信管理', '', '1', '微信管理', 'isParent', 'fa fa-weixin', '3');
INSERT INTO `menu` VALUES ('20', '帐号菜单管理', 'weChatMenu/list.htm', '12', '公众号内的菜单管理', null, 'fa fa-sliders', '14');
INSERT INTO `menu` VALUES ('21', '粉丝分组管理', 'focusedUserGroup/list.htm', '12', '粉丝分组管理', null, 'fa fa-users', '15');
INSERT INTO `menu` VALUES ('25', '数据字典', 'sysCodeCategory/list.htm', '2', '系统数据字典配置', '', 'fa fa-clipboard', '6');
INSERT INTO `menu` VALUES ('28', '接口管理', 'interfaceInfo/list', '1', '微信接口配置', 'close', 'fa fa-code-fork', '2');
INSERT INTO `menu` VALUES ('107', 'New Wechat', '', '9', '', 'isParent', 'fa fa-user', '1');
INSERT INTO `menu` VALUES ('108', '粉丝管理', 'focusedUserInfo/toUserListPage.htm', '107', '', null, 'fa fa-child', '1');
INSERT INTO `menu` VALUES ('109', '关键字管理', 'keyWords/list.htm', '107', '', null, 'fa fa-key', '2');
INSERT INTO `menu` VALUES ('110', '素材管理', 'wechatMaterial/list', '107', '', null, 'fa fa-edit', '3');
INSERT INTO `menu` VALUES ('111', '文章管理', 'art/list.htm', '107', '', null, 'fa fa-list-alt', '4');
INSERT INTO `menu` VALUES ('112', '菜单设置', 'weChatMenu/list', '107', '', null, 'fa fa-sliders', '5');
INSERT INTO `menu` VALUES ('113', '基础设置', 'publicAccountInfo/getInfoByUserId.htm', '107', '', null, 'fa fa-users', '6');
INSERT INTO `menu` VALUES ('114', '活动管理', '', '1', '活动管理模块', 'isParent', 'fa fa-desktop', '4');
INSERT INTO `menu` VALUES ('115', '活动管理', 'activity/list', '114', '', null, '', '1');
INSERT INTO `menu` VALUES ('116', '奖品管理', 'activityPrize/list', '114', '', null, '', '2');
INSERT INTO `menu` VALUES ('117', '问答题库管理', 'wechatActivityTestQuestions/list', '114', '', null, '', '3');
INSERT INTO `menu` VALUES ('118', '一点五小时(服务号)', '', '9', '', 'isParent', 'fa fa-user', '2');
INSERT INTO `menu` VALUES ('119', '粉丝管理', 'focusedUserInfo/toUserListPage.htm', '118', '', null, 'fa fa-child', '1');
INSERT INTO `menu` VALUES ('120', '关键字管理', 'keyWords/list.htm', '118', '', null, 'fa fa-key', '2');
INSERT INTO `menu` VALUES ('121', '素材管理', 'wechatMaterial/list', '118', '', null, 'fa fa-edit', '3');
INSERT INTO `menu` VALUES ('122', '文章管理', 'art/list.htm', '118', '', null, 'fa fa-list-alt', '4');
INSERT INTO `menu` VALUES ('123', '菜单设置', 'weChatMenu/list', '118', '', null, 'fa fa-sliders', '5');
INSERT INTO `menu` VALUES ('124', '基础设置', 'publicAccountInfo/getInfoByUserId.htm', '118', '', null, 'fa fa-users', '6');
INSERT INTO `menu` VALUES ('125', '一点五小时(订阅号)', '', '9', '', 'isParent', 'fa fa-user', '3');
INSERT INTO `menu` VALUES ('126', '粉丝管理', 'focusedUserInfo/toUserListPage.htm', '125', '', null, 'fa fa-child', '1');
INSERT INTO `menu` VALUES ('127', '关键字管理', 'keyWords/list.htm', '125', '', null, 'fa fa-key', '2');
INSERT INTO `menu` VALUES ('128', '素材管理', 'wechatMaterial/list', '125', '', null, 'fa fa-edit', '3');
INSERT INTO `menu` VALUES ('129', '文章管理', 'art/list.htm', '125', '', null, 'fa fa-list-alt', '4');
INSERT INTO `menu` VALUES ('130', '菜单设置', 'weChatMenu/list', '125', '', null, 'fa fa-sliders', '5');
INSERT INTO `menu` VALUES ('131', '基础设置', 'publicAccountInfo/getInfoByUserId.htm', '125', '', null, 'fa fa-users', '6');
INSERT INTO `menu` VALUES ('132', '商城中心', '', '1', '', 'isParent', '', '5');
INSERT INTO `menu` VALUES ('133', '订单中心', '', '1', '', 'isParent', '', '6');
INSERT INTO `menu` VALUES ('134', '商家管理', 'seller/list', '132', '', null, '', '1');
INSERT INTO `menu` VALUES ('135', '商品管理', 'commodity/list', '132', '', null, '', '2');
INSERT INTO `menu` VALUES ('136', '订单列表', 'order/list', '133', '', null, '', '1');
INSERT INTO `menu` VALUES ('137', '账单流水', '', '1', '', 'isParent', '', '7');
INSERT INTO `menu` VALUES ('138', '流水管理', 'waterBill/list', '137', '', null, '', '1');
INSERT INTO `menu` VALUES ('139', '微信管理中心', 'publicAccountInfo/list.htm', '2', '', null, 'fa fa-weixin', '6');
INSERT INTO `menu` VALUES ('140', '短信接口', '', '1', '', 'isParent', '', '8');
INSERT INTO `menu` VALUES ('141', '短信记录', 'messageRecord/list', '140', '', null, '', '1');
INSERT INTO `menu` VALUES ('142', '消息队列', '', '1', '持久化的消息队列', 'isParent', '', '9');
INSERT INTO `menu` VALUES ('143', '消息列表', 'persistentMessageQueue/list', '142', '', null, '', '1');

-- ----------------------------
-- Table structure for `message_record`
-- ----------------------------
DROP TABLE IF EXISTS `message_record`;
CREATE TABLE `message_record` (
  `ID` varchar(100) NOT NULL COMMENT 'id',
  `MOBILE` varchar(50) NOT NULL COMMENT 'mobile;//目标电话号码 (MOBILE)',
  `SIGN` varchar(255) DEFAULT NULL COMMENT 'sign;//消息签名 (SIGN)',
  `CONTENT` varchar(255) DEFAULT NULL COMMENT 'content;//消息内容 (CONTENT)',
  `USER_ID` varchar(255) DEFAULT NULL COMMENT 'userId;//发送管理员的ID (USER_ID)',
  `RESPONSE_STATUS` varchar(255) DEFAULT NULL COMMENT 'responseStatus;//返回的状态消息 (RESPONSE_STATUS)',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT 'createTime; //核销码创建时间 (CREATE_TIME)',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT 'updateTime; //更新时间。(UPDATE_TIME)',
  `DESC_M` varchar(255) NOT NULL COMMENT 'descM; //描述(DESC_M)',
  `STATUS` int(11) NOT NULL DEFAULT '0' COMMENT 'status;//消息状态 -1删除 0存在(STATUS)',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of message_record
-- ----------------------------
INSERT INTO `message_record` VALUES ('53d6c5ac-efd6-4c7c-87ea-26c115e8a348', '18781917461', '武神', '武神抖了你一下', '', '1,发送成功！！', '2018-03-23 17:04:57', null, '发给武神的短信', '0');
INSERT INTO `message_record` VALUES ('a670f32b-d69b-4e4f-995b-c32f65bdd7c8', '18781917461', '1', '2', '', '1,发送成功！！', '2018-03-22 11:39:27', null, '3', '0');
INSERT INTO `message_record` VALUES ('sfsfsf', '18781917461', '达西', '内容是xxxxxx', '1', '1,发送成功！！', '2018-03-22 10:47:08', null, '描述', '0');

-- ----------------------------
-- Table structure for `operation`
-- ----------------------------
DROP TABLE IF EXISTS `operation`;
CREATE TABLE `operation` (
  `operationId` int(11) NOT NULL AUTO_INCREMENT COMMENT '具体的方法',
  `operationName` varchar(100) DEFAULT NULL COMMENT '方法名',
  `menuId` int(11) DEFAULT NULL COMMENT '所属菜单',
  `menuName` varchar(50) NOT NULL,
  `operationCode` varchar(50) DEFAULT NULL,
  `iconCls` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`operationId`),
  KEY `menuId` (`menuId`),
  CONSTRAINT `operation_ibfk_1` FOREIGN KEY (`menuId`) REFERENCES `menu` (`menuId`)
) ENGINE=InnoDB AUTO_INCREMENT=10015 DEFAULT CHARSET=utf8 COMMENT='具体的页面按钮上的方法\r\n（此自增ID至少从10000开始）';

-- ----------------------------
-- Records of operation
-- ----------------------------
INSERT INTO `operation` VALUES ('10000', '添加', '5', '菜单管理', 'add', '');
INSERT INTO `operation` VALUES ('10001', '修改', '5', '菜单管理', 'edit', '');
INSERT INTO `operation` VALUES ('10002', '删除', '5', '菜单管理', 'del', '');
INSERT INTO `operation` VALUES ('10003', '添加', '7', '用户管理', 'btn_add', 'glyphicon glyphicon-plus');
INSERT INTO `operation` VALUES ('10004', '修改', '7', '用户管理', 'btn_edit', 'glyphicon glyphicon-pencil');
INSERT INTO `operation` VALUES ('10005', '删除', '7', '用户管理', 'btn_delete', 'glyphicon glyphicon-remove');
INSERT INTO `operation` VALUES ('10006', '添加', '6', '角色管理', 'btn_add', 'glyphicon glyphicon-plus');
INSERT INTO `operation` VALUES ('10007', '修改', '6', '角色管理', 'btn_edit', 'glyphicon glyphicon-pencil');
INSERT INTO `operation` VALUES ('10008', '删除', '6', '角色管理', 'btn_delete', 'glyphicon glyphicon-remove');
INSERT INTO `operation` VALUES ('10009', '授权', '6', '角色管理', 'btn_rightCtrl', 'glyphicon glyphicon-eye-open');
INSERT INTO `operation` VALUES ('10010', '下载后台日志（log4j）', '8', '日志管理', 'btn_downloadLog4j', 'glyphicon glyphicon-download-alt');
INSERT INTO `operation` VALUES ('10011', '手动备份（业务操作）', '8', '日志管理', 'btn_manualBackup', 'glyphicon glyphicon-inbox');
INSERT INTO `operation` VALUES ('10012', '删除', '8', '日志管理', 'btn_delete', 'glyphicon glyphicon-remove');
INSERT INTO `operation` VALUES ('10013', '按钮管理', '5', '菜单管理', 'btnCtrl', '');
INSERT INTO `operation` VALUES ('10014', '备份日志记录', '8', '日志管理', 'btn_downloadLogBus', 'glyphicon glyphicon-download');

-- ----------------------------
-- Table structure for `order_codes`
-- ----------------------------
DROP TABLE IF EXISTS `order_codes`;
CREATE TABLE `order_codes` (
  `ID` varchar(100) NOT NULL COMMENT 'id',
  `ORDER_ID` int(11) DEFAULT NULL COMMENT 'orderId;//订单id (ORDER_ID)',
  `ORDER_NO` varchar(255) DEFAULT NULL COMMENT 'orderNo;//订单No (ORDER_NO)',
  `CODE_NAME` varchar(255) DEFAULT NULL COMMENT 'codeName;//核销码名称 (CODE_NAME)',
  `USE_CODE` varchar(255) DEFAULT NULL COMMENT 'useCode;//核销使用码 (USE_CODE)',
  `CODE_IMAGE` varchar(255) DEFAULT NULL COMMENT 'codeImage;//核销使用的二维码图片 (CODE_IMAGE)',
  `CREATE_TIME` varchar(50) DEFAULT NULL COMMENT 'createTime; //核销码创建时间 (CREATE_TIME)',
  `USER_ID` varchar(255) NOT NULL COMMENT 'userId;//核销码用户id (USER_ID)',
  `COMMODITY_ID` int(11) NOT NULL COMMENT 'commodityId;//商品id (COMMODITY_ID)',
  `SELLER_ID` int(11) NOT NULL COMMENT 'sellerId;//所属商家id (SELLER_ID)',
  `CODE_STATE` int(11) NOT NULL COMMENT 'codeState;//核销使用码状态 -1全部状态 0不能使用 1可使用 2已使用(CODE_STATE)',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of order_codes
-- ----------------------------
INSERT INTO `order_codes` VALUES ('35e69efc-c697-4331-b5fb-fccd8637abae', '516', 'DAXI201803280022', '', '376425', '', '2018-03-28 11:15:13', '2825c16e-a128-4f07-b9a7-a8aff67cc7bd', '26', '0', '1');
INSERT INTO `order_codes` VALUES ('71b255b9-02d3-46c8-bc21-0b6c2f625c4e', '518', 'DAXI201803280024', '', '890736', '', '2018-03-28 11:36:23', '2825c16e-a128-4f07-b9a7-a8aff67cc7bd', '26', '0', '1');
INSERT INTO `order_codes` VALUES ('7678bf2f-edae-4790-9001-3974a4cb9642', '515', 'DAXI201803280021', '', '163908', '', '2018-03-28 11:15:01', '2825c16e-a128-4f07-b9a7-a8aff67cc7bd', '26', '0', '1');
INSERT INTO `order_codes` VALUES ('849cf46d-e347-4046-85e6-0313b2ae9f78', '514', 'DAXI201803280020', '', '321897', '', '2018-03-28 11:03:45', '2825c16e-a128-4f07-b9a7-a8aff67cc7bd', '26', '0', '1');
INSERT INTO `order_codes` VALUES ('85ccc4bd-6fb5-49c9-9e6a-f35dadc1a05c', '523', 'DAXI201803280029', '', '573018', '', '2018-03-28 11:53:57', '2825c16e-a128-4f07-b9a7-a8aff67cc7bd', '26', '0', '1');
INSERT INTO `order_codes` VALUES ('9a2fd7ff-d35d-4a34-bcbb-dc087df94097', '519', 'DAXI201803280025', '', '631574', '', '2018-03-28 11:36:29', '2825c16e-a128-4f07-b9a7-a8aff67cc7bd', '26', '0', '1');
INSERT INTO `order_codes` VALUES ('b29d0c51-d8e3-486b-8add-0f2d97c3c056', '517', 'DAXI201803280023', '', '243089', '', '2018-03-28 11:36:16', '2825c16e-a128-4f07-b9a7-a8aff67cc7bd', '26', '0', '1');
INSERT INTO `order_codes` VALUES ('cc81d370-e7db-4e86-8e1c-4edd82bfc5c0', '520', 'DAXI201803280026', '', '750842', '', '2018-03-28 11:53:38', '2825c16e-a128-4f07-b9a7-a8aff67cc7bd', '26', '0', '1');
INSERT INTO `order_codes` VALUES ('cfd80a14-2b06-4aa4-8c5a-4a260e75685e', '522', 'DAXI201803280028', '', '641907', '', '2018-03-28 11:53:51', '2825c16e-a128-4f07-b9a7-a8aff67cc7bd', '26', '0', '1');
INSERT INTO `order_codes` VALUES ('f590d4be-74f9-4873-822c-101f676b8103', '521', 'DAXI201803280027', '', '739418', '', '2018-03-28 11:53:45', '2825c16e-a128-4f07-b9a7-a8aff67cc7bd', '26', '0', '1');

-- ----------------------------
-- Table structure for `order_write_off_by_user`
-- ----------------------------
DROP TABLE IF EXISTS `order_write_off_by_user`;
CREATE TABLE `order_write_off_by_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sellerId` int(11) NOT NULL,
  `userId` varchar(255) NOT NULL,
  `orderUserId` varchar(255) DEFAULT NULL,
  `states` int(11) NOT NULL,
  `createDate` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of order_write_off_by_user
-- ----------------------------

-- ----------------------------
-- Table structure for `orders`
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id;//订单id',
  `ORDER_NAME` varchar(255) DEFAULT NULL COMMENT 'orderName;//订单名称',
  `ORDER_NO` varchar(100) NOT NULL COMMENT 'orderNo;//订单编号',
  `CREATE_TIME` varchar(35) NOT NULL COMMENT 'createTime;//订单提交时间',
  `PAYMENT_TIME` varchar(35) DEFAULT NULL COMMENT 'paymentTime;//订单支付时间',
  `DESC_M` varchar(255) DEFAULT NULL COMMENT 'descM; //订单描述。',
  `NUMBER_DESC_M` varchar(255) DEFAULT NULL COMMENT 'numberDescM; //订单数量描述。',
  `ORDER_AMOUNT_MONEY` double(11,2) NOT NULL COMMENT 'orderAmountMoney;//订单金额',
  `TYPE_STATE` int(11) NOT NULL DEFAULT '0' COMMENT 'typeState;//订单状态 0未付款 1已付款 2已消费  -1查询所有状态',
  `STATUS` int(11) NOT NULL COMMENT 'status;//订单存在状态 0未删除 1删除',
  `USER_ID` varchar(255) DEFAULT NULL COMMENT 'userId;//订单用户id',
  `USER_NAME` varchar(255) NOT NULL COMMENT 'userName;//联系人名称',
  `USER_PHONE` varchar(255) DEFAULT NULL COMMENT 'userPhone;//联系人电话',
  `USER_USE_TIME` varchar(255) DEFAULT NULL COMMENT 'userUseTime;//订单消费时间（只有填写了改时间的才会起效）',
  `SELLER_ID` int(11) DEFAULT NULL COMMENT 'sellerId;//所属商家id',
  `INVALID_TIME` varchar(255) DEFAULT NULL COMMENT 'invalidTime;//订单失效时间',
  `IMAGE` varchar(255) DEFAULT NULL COMMENT 'image;//订单商品封面',
  `USE_CODE` varchar(25) DEFAULT NULL COMMENT 'useCode;//核销使用码',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=524 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('514', '明月村亲子春游踏青之旅——采茶制茶体验+捏陶制陶手工', 'DAXI201803280020', '2018-03-28 11:03:45', null, '00001', ' 成人票 * 1', '0.01', '1', '0', '2825c16e-a128-4f07-b9a7-a8aff67cc7bd', '许功斌', '18781917461', '4月7日', '12', '2018-03-28 11:03:45', 'http://www.daxi51.com/ssm_file/upfile/image/2018322/1521700890293.jpg', '324501');
INSERT INTO `orders` VALUES ('515', '明月村亲子春游踏青之旅——采茶制茶体验+捏陶制陶手工', 'DAXI201803280021', '2018-03-28 11:15:01', null, '00001', ' 成人票 * 1', '0.01', '1', '0', '2825c16e-a128-4f07-b9a7-a8aff67cc7bd', '小五', '18781917461', '4月7日', '12', '2018-03-28 11:15:01', 'http://www.daxi51.com/ssm_file/upfile/image/2018322/1521700890293.jpg', '016253');
INSERT INTO `orders` VALUES ('516', '明月村亲子春游踏青之旅——采茶制茶体验+捏陶制陶手工', 'DAXI201803280022', '2018-03-28 11:15:13', null, '00001', ' 成人票 * 1', '0.01', '1', '0', '2825c16e-a128-4f07-b9a7-a8aff67cc7bd', '小五3', '18781917461', '4月7日', '12', '2018-03-28 11:15:13', 'http://www.daxi51.com/ssm_file/upfile/image/2018322/1521700890293.jpg', '014752');
INSERT INTO `orders` VALUES ('517', '明月村亲子春游踏青之旅——采茶制茶体验+捏陶制陶手工', 'DAXI201803280023', '2018-03-28 11:36:16', null, '00001', ' 成人票 * 1', '0.01', '1', '0', '2825c16e-a128-4f07-b9a7-a8aff67cc7bd', '小五111', '18781917461', '4月7日', '12', '2018-03-28 11:36:16', 'http://www.daxi51.com/ssm_file/upfile/image/2018322/1521700890293.jpg', '706849');
INSERT INTO `orders` VALUES ('518', '明月村亲子春游踏青之旅——采茶制茶体验+捏陶制陶手工', 'DAXI201803280024', '2018-03-28 11:36:23', null, '00001', ' 成人票 * 1', '0.01', '1', '0', '2825c16e-a128-4f07-b9a7-a8aff67cc7bd', '小五112', '18781917461', '4月7日', '12', '2018-03-28 11:36:23', 'http://www.daxi51.com/ssm_file/upfile/image/2018322/1521700890293.jpg', '864307');
INSERT INTO `orders` VALUES ('519', '明月村亲子春游踏青之旅——采茶制茶体验+捏陶制陶手工', 'DAXI201803280025', '2018-03-28 11:36:29', null, '00001', ' 成人票 * 1', '0.01', '1', '0', '2825c16e-a128-4f07-b9a7-a8aff67cc7bd', '小五113', '18781917461', '4月7日', '12', '2018-03-28 11:36:29', 'http://www.daxi51.com/ssm_file/upfile/image/2018322/1521700890293.jpg', '190648');
INSERT INTO `orders` VALUES ('520', '明月村亲子春游踏青之旅——采茶制茶体验+捏陶制陶手工', 'DAXI201803280026', '2018-03-28 11:53:38', null, '00001', ' 成人票 * 1', '0.01', '1', '0', '2825c16e-a128-4f07-b9a7-a8aff67cc7bd', '旭1', '18781917461', '4月7日', '12', '2018-03-28 11:53:38', 'http://www.daxi51.com/ssm_file/upfile/image/2018322/1521700890293.jpg', '759286');
INSERT INTO `orders` VALUES ('521', '明月村亲子春游踏青之旅——采茶制茶体验+捏陶制陶手工', 'DAXI201803280027', '2018-03-28 11:53:45', null, '00001', ' 成人票 * 1', '0.01', '1', '0', '2825c16e-a128-4f07-b9a7-a8aff67cc7bd', '旭2', '18781917461', '4月7日', '12', '2018-03-28 11:53:45', 'http://www.daxi51.com/ssm_file/upfile/image/2018322/1521700890293.jpg', '018973');
INSERT INTO `orders` VALUES ('522', '明月村亲子春游踏青之旅——采茶制茶体验+捏陶制陶手工', 'DAXI201803280028', '2018-03-28 11:53:51', null, '00001', ' 成人票 * 1', '0.01', '1', '0', '2825c16e-a128-4f07-b9a7-a8aff67cc7bd', '旭4', '18781917461', '4月7日', '12', '2018-03-28 11:53:51', 'http://www.daxi51.com/ssm_file/upfile/image/2018322/1521700890293.jpg', '584602');
INSERT INTO `orders` VALUES ('523', '明月村亲子春游踏青之旅——采茶制茶体验+捏陶制陶手工', 'DAXI201803280029', '2018-03-28 11:53:57', null, '00001', ' 成人票 * 1', '0.01', '1', '0', '2825c16e-a128-4f07-b9a7-a8aff67cc7bd', '旭4', '18781917461', '4月7日', '12', '2018-03-28 11:53:57', 'http://www.daxi51.com/ssm_file/upfile/image/2018322/1521700890293.jpg', '720683');

-- ----------------------------
-- Table structure for `persistent_message_queue`
-- ----------------------------
DROP TABLE IF EXISTS `persistent_message_queue`;
CREATE TABLE `persistent_message_queue` (
  `ID` varchar(100) NOT NULL COMMENT 'id',
  `RANK` int(11) DEFAULT NULL COMMENT 'rank;// 消息等级 一共10等级，1~10级 1级为最高等级 最优先执行的消息队列（查询时-1表示所有等级）',
  `URL` varchar(500) DEFAULT NULL COMMENT 'url;//消息处理的地址',
  `MSG_FROM` varchar(255) DEFAULT NULL COMMENT 'msgFrom;//消息来源 当前支持 1，系统消息SYSTEM_MQ 2，用户消息 USER_MQ 3，管理员消息 ADMIN_MQ 4，接口消息  INTERFACE_MQ 5，其他消息',
  `CREATE_TIME` varchar(50) DEFAULT NULL COMMENT 'createTime; //创建时间',
  `PRE_EXECUTION_TIME` varchar(50) DEFAULT NULL COMMENT 'preExecutionTime;//消息预执行时间',
  `CONSUME_TIME` varchar(50) DEFAULT NULL COMMENT 'consumeTime;//消息消费时间',
  `DESC_M` varchar(500) DEFAULT NULL COMMENT 'descM; //消息描述。',
  `RESULT` varchar(11) DEFAULT NULL COMMENT 'result; //消息处理结果。',
  `STATUS` int(11) DEFAULT '0' COMMENT 'status;//消息队列的状态 0待处理 1已处理 (STATE)',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of persistent_message_queue
-- ----------------------------
INSERT INTO `persistent_message_queue` VALUES ('1', '1', 'xxxx', 'xxxx', '2018-3-26', null, '2018-3-26', '测试持久化消息队列', '0', '0');
INSERT INTO `persistent_message_queue` VALUES ('559ec992-7fdd-4808-8406-064e9e53abaf', '2', 'http://w17b197823.iok.la/ssm/persistentMessageQueue/sendMsg!id=559ec992-7fdd-4808-8406-064e9e53abaf', 'ADMIN_MQ', '2018-03-27 17:15:49', '2018-03-27 17:15:49', null, 'sfsfsf', '', '0');
INSERT INTO `persistent_message_queue` VALUES ('923cae20-f2f1-4047-98d6-1eadf849cf4a', '2', 'http://w17b197823.iok.la/ssm/persistentMessageQueue/sendMsg!id=923cae20-f2f1-4047-98d6-1eadf849cf4a', 'ADMIN_MQ', '2018-03-30 14:14:51', '2018-03-30 14:14:51', null, 'a670f32b-d69b-4e4f-995b-c32f65bdd7c8', '', '0');
INSERT INTO `persistent_message_queue` VALUES ('986e52a4-b2f5-41b2-9831-7417fab57bf8', '2', 'http://w17b197823.iok.la/ssm/persistentMessageQueue/sendMsg!id=986e52a4-b2f5-41b2-9831-7417fab57bf8', 'ADMIN_MQ', '2018-03-27 17:14:42', '2018-03-27 17:14:42', null, '53d6c5ac-efd6-4c7c-87ea-26c115e8a348', '', '0');
INSERT INTO `persistent_message_queue` VALUES ('9baf5afc-756b-4a3a-a653-ad0191f66110', '2', 'http://w17b197823.iok.la/ssm/messageRecord/sendMsg?id=9baf5afc-756b-4a3a-a653-ad0191f66110', 'ADMIN_MQ', '2018-03-27 16:58:56', '2018-03-27 16:58:56', null, '53d6c5ac-efd6-4c7c-87ea-26c115e8a348', '', '0');
INSERT INTO `persistent_message_queue` VALUES ('9fb61a1a-96bf-49cd-b9bb-2a32382296b3', '2', 'http://w17b197823.iok.la/ssm/persistentMessageQueue/sendMsg!id=9fb61a1a-96bf-49cd-b9bb-2a32382296b3', 'ADMIN_MQ', '2018-03-30 14:14:51', '2018-03-30 14:14:51', null, '53d6c5ac-efd6-4c7c-87ea-26c115e8a348', '', '0');
INSERT INTO `persistent_message_queue` VALUES ('afd4d746-5315-4ebd-94b7-b3187a591d55', '2', 'http://w17b197823.iok.la/ssm/persistentMessageQueue/sendMsg!id=afd4d746-5315-4ebd-94b7-b3187a591d55', 'ADMIN_MQ', '2018-03-27 17:24:26', '2018-03-27 17:24:26', null, 'a670f32b-d69b-4e4f-995b-c32f65bdd7c8', '', '0');
INSERT INTO `persistent_message_queue` VALUES ('bc60256f-bddd-4a24-88df-0c420c5f4581', '2', 'http://w17b197823.iok.la/ssm/persistentMessageQueue/sendMsg!id=bc60256f-bddd-4a24-88df-0c420c5f4581', 'ADMIN_MQ', '2018-03-30 14:14:51', '2018-03-30 14:14:51', null, 'sfsfsf', '', '0');
INSERT INTO `persistent_message_queue` VALUES ('dafcee89-d6be-42b9-9907-a054a7c96e28', '2', 'http://w17b197823.iok.la/ssm/messageRecord/sendMsg?id=dafcee89-d6be-42b9-9907-a054a7c96e28', 'ADMIN_MQ', '2018-03-27 17:08:48', '2018-03-27 17:08:48', null, '53d6c5ac-efd6-4c7c-87ea-26c115e8a348', '', '0');

-- ----------------------------
-- Table structure for `public_account_info`
-- ----------------------------
DROP TABLE IF EXISTS `public_account_info`;
CREATE TABLE `public_account_info` (
  `ID` varchar(255) NOT NULL COMMENT '主键ID',
  `ACCOUNT_NAME` varchar(255) DEFAULT NULL COMMENT '公众帐号名称',
  `ACCOUNT_ID` varchar(255) DEFAULT NULL COMMENT '公众帐号原始ID',
  `TOKEN` varchar(255) NOT NULL COMMENT 'token',
  `APP_ID` varchar(255) NOT NULL COMMENT 'AppId',
  `APP_SECRET` varchar(255) NOT NULL COMMENT 'App_Secret',
  `ACCOUNT_TYPE` int(11) DEFAULT NULL COMMENT '1个人号 2服务号 3订阅号 4企业号 5小程序',
  `INTERFACE_URL` varchar(255) NOT NULL COMMENT '接口地址(微信公众号配置地址)',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建日期',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '修改日期',
  `STATUS` int(11) DEFAULT NULL COMMENT '-1已删除 1未删除',
  `DESC_M` varchar(300) DEFAULT NULL COMMENT '其他描述',
  `USABLE` int(2) NOT NULL DEFAULT '0' COMMENT '公众号启用状态 0未启用 系统不会去获取该公众号的AccessToken，并且该公众号的接口不能正常使用  1已启用',
  `EFFECTIVE_TIME` varchar(100) NOT NULL DEFAULT '7100' COMMENT 'ACCESS_TOKEN有效时间(单位：ms)',
  `OPEN_PLATFORM` varchar(255) DEFAULT NULL COMMENT '公众号绑定的开放平台 openPlatform',
  `MCH_ID` varchar(20) DEFAULT NULL COMMENT '微信支付，商户平台账号mch_id',
  `MCH_KEY` varchar(50) DEFAULT NULL COMMENT '微信支付，商户平台的api秘钥',
  `NOTIFY_ERROR_URL` varchar(255) DEFAULT NULL COMMENT '微信支付错误跳转页面',
  `NOTIFY_URL` varchar(255) DEFAULT NULL COMMENT 'notify_url 支付完成后微信发给该链接信息，可以判断会员是否支付成功，改变订单状态等',
  `MENU_ID` varchar(10) DEFAULT NULL COMMENT '菜单ID',
  `PARENT_MENU_ID` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ID` (`ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='公众号基础信息';

-- ----------------------------
-- Records of public_account_info
-- ----------------------------
INSERT INTO `public_account_info` VALUES ('44e6bf20-eaf1-4c26-9689-e48783120c96', '一点五小时(服务号)', 'gh_6df148fbf10a', 'westwisd', 'wx93a4e8ff7be8feb9', 'eacce4048a253e99fa2ea649cf11b928', '2', 'http://www.daxi51.com/ssm/wechat/interfaceApi?sign=118', '2018-03-08 10:23:32', null, '1', '一点五小时(服务号)', '0', '7100', '1', '1494619032', 'hxzb2017hxzb2017hxzb2017hxzb2017', '暂无', '暂无', '124', '118');
INSERT INTO `public_account_info` VALUES ('61b0db8d-d2e5-49b4-be3b-33db6c905e81', 'New Wechat(测试号)', '公众号的原始ID', 'westwisd', 'wxd3b1cf8e1a496567', '6e0f9de901d77644a8f8d209c9341037', '6', 'http://w17b197823.iok.la/ssm/wechat/interfaceApi?sign=107', '2018-02-05 16:33:00', '2018-02-05 17:50:37', '1', '这是一个新的公众号', '1', '7100', '', '1111', '2222', 'urlzxzzz22222222222111111', 'urlxxxxxxzzz2222222221111122', '113', '107');
INSERT INTO `public_account_info` VALUES ('aef17d69-5f02-411d-8fa9-21caacca8787', '一点五小时(订阅号)', 'd9975a28070d', 'westwisd', 'wxb672fd8ff667cc0c', 'd4af907bc13c98d85904cd027d13d849', '3', 'http://www.daxi51.com/ssm/wechat/interfaceApi?sign=125', '2018-03-08 14:28:54', null, '1', '一点五小时(订阅号)', '0', '7100', '1', '暂无', '暂无', '暂无', '暂无', '131', '125');

-- ----------------------------
-- Table structure for `record_write_off`
-- ----------------------------
DROP TABLE IF EXISTS `record_write_off`;
CREATE TABLE `record_write_off` (
  `ID` varchar(100) NOT NULL COMMENT 'id',
  `CODE` varchar(255) DEFAULT NULL COMMENT 'code 核销码。',
  `ORDER_NO` varchar(255) DEFAULT NULL COMMENT '订单号',
  `SELLER_ID` varchar(255) DEFAULT NULL COMMENT '商家ID',
  `ORDER_USER_ID` varchar(255) DEFAULT NULL,
  `USER_ID` varchar(255) DEFAULT NULL COMMENT '被核销者的用户ID。',
  `CREATE_TIME` varchar(100) DEFAULT NULL COMMENT 'createTime 创建时间。',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of record_write_off
-- ----------------------------
INSERT INTO `record_write_off` VALUES ('cf44d610-8fb8-4db7-ac91-99fd8443880d', ' 804513', 'DAXI201803210000', '12', '79bb9f01-87d7-4bf5-b54d-4d46b08a4dbc', '79bb9f01-87d7-4bf5-b54d-4d46b08a4dbc', '2018-03-21 15:46:23');

-- ----------------------------
-- Table structure for `role`
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `roleId` int(11) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `roleName` varchar(20) DEFAULT NULL COMMENT '角色名称',
  `menuIds` varchar(200) DEFAULT NULL COMMENT '菜单IDs',
  `operationIds` varchar(200) DEFAULT NULL COMMENT '按钮IDS',
  `roleDescription` varchar(200) DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`roleId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '超级管理员', '137,136,1,139,2,138,141,140,5,143,6,142,7,129,8,128,9,131,130,133,132,135,134,25,28,110,111,108,109,107,119,118,117,116,115,114,113,112,127,126,125,124,123,122,121,120', '10000,10001,10002,10013,10006,10007,10008,10009,10003,10004,10005,10010,10011,10012,10014', '拥有全部权限的超级管理员角色');
INSERT INTO `role` VALUES ('2', '测试员', '1,2,3,4,6,7,8', '10006,10007,10008,10009,10003,10004,10005,10010,10011,10012,10014', '拥有系统所有业务功能的角色');
INSERT INTO `role` VALUES ('3', '达西', '1,110,9,111,108,109,107,117,116,115,114,113,112,28', null, '达西账号');

-- ----------------------------
-- Table structure for `seller`
-- ----------------------------
DROP TABLE IF EXISTS `seller`;
CREATE TABLE `seller` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sellerName` varchar(100) DEFAULT NULL,
  `loginName` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `openid` varchar(30) DEFAULT NULL,
  `qq` varchar(20) DEFAULT NULL,
  `menuId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of seller
-- ----------------------------
INSERT INTO `seller` VALUES ('12', '卡卡书屋', 'kaka', '123456', 'week@163.com', '17756581541', 'ozAuT0c63kMJ2vusNDZw7RWWVzlQ', '565845145', '107');

-- ----------------------------
-- Table structure for `sys_code`
-- ----------------------------
DROP TABLE IF EXISTS `sys_code`;
CREATE TABLE `sys_code` (
  `ID` varchar(255) NOT NULL,
  `CATEGORY_ID` varchar(255) DEFAULT NULL COMMENT '目录ID',
  `NAME` varchar(255) DEFAULT NULL COMMENT '名字',
  `VALUE` varchar(255) DEFAULT NULL COMMENT '值',
  `SORT` varchar(255) DEFAULT NULL COMMENT '排序',
  `CREATE_TIME` datetime DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  `STATUS` varchar(255) DEFAULT NULL COMMENT '-1 删除  1 未删除',
  `DESC_M` varchar(255) DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_code
-- ----------------------------
INSERT INTO `sys_code` VALUES ('053c0899-9c71-4075-abc7-432727b4fc3a', 'b061ee0e-eb33-4bdb-9119-3f593f80728f', '文本消息', 'text', '', '2018-01-23 15:20:59', null, '1', '');
INSERT INTO `sys_code` VALUES ('3839dc91-66ec-4ef4-be38-2c613ac2c2e8', '43a48b03-627b-44dc-a12b-a9492900b186', '1222', '123', '123', '2018-01-18 14:50:19', '2018-01-18 15:05:41', '-1', '123r');
INSERT INTO `sys_code` VALUES ('792d421d-d754-4b2b-b6c3-02c23688459a', '43a48b03-627b-44dc-a12b-a9492900b186', '12344', '123444', '12344', '2018-01-18 14:50:58', null, '-1', '1234444');
INSERT INTO `sys_code` VALUES ('80824055-5c02-45a5-b67e-9cbfe78f67992', '80824055-5c02-45a5-b67e-9cbfe78f6707', '男', '1', '1', '2018-01-18 11:21:30', null, '1', '1 表示男');
INSERT INTO `sys_code` VALUES ('842f483c-2914-486a-8f26-260faa4537ea', '43a48b03-627b-44dc-a12b-a9492900b186', '微信', '2', '2', '2018-01-18 15:17:08', null, '1', '微信');
INSERT INTO `sys_code` VALUES ('8b7d5b6f-f4ce-4c76-a9d2-90e1e4cd9009', '43a48b03-627b-44dc-a12b-a9492900b186', '1', '1', '1', '2018-01-18 14:57:46', null, '-1', '1');
INSERT INTO `sys_code` VALUES ('be79e723-6604-4a3b-92e5-43f38b72700f', '43a48b03-627b-44dc-a12b-a9492900b186', '支付宝', '1', '1', '2018-01-18 15:09:41', '2018-01-18 15:16:59', '1', '支付宝');
INSERT INTO `sys_code` VALUES ('cw1224055-5c02-45a5-b67e-9cbfewqd21d', '80824055-5c02-45a5-b67e-9cbfe78f6707', '女', '2', '2', '2018-01-18 11:22:25', null, '1', '2 表示女');

-- ----------------------------
-- Table structure for `sys_code_category`
-- ----------------------------
DROP TABLE IF EXISTS `sys_code_category`;
CREATE TABLE `sys_code_category` (
  `ID` varchar(255) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL COMMENT '目录名',
  `CODE` varchar(255) DEFAULT NULL COMMENT '目录CODE',
  `DESC_M` varchar(255) DEFAULT NULL COMMENT '描述',
  `CREATE_TIME` datetime DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  `STATUS` varchar(255) DEFAULT NULL COMMENT '-1未删除 1删除',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_code_category
-- ----------------------------
INSERT INTO `sys_code_category` VALUES ('0be2aecc-9e95-4f78-b16c-c4ef09649dc7', 'qwdq', '123', 'd121e12', '2018-01-17 11:28:22', null, '-1');
INSERT INTO `sys_code_category` VALUES ('43a48b03-627b-44dc-a12b-a9492900b186', '付款方式', 'pay_type', '标识付款方式', '2018-01-18 14:25:27', null, '1');
INSERT INTO `sys_code_category` VALUES ('80824055-5c02-45a5-b67e-9cbfe78f6707', '性别', 'sex', '系统字典;标识性别', '2018-01-17 10:14:14', '2018-01-18 14:23:48', '1');
INSERT INTO `sys_code_category` VALUES ('b061ee0e-eb33-4bdb-9119-3f593f80728f', '微信消息回复关键字', 'keywords_type', '', '2018-01-23 15:19:26', null, '1');
INSERT INTO `sys_code_category` VALUES ('e7c493bc-5ddf-4dc3-8da1-9aa9a796e52b', '11', '111', '111', '2018-03-26 14:26:08', null, '-1');

-- ----------------------------
-- Table structure for `token`
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token` (
  `tokenId` bigint(20) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL COMMENT '用户ID',
  `userAgent` varchar(50) DEFAULT NULL COMMENT '用户（md5）',
  `token` varchar(100) DEFAULT NULL COMMENT 'md5(username+md5(useragent))',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `expireTime` datetime DEFAULT NULL COMMENT '到期时间',
  PRIMARY KEY (`tokenId`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='用户登录信息（用于自动登录）';

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES ('1', '1', '0b239ed7c13c034f6b834897f0b54bba', '66895df164cf660402ab453a53496cd6', '2017-11-29 14:26:21', '3017-12-13 14:26:21');
INSERT INTO `token` VALUES ('2', '1', 'e6d278aaee642cd7a2f2e3c9159eab7b', '3170b2b69895d5746a49267e172159cf', '2018-01-04 17:11:18', '3018-01-18 17:11:18');
INSERT INTO `token` VALUES ('3', '1', '53238f98a9e7923bbe5345421ae11727', '5df84feb591db76a648f2df9b1189e8a', '2018-01-08 11:26:46', '3018-01-25 11:26:46');
INSERT INTO `token` VALUES ('4', '1', '8b4810b04c7b130f0fec57631670a623', '919558703fe12b80330b3ee2f013fec3', '2018-01-12 17:06:51', '3018-01-26 17:06:51');
INSERT INTO `token` VALUES ('5', '1', 'f4feb9af8a48ca326cecc11cbf20a92d', '071a8fadd152ee39fcf3a55df3471208', '2018-01-12 17:07:53', '3018-01-26 17:07:53');
INSERT INTO `token` VALUES ('6', '1', '47b8d931150cf4d8f1352a1f58c3600a', '942b1f1d078f1b8f0064c88ba52e7b29', '2018-01-15 15:47:45', '3018-01-29 15:47:45');
INSERT INTO `token` VALUES ('7', '1', '4c2916d1cd419f882a316ce21e45645e', '649305375e4400507b02230fe66176ce', '2018-01-16 10:49:47', '3018-01-30 10:49:47');
INSERT INTO `token` VALUES ('8', '1', '248b803f037d7654548b91faa11be0a8', 'f753a84d7c1577e9825a9fab22222b31', '2018-01-21 11:05:22', '3018-02-04 11:05:22');
INSERT INTO `token` VALUES ('9', '1', '1a76db4b71055e98b0de6478db70c816', 'f054c9670782de259deb0abbf9f3a7d9', '2018-01-22 15:16:52', '3018-02-05 15:16:52');
INSERT INTO `token` VALUES ('10', '1', 'e58c99c733c4aceb6ead3b92d9d30a5e', '4f863325c773e95ad17e90d4175dd7b1', '2018-01-23 11:53:24', '3018-02-06 11:53:24');
INSERT INTO `token` VALUES ('11', '1', '19b4217092ae908705e3ff594ffc8c46', 'eb5efa54cbce37d7610f60785878a8c0', '2018-01-27 13:06:56', '3018-02-10 13:06:56');
INSERT INTO `token` VALUES ('12', '1', 'b8b62c84a526fe0acef402268e2aebcd', '20fc54d156a5389dfc2990b878dfa227', '2018-01-28 16:53:23', '3018-02-11 16:53:23');
INSERT INTO `token` VALUES ('13', '1', '7630498ff2af2a67e0a07ed0f473f8bb', 'c894457d5583ac1424a372278233b82d', '2018-01-29 10:47:55', '3018-02-12 10:47:55');
INSERT INTO `token` VALUES ('14', '1', 'fa7a7ae2714d019578db2cd9ceeb9081', 'f3794be79838afc4b92f97db83a98e22', '2018-01-29 12:58:08', '3018-02-12 12:58:08');
INSERT INTO `token` VALUES ('15', '1', 'ebd5fe28f2e3978c897a23706fe5a2c4', 'affb79322addbbb381caa6745176665f', '2018-01-29 14:34:47', '3018-01-12 14:34:47');
INSERT INTO `token` VALUES ('16', '1', '0aebbb4871a95a3274ca00ea65359a51', '4fa390a71f27d9dab876065384258c74', '2018-01-29 16:30:05', '3018-01-12 16:30:05');
INSERT INTO `token` VALUES ('17', '1', '3e0e1b59b1171e573e8bb693df1a716e', 'd8cf8b175500069f708b52c66dcdcb4d', '2018-02-04 09:41:35', '2018-02-18 09:41:35');
INSERT INTO `token` VALUES ('18', '1', 'b1ecd9d6b80ebb7d3304a1014d8f695d', 'bdc66df5b0d177b4568c49299258a4e7', '2018-02-04 12:12:08', '2018-02-18 12:12:08');
INSERT INTO `token` VALUES ('19', '1', 'b3dbab0143bfd48ad514f228046be4ea', '5ad32a3979f965fa3c493b7f21a23d33', '2018-02-07 06:29:30', '2018-02-21 06:29:30');
INSERT INTO `token` VALUES ('20', '1', '3dc174b9dc2003f9d6880a53806f3d53', 'a29a0777376a7f9b592a758575b62ef8', '2018-02-07 18:00:59', '2018-02-21 18:00:59');
INSERT INTO `token` VALUES ('21', '1', '52e62dc2f1e89e8283dc4e38e52d7c00', 'b35cb9ad4acead5038f4bb9816285458', '2018-02-28 10:04:12', '2018-03-14 10:04:12');
INSERT INTO `token` VALUES ('22', '1', 'b2c24c2b716cc725625df6e57e99ea32', '870f25b7238a19ee3758ad94482fc494', '2018-03-08 10:18:05', '2018-03-22 10:18:05');
INSERT INTO `token` VALUES ('23', '1', '3d03b851f08d5e0f2006cbded3f04d06', '3642b01c75c921b1f5d9b91dd97826ce', '2018-03-08 14:16:38', '2018-03-22 14:16:38');
INSERT INTO `token` VALUES ('24', '1', '13d9a35166d10a3089be5094db73f816', 'abf491961279cc7e3310e4aadecfa91b', '2018-03-08 14:53:05', '2018-03-22 14:53:05');
INSERT INTO `token` VALUES ('25', '1', 'd5944711c391d82753dc49ef30765bb1', 'f27b40c14c644b05f61925e32b368c69', '2018-03-13 16:12:58', '2018-03-27 16:12:58');
INSERT INTO `token` VALUES ('26', '1', '8b4b5cfe50cbd532ce9d1b6367318e4e', '3fa571a168f70df09f8be7cdcff1ea6c', '2018-03-14 13:20:38', '2018-03-28 13:20:38');
INSERT INTO `token` VALUES ('27', '1', '4a8a2785bc70f14b60e4a4ccf5becbb5', '6c0cf2d4a9d8b0a21e0235c72ce01e3b', '2018-03-15 10:10:42', '2018-03-29 10:10:42');
INSERT INTO `token` VALUES ('28', '1', '2b587005035bbd11c0954c1bd42342cb', 'de285672968c4276e12c46edbeae552a', '2018-03-20 09:13:16', '2018-04-03 09:13:16');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userId` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `userName` varchar(20) DEFAULT NULL COMMENT '用户名',
  `password` varchar(20) DEFAULT NULL COMMENT '密码',
  `userType` tinyint(4) DEFAULT NULL COMMENT '用户类型',
  `roleId` int(11) DEFAULT NULL COMMENT '角色ID',
  `userDescription` varchar(200) DEFAULT NULL COMMENT '描述信息',
  `headImg` varchar(200) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`userId`),
  KEY `roleId` (`roleId`),
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `role` (`roleId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', 'admin', null, '1', '超级管理员，供开发方使用', 'group1/M00/00/00/rBsAC1ppoXyAS5JXAAAUcyEWo-8004.jpg');
INSERT INTO `user` VALUES ('2', 'test', 'test', null, '2', '测试员，供测试方使用', '1');
INSERT INTO `user` VALUES ('3', 'daxi', 'daxi', null, '3', '达西', 'group1/M00/00/00/rBsAC1qcu4SARUOXAAAUcyEWo-8961.jpg');

-- ----------------------------
-- Table structure for `water_bill`
-- ----------------------------
DROP TABLE IF EXISTS `water_bill`;
CREATE TABLE `water_bill` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '账单流水 ID',
  `REMARKS` text COMMENT '备注 REMARKS',
  `ORDER_NO` varchar(100) DEFAULT NULL COMMENT '订单号 ORDER_NO',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT 'createTime 创建时间。',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT 'updateTime 更新时间。',
  `MONEY` double(11,2) DEFAULT NULL COMMENT '金额。MONEY',
  `STATUS` int(11) DEFAULT '1' COMMENT '账单状态。-1 ，1。 STATUS',
  `OPENID` varchar(255) DEFAULT NULL COMMENT '用户标识 OPENID',
  `USER_ID` varchar(255) DEFAULT NULL COMMENT '用户id USER_ID',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=285 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of water_bill
-- ----------------------------
INSERT INTO `water_bill` VALUES ('273', 'fail**Total_fee error User actual payment :[1.0-->1]** : {\"appid\":\"wx93a4e8ff7be8feb9\",\"attach\":\"2825c16e-a128-4f07-b9a7-a8aff67cc7bd\",\"bank_type\":\"CFT\",\"cash_fee\":\"1\",\"fee_type\":\"CNY\",\"is_subscribe\":\"N\",\"mch_id\":\"1494619032\",\"nonce_str\":\"1327474431\",\"openid\":\"o08dF1OU3u22yR-gnD-vq_KykSUU\",\"out_trade_no\":\"DAXI201803270000\",\"result_code\":\"SUCCESS\",\"return_code\":\"SUCCESS\",\"sign\":\"405C76C382547FDB403D88F4CCEBC9D7\",\"time_end\":\"20180327132752\",\"total_fee\":\"1\",\"trade_type\":\"JSAPI\",\"transaction_id\":\"4200000061201803276575543769\"}', 'DAXI201803270000', '2018-03-27 15:00:58', '2018-03-27 15:00:58', '0.01', '2', 'o08dF1OU3u22yR-gnD-vq_KykSUU', '7d3779ed-751f-44ae-a3e0-015d11223fb3');
INSERT INTO `water_bill` VALUES ('274', 'fail**Total_fee error User actual payment :[1.0-->1]** : {\"appid\":\"wx93a4e8ff7be8feb9\",\"attach\":\"2825c16e-a128-4f07-b9a7-a8aff67cc7bd\",\"bank_type\":\"CFT\",\"cash_fee\":\"1\",\"fee_type\":\"CNY\",\"is_subscribe\":\"N\",\"mch_id\":\"1494619032\",\"nonce_str\":\"1350061522\",\"openid\":\"o08dF1OU3u22yR-gnD-vq_KykSUU\",\"out_trade_no\":\"DAXI201803270004\",\"result_code\":\"SUCCESS\",\"return_code\":\"SUCCESS\",\"sign\":\"3D5BEE1C4A43311DEAC8DB2E2E2F73E8\",\"time_end\":\"20180327135010\",\"total_fee\":\"1\",\"trade_type\":\"JSAPI\",\"transaction_id\":\"4200000061201803276560046656\"}', 'DAXI201803270004', '2018-03-27 15:23:07', '2018-03-27 15:23:07', '0.01', '2', 'o08dF1OU3u22yR-gnD-vq_KykSUU', '7d3779ed-751f-44ae-a3e0-015d11223fb3');
INSERT INTO `water_bill` VALUES ('275', 'Message queuing add water:{\"appid\":\"wx93a4e8ff7be8feb9\",\"attach\":\"2825c16e-a128-4f07-b9a7-a8aff67cc7bd\",\"bank_type\":\"CFT\",\"cash_fee\":\"1\",\"fee_type\":\"CNY\",\"is_subscribe\":\"N\",\"mch_id\":\"1494619032\",\"nonce_str\":\"1341332686\",\"openid\":\"o08dF1OU3u22yR-gnD-vq_KykSUU\",\"out_trade_no\":\"DAXI201803270002\",\"result_code\":\"SUCCESS\",\"return_code\":\"SUCCESS\",\"sign\":\"6AAFCDE94A51260A07F840AEEB54A58F\",\"time_end\":\"20180327134138\",\"total_fee\":\"1\",\"trade_type\":\"JSAPI\",\"transaction_id\":\"4200000064201803276555194190\"}', 'DAXI201803270002', '2018-03-27 15:44:44', '2018-03-27 15:44:44', '0.01', '1', 'o08dF1OU3u22yR-gnD-vq_KykSUU', '7d3779ed-751f-44ae-a3e0-015d11223fb3');
INSERT INTO `water_bill` VALUES ('276', 'fail**Total_fee error User actual payment :[1.0-->1]** : {\"appid\":\"wx93a4e8ff7be8feb9\",\"attach\":\"2825c16e-a128-4f07-b9a7-a8aff67cc7bd\",\"bank_type\":\"CFT\",\"cash_fee\":\"1\",\"fee_type\":\"CNY\",\"is_subscribe\":\"N\",\"mch_id\":\"1494619032\",\"nonce_str\":\"1444555898\",\"openid\":\"o08dF1OU3u22yR-gnD-vq_KykSUU\",\"out_trade_no\":\"DAXI201803270010\",\"result_code\":\"SUCCESS\",\"return_code\":\"SUCCESS\",\"sign\":\"9C44451E5F7E100BCDFA212932F85B93\",\"time_end\":\"20180327144501\",\"total_fee\":\"1\",\"trade_type\":\"JSAPI\",\"transaction_id\":\"4200000057201803276598666980\"}', 'DAXI201803270010', '2018-03-27 15:47:42', '2018-03-27 15:47:42', '0.01', '2', 'o08dF1OU3u22yR-gnD-vq_KykSUU', '7d3779ed-751f-44ae-a3e0-015d11223fb3');
INSERT INTO `water_bill` VALUES ('277', 'Message queuing add water:{\"appid\":\"wx93a4e8ff7be8feb9\",\"attach\":\"2825c16e-a128-4f07-b9a7-a8aff67cc7bd\",\"bank_type\":\"CFT\",\"cash_fee\":\"1\",\"fee_type\":\"CNY\",\"is_subscribe\":\"N\",\"mch_id\":\"1494619032\",\"nonce_str\":\"1345572219\",\"openid\":\"o08dF1OU3u22yR-gnD-vq_KykSUU\",\"out_trade_no\":\"DAXI201803270003\",\"result_code\":\"SUCCESS\",\"return_code\":\"SUCCESS\",\"sign\":\"ECFEB5F1CB90632CB3A97801A8FD8E46\",\"time_end\":\"20180327134602\",\"total_fee\":\"1\",\"trade_type\":\"JSAPI\",\"transaction_id\":\"4200000064201803276561240991\"}', 'DAXI201803270003', '2018-03-27 15:49:05', '2018-03-27 15:49:05', '0.01', '1', 'o08dF1OU3u22yR-gnD-vq_KykSUU', '7d3779ed-751f-44ae-a3e0-015d11223fb3');
INSERT INTO `water_bill` VALUES ('278', 'Message queuing Check water : CODE:Success  JSON:{\"appid\":\"wx93a4e8ff7be8feb9\",\"attach\":\"2825c16e-a128-4f07-b9a7-a8aff67cc7bd\",\"bank_type\":\"CFT\",\"cash_fee\":\"1\",\"fee_type\":\"CNY\",\"is_subscribe\":\"N\",\"mch_id\":\"1494619032\",\"nonce_str\":\"1137296403\",\"openid\":\"o08dF1OU3u22yR-gnD-vq_KykSUU\",\"out_trade_no\":\"DAXI201803280023\",\"result_code\":\"SUCCESS\",\"return_code\":\"SUCCESS\",\"sign\":\"E832BB39AC274759DB8B23F6D568AC31\",\"time_end\":\"20180328113736\",\"total_fee\":\"1\",\"trade_type\":\"JSAPI\",\"transaction_id\":\"4200000054201803287170608200\"}', 'DAXI201803280023', '2018-03-28 11:38:55', '2018-03-28 11:38:55', '0.01', '1', 'o08dF1OU3u22yR-gnD-vq_KykSUU', '7d3779ed-751f-44ae-a3e0-015d11223fb3');
INSERT INTO `water_bill` VALUES ('279', 'Message queuing Check water : CODE:Success  JSON:{\"appid\":\"wx93a4e8ff7be8feb9\",\"attach\":\"2825c16e-a128-4f07-b9a7-a8aff67cc7bd\",\"bank_type\":\"CFT\",\"cash_fee\":\"1\",\"fee_type\":\"CNY\",\"is_subscribe\":\"N\",\"mch_id\":\"1494619032\",\"nonce_str\":\"1205262961\",\"openid\":\"o08dF1OU3u22yR-gnD-vq_KykSUU\",\"out_trade_no\":\"DAXI201803280028\",\"result_code\":\"SUCCESS\",\"return_code\":\"SUCCESS\",\"sign\":\"31806FB970CDE85BA40AF25596CCEB3D\",\"time_end\":\"20180328120530\",\"total_fee\":\"1\",\"trade_type\":\"JSAPI\",\"transaction_id\":\"4200000069201803287172056428\"}', 'DAXI201803280028', '2018-03-28 12:05:54', null, '0.01', '1', 'o08dF1OU3u22yR-gnD-vq_KykSUU', '7d3779ed-751f-44ae-a3e0-015d11223fb3');
INSERT INTO `water_bill` VALUES ('280', 'Message queuing Check water : CODE:Success  JSON:{\"appid\":\"wx93a4e8ff7be8feb9\",\"attach\":\"2825c16e-a128-4f07-b9a7-a8aff67cc7bd\",\"bank_type\":\"CFT\",\"cash_fee\":\"1\",\"fee_type\":\"CNY\",\"is_subscribe\":\"N\",\"mch_id\":\"1494619032\",\"nonce_str\":\"1213224453\",\"openid\":\"o08dF1OU3u22yR-gnD-vq_KykSUU\",\"out_trade_no\":\"DAXI201803280029\",\"result_code\":\"SUCCESS\",\"return_code\":\"SUCCESS\",\"sign\":\"607BAE86569EB8BE5C35D6F4927ED67D\",\"time_end\":\"20180328121326\",\"total_fee\":\"1\",\"trade_type\":\"JSAPI\",\"transaction_id\":\"4200000056201803287114783995\"}', 'DAXI201803280029', '2018-03-28 12:12:28', null, '0.01', '1', 'o08dF1OU3u22yR-gnD-vq_KykSUU', '7d3779ed-751f-44ae-a3e0-015d11223fb3');
INSERT INTO `water_bill` VALUES ('281', 'Message queuing Check water : CODE:Success  JSON:{\"appid\":\"wx93a4e8ff7be8feb9\",\"attach\":\"2825c16e-a128-4f07-b9a7-a8aff67cc7bd\",\"bank_type\":\"CFT\",\"cash_fee\":\"1\",\"fee_type\":\"CNY\",\"is_subscribe\":\"N\",\"mch_id\":\"1494619032\",\"nonce_str\":\"1140201286\",\"openid\":\"o08dF1OU3u22yR-gnD-vq_KykSUU\",\"out_trade_no\":\"DAXI201803280025\",\"result_code\":\"SUCCESS\",\"return_code\":\"SUCCESS\",\"sign\":\"7652716CCA297B847DD6A130F6946A9A\",\"time_end\":\"20180328114027\",\"total_fee\":\"1\",\"trade_type\":\"JSAPI\",\"transaction_id\":\"4200000063201803287064257501\"}', 'DAXI201803280025', '2018-03-28 12:13:50', null, '0.01', '1', 'o08dF1OU3u22yR-gnD-vq_KykSUU', '7d3779ed-751f-44ae-a3e0-015d11223fb3');
INSERT INTO `water_bill` VALUES ('282', 'Message queuing Check water : CODE:Success  JSON:{\"appid\":\"wx93a4e8ff7be8feb9\",\"attach\":\"2825c16e-a128-4f07-b9a7-a8aff67cc7bd\",\"bank_type\":\"CFT\",\"cash_fee\":\"1\",\"fee_type\":\"CNY\",\"is_subscribe\":\"N\",\"mch_id\":\"1494619032\",\"nonce_str\":\"1154221933\",\"openid\":\"o08dF1OU3u22yR-gnD-vq_KykSUU\",\"out_trade_no\":\"DAXI201803280026\",\"result_code\":\"SUCCESS\",\"return_code\":\"SUCCESS\",\"sign\":\"2D8E267CA20D6AFE9A0F1693D84347EB\",\"time_end\":\"20180328115427\",\"total_fee\":\"1\",\"trade_type\":\"JSAPI\",\"transaction_id\":\"4200000070201803286679437899\"}', 'DAXI201803280026', '2018-03-28 12:27:47', null, '0.01', '1', 'o08dF1OU3u22yR-gnD-vq_KykSUU', '7d3779ed-751f-44ae-a3e0-015d11223fb3');
INSERT INTO `water_bill` VALUES ('283', 'Message queuing Check water : CODE:Success  JSON:{\"appid\":\"wx93a4e8ff7be8feb9\",\"attach\":\"2825c16e-a128-4f07-b9a7-a8aff67cc7bd\",\"bank_type\":\"CFT\",\"cash_fee\":\"1\",\"fee_type\":\"CNY\",\"is_subscribe\":\"N\",\"mch_id\":\"1494619032\",\"nonce_str\":\"1157269715\",\"openid\":\"o08dF1OU3u22yR-gnD-vq_KykSUU\",\"out_trade_no\":\"DAXI201803280027\",\"result_code\":\"SUCCESS\",\"return_code\":\"SUCCESS\",\"sign\":\"02D64DE4F9B33E15E58C079463D21CF5\",\"time_end\":\"20180328115730\",\"total_fee\":\"1\",\"trade_type\":\"JSAPI\",\"transaction_id\":\"4200000073201803287085803999\"}', 'DAXI201803280027', '2018-03-28 12:30:50', null, '0.01', '1', 'o08dF1OU3u22yR-gnD-vq_KykSUU', '7d3779ed-751f-44ae-a3e0-015d11223fb3');
INSERT INTO `water_bill` VALUES ('284', 'Message queuing Check water : CODE:Success  JSON:{\"appid\":\"wx93a4e8ff7be8feb9\",\"attach\":\"2825c16e-a128-4f07-b9a7-a8aff67cc7bd\",\"bank_type\":\"CFT\",\"cash_fee\":\"1\",\"fee_type\":\"CNY\",\"is_subscribe\":\"N\",\"mch_id\":\"1494619032\",\"nonce_str\":\"1145373705\",\"openid\":\"o08dF1OU3u22yR-gnD-vq_KykSUU\",\"out_trade_no\":\"DAXI201803280024\",\"result_code\":\"SUCCESS\",\"return_code\":\"SUCCESS\",\"sign\":\"1AE6E4CA7CC924A4501BE93DB3C2F223\",\"time_end\":\"20180328114541\",\"total_fee\":\"1\",\"trade_type\":\"JSAPI\",\"transaction_id\":\"4200000057201803287064976833\"}', 'DAXI201803280024', '2018-03-28 12:48:59', null, '0.01', '1', 'o08dF1OU3u22yR-gnD-vq_KykSUU', '7d3779ed-751f-44ae-a3e0-015d11223fb3');

-- ----------------------------
-- Table structure for `wechat_activity`
-- ----------------------------
DROP TABLE IF EXISTS `wechat_activity`;
CREATE TABLE `wechat_activity` (
  `ID` varchar(100) NOT NULL COMMENT 'id',
  `TITLE` varchar(255) DEFAULT NULL COMMENT 'title活动标题，简介。',
  `DESC_M` varchar(255) DEFAULT NULL COMMENT 'descM 活动描述。',
  `URL` varchar(255) DEFAULT NULL COMMENT 'url 活动链接（根据活动id，自动生成）',
  `RETURN_PAGE` varchar(255) DEFAULT NULL COMMENT 'returnPage如果填写了该项，会强制该链接进入填写的页',
  `TYPES` varchar(255) DEFAULT NULL COMMENT 'types 活动类型',
  `SHARE` int(11) DEFAULT NULL COMMENT 'share 是否支持分享。 -1 不支持分享，页面菜单中将隐藏分享的一系列按钮   1支持分享。',
  `SHARE_TITLE` varchar(50) DEFAULT NULL COMMENT 'shareTitle 分享标题。',
  `SHARE_DESC_M` varchar(255) DEFAULT NULL COMMENT 'shareDescM; //分享描',
  `SHARE_IMAGE` varchar(255) DEFAULT NULL COMMENT 'shareImage 分享图片。',
  `BINDING_WECHAT_ID` varchar(50) DEFAULT NULL COMMENT 'bindingWechatId 绑定的微信id，确定是那个微信号的活动。',
  `AUTHORISED` int(11) DEFAULT '-1' COMMENT 'authorised 是否需要微信授权登录。 -1 不需要，1需要。说明：该项只有服务号才能开启。',
  `SUPPORT_GET_WECHAT_MSG` int(11) DEFAULT '-1' COMMENT 'supportGetWechatMsg 是否支持登录后保存微信用户信息（头像，昵称，openid）。-1 不支持 1 支持。说明：该项配置只有服务号才有效。',
  `SUBSCRIBE_WECHAT_ID` varchar(255) DEFAULT NULL COMMENT 'subscribeWechatId 订阅号id。如果支持授权登录，该项如果不为null OR '''' ,表示是需要关注的subscribeWechatId订阅号才能报名。授权时也会获取订阅号的用户来同步用户信息',
  `SCAN_USER_ID_ARRAY` varchar(500) DEFAULT NULL COMMENT '核销人员',
  `PRIZES` int(11) DEFAULT '-1' COMMENT 'prizes 是否开启抽奖。-1 不开启， 1开启。',
  `PRIZES_TYPE` varchar(50) DEFAULT NULL COMMENT 'prizesType 抽奖形式。目前只支持一种后台抽奖方式。',
  `BEGIN_TIME` datetime DEFAULT NULL COMMENT 'beginTime 报名开始时间',
  `END_TIME` datetime DEFAULT NULL COMMENT 'endTime 报名结束时间。',
  `STATUS` int(11) DEFAULT '-1' COMMENT 'status 状态。-1冻结的活动 ，1进行的活动。',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT 'createTime 创建时间。',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT 'updateTime 更新时间。',
  `MENU_ID` varchar(255) DEFAULT NULL COMMENT 'menuId 系统菜单ID(这个是关联管理后台那个菜单的)',
  `PARENT_MENU_ID` varchar(255) DEFAULT NULL COMMENT 'parentMenuId 系统父级菜单ID',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wechat_activity
-- ----------------------------
INSERT INTO `wechat_activity` VALUES ('58448a4b2b914b57ab5fd772f2a3410c', '测试活动', '测试一点五小时服务号活动', 'http://w17b197823.iok.la/ssm/activityReception/toSignUpInUser?menuId=107&id=58448a4b2b914b57ab5fd772f2a3410c&from=singlemessage&isappinstalled=0', null, null, '1', '测试分享功能', '分享描述', 'b629e079b2804891a85b506bd6c63cd8', '61b0db8d-d2e5-49b4-be3b-33db6c905e81', '1', '1', '-1', '7d3779ed-751f-44ae-a3e0-015d11223fb3,', '1', 'auto', '2018-03-07 00:00:00', '2018-03-09 00:00:00', '1', '2018-03-08 10:41:01', '2018-03-16 10:32:11', '115', null);
INSERT INTO `wechat_activity` VALUES ('7cf8faeb8ddd442480d12b0cab692914', '安安', 'ss', '', 'ad/dsf/sd', 'sign', '1', 'dsa', 'fdgdg', '', '61b0db8d-d2e5-49b4-be3b-33db6c905e81', '1', '1', '61b0db8d-d2e5-49b4-be3b-33db6c905e81', null, '1', 'auto', '2018-03-01 00:00:00', '2018-03-02 00:00:00', '1', '2018-03-16 15:00:04', null, '115', null);
INSERT INTO `wechat_activity` VALUES ('c78f91a936eb40cdbddcae050cdaadb7', '超级豪华大礼盒', '超级豪华大礼盒', 'http://w17b197823.iok.la/ssm/activityReception/toSignUpInUser?menuId=107&id=c78f91a936eb40cdbddcae050cdaadb7&from=singlemessage&isappinstalled=0', null, null, '1', 'fdf是否', '舒服舒服舒服', 'a2d569aed9bb4ff095ecbce6b6ce0b7d', '61b0db8d-d2e5-49b4-be3b-33db6c905e81', '1', '1', '-1', 'b04d0775-ff7c-4e57-b04e-46f59597c147,41a3efd8-03fb-4d0f-acfb-8c7e1116657a,', '1', 'auto', '2018-03-04 00:00:00', '2018-03-31 00:00:00', '1', '2018-03-05 16:31:17', '2018-03-16 11:53:10', '115', null);

-- ----------------------------
-- Table structure for `wechat_activity_answer`
-- ----------------------------
DROP TABLE IF EXISTS `wechat_activity_answer`;
CREATE TABLE `wechat_activity_answer` (
  `ID` varchar(100) NOT NULL COMMENT 'id',
  `OPTIONS` varchar(255) DEFAULT NULL COMMENT '答案选项。',
  `SORT` int(11) DEFAULT '1' COMMENT '排序',
  `DESC_M` varchar(255) DEFAULT NULL COMMENT 'descM 问答题描述。',
  `STATUS` int(11) DEFAULT '-1' COMMENT 'status 状态。-1冻结的活动 ，1进行的活动。',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT 'createTime 创建时间。',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT 'updateTime 更新时间。',
  `QUESTIONS_ID` varchar(255) DEFAULT NULL COMMENT 'questionsId 问题ID。',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wechat_activity_answer
-- ----------------------------
INSERT INTO `wechat_activity_answer` VALUES ('0b1ea510-ef61-4c53-a486-cff4fc16c5b0', '1', '1', '', '1', '2018-03-16 11:27:23', null, '1af85b12-e2e5-4ae9-b489-1b206f33796f');
INSERT INTO `wechat_activity_answer` VALUES ('4332499b-3663-4f47-a3e3-c3dcafe2d19b', '4', '4', '', '1', '2018-03-16 11:27:23', null, '1af85b12-e2e5-4ae9-b489-1b206f33796f');
INSERT INTO `wechat_activity_answer` VALUES ('593a8857-64f3-405f-bd68-601e691575fd', 'C.冥王星', '3', '', '1', '2018-03-09 11:40:27', null, '196a94d8-beb5-449e-9082-9942c8f0ca8c');
INSERT INTO `wechat_activity_answer` VALUES ('6809aa45-ec15-478d-aaee-423135b52025', '2', '2', '', '1', '2018-03-16 11:27:23', null, '1af85b12-e2e5-4ae9-b489-1b206f33796f');
INSERT INTO `wechat_activity_answer` VALUES ('8578426e-6133-42c7-a543-355f4f5e9048', 'B.太阳', '2', '', '1', '2018-03-09 11:40:27', null, '196a94d8-beb5-449e-9082-9942c8f0ca8c');
INSERT INTO `wechat_activity_answer` VALUES ('9883370b-2898-41a3-8123-33d52b9b4ae0', 'A.地球', '1', '', '1', '2018-03-09 11:40:27', null, '196a94d8-beb5-449e-9082-9942c8f0ca8c');
INSERT INTO `wechat_activity_answer` VALUES ('a7bafa6f-d594-474d-bc20-e2d3770579d2', 'D.中子星', '4', '', '1', '2018-03-09 11:40:27', null, '196a94d8-beb5-449e-9082-9942c8f0ca8c');
INSERT INTO `wechat_activity_answer` VALUES ('e80c7568-23a0-48e1-98f7-89a78465ed4c', '3', '3', '', '1', '2018-03-16 11:27:23', null, '1af85b12-e2e5-4ae9-b489-1b206f33796f');

-- ----------------------------
-- Table structure for `wechat_activity_prize`
-- ----------------------------
DROP TABLE IF EXISTS `wechat_activity_prize`;
CREATE TABLE `wechat_activity_prize` (
  `ID` varchar(100) NOT NULL COMMENT 'id',
  `NAME` varchar(255) DEFAULT NULL COMMENT 'name 奖品名称。',
  `DESC_M` varchar(255) DEFAULT NULL COMMENT 'descM 活动描述。',
  `IMAGE` varchar(255) DEFAULT NULL COMMENT 'image 奖品图片。',
  `QUANTITY` int(11) DEFAULT '0' COMMENT 'quantity 奖品数量。',
  `ODDS` varchar(50) DEFAULT NULL COMMENT 'odds 获奖概率。',
  `INVALID_TIME` datetime DEFAULT NULL COMMENT 'invalidTime 奖品失效时间。',
  `WECHAT_ACTIVITY_ID` varchar(255) DEFAULT NULL COMMENT 'wechatActivityId 微信活动的id。确定报的那个活动。',
  `STATUS` int(11) DEFAULT '-1' COMMENT 'status 状态。-1冻结的活动 ，1进行的活动。',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT 'createTime 创建时间。',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT 'updateTime 更新时间。',
  `MENU_ID` varchar(255) DEFAULT NULL COMMENT 'menuId 系统菜单ID(这个是关联管理后台那个菜单的)',
  `PARENT_MENU_ID` varchar(255) DEFAULT NULL COMMENT 'parentMenuId 系统父级菜单ID',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wechat_activity_prize
-- ----------------------------
INSERT INTO `wechat_activity_prize` VALUES ('16c2b1332ac34867af419c44b8b1938b', 'xx卷', 'xx卷', '687f43e8af3e410a991cd2e03083c488', '2', '', '2018-03-01 00:00:00', 'c78f91a936eb40cdbddcae050cdaadb7', '1', '2018-03-01 11:20:33', null, '116', null);
INSERT INTO `wechat_activity_prize` VALUES ('88a8741caceb4069a6da35b89c581f61', '时光之旅门票', '时光之旅门票', '97cfdba7492c42c7b2e577ea8c11108c', '1', '1', '2018-03-08 00:00:00', '58448a4b2b914b57ab5fd772f2a3410c', '1', '2018-03-08 10:41:34', null, '116', null);

-- ----------------------------
-- Table structure for `wechat_activity_sign`
-- ----------------------------
DROP TABLE IF EXISTS `wechat_activity_sign`;
CREATE TABLE `wechat_activity_sign` (
  `ID` varchar(255) NOT NULL COMMENT 'id',
  `OPENID` varchar(255) DEFAULT NULL COMMENT 'openid 报名微信openid。如果支持授权登录和获取保存用户信息，用户在报名时会自动补充该信息。',
  `UNIONID` varchar(255) DEFAULT NULL COMMENT 'unionid 微信用户unionid,多个公众号之间判断是否是同一个用户',
  `USER_ID` varchar(255) DEFAULT NULL COMMENT 'userId 报名微信用户id。如果支持授权登录和获取保存用户信息，用户在报名时会自动补充该信息。',
  `WECHAT_ACTIVITY_ID` varchar(255) DEFAULT NULL COMMENT 'wechatActivityId 微信活动的id。确定报的那个活动。',
  `STATUS` int(11) DEFAULT '1' COMMENT 'status 状态。-1逻辑删除 ，1存在。',
  `DRAW` int(11) DEFAULT '-1' COMMENT '中奖标识。-1未中奖 ，1中奖。',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT 'createTime 创建时间。',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT 'updateTime 更新时间。',
  `MENU_ID` varchar(255) DEFAULT NULL COMMENT 'menuId 系统菜单ID(这个是关联管理后台那个菜单的)',
  `PARENT_MENU_ID` varchar(255) DEFAULT NULL COMMENT 'parentMenuId 系统父级菜单ID',
  `DESC_M` varchar(255) DEFAULT NULL COMMENT 'descM 活动描述。',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wechat_activity_sign
-- ----------------------------
INSERT INTO `wechat_activity_sign` VALUES ('03396fc5949b4229836e1a1f22b9b490', 'o08dF1IAGlE1HkGhGL_nDxCQrjJ4', 'o5O6DxPHQtGLO18IUjamKae4vjEg', 'e565f993-59b4-451a-9ef0-7ffcf1120621', '58448a4b2b914b57ab5fd772f2a3410c', '1', '-1', '2018-03-09 11:52:56', null, '', '', null);
INSERT INTO `wechat_activity_sign` VALUES ('7f1bf398f6e142dea3da6994c984118c', 'o7QP0w08uWmGqhDiamTYyf4PZ_u4', 'o5O6DxPHQtGLO18IUjamKae4vjEg', '00a1713f-9722-4b1a-9000-d90aa0088603', 'c78f91a936eb40cdbddcae050cdaadb7', '1', '-1', '2018-03-16 12:00:09', null, '', '', null);
INSERT INTO `wechat_activity_sign` VALUES ('9325ca840ade4147b96620ad2513e432', 'o08dF1OU3u22yR-gnD-vq_KykSUU', 'o5O6DxBg2nNAGHGmTel7a9GdSvj8', '7d3779ed-751f-44ae-a3e0-015d11223fb3', '58448a4b2b914b57ab5fd772f2a3410c', '1', '-1', '2018-03-09 11:49:06', null, '', '', null);
INSERT INTO `wechat_activity_sign` VALUES ('a1c7e8aca228490797ebbc533c3bdc3f', 'o08dF1MfYGHga0aXrlCpThEC49ps', 'o5O6DxBZKm7VMRkSkvWYvTKM-4aY', 'e5c93e1a-f726-40f9-9ee4-382d8717a342', '58448a4b2b914b57ab5fd772f2a3410c', '1', '-1', '2018-03-09 11:51:15', null, '', '', null);
INSERT INTO `wechat_activity_sign` VALUES ('af492c6817ab40359359d3073dcc64cb', 'o7QP0w1xEiVGYU8fklX5_-gipriQ', 'o5O6DxBg2nNAGHGmTel7a9GdSvj8', '79bb9f01-87d7-4bf5-b54d-4d46b08a4dbc', 'c78f91a936eb40cdbddcae050cdaadb7', '1', '-1', '2018-03-16 11:58:38', null, '', '', null);
INSERT INTO `wechat_activity_sign` VALUES ('f601e5a3e356498b80de81d428d246cd', 'o7QP0w1RBXFKVDExUl4aJ0voRZ5s', 'o5O6DxBZKm7VMRkSkvWYvTKM-4aY', '9cdc68f4-976a-431b-8e1c-62d5f86c7928', 'c78f91a936eb40cdbddcae050cdaadb7', '1', '-1', '2018-03-16 12:01:30', null, '', '', null);

-- ----------------------------
-- Table structure for `wechat_activity_sign_set`
-- ----------------------------
DROP TABLE IF EXISTS `wechat_activity_sign_set`;
CREATE TABLE `wechat_activity_sign_set` (
  `ID` varchar(100) NOT NULL COMMENT 'id',
  `CHINESE_CHARACTER_NAME` varchar(255) DEFAULT NULL COMMENT '汉字名称',
  `NAME_PLACEHOLDER` varchar(255) DEFAULT NULL COMMENT '名字默认占位符 ',
  `NAME` varchar(255) DEFAULT NULL COMMENT 'name 属性名称。',
  `VALUESE` varchar(255) DEFAULT NULL COMMENT 'valuese 属性名称对应的值。',
  `SET_TYPE` int(11) DEFAULT '0' COMMENT 'setType  是配置还是值。  0 配置，1值。',
  `TYPESE` varchar(255) DEFAULT NULL COMMENT 'typese 属性类型。radio/checkBox/input/textArea....',
  `REQUIRED` int(11) DEFAULT '-1' COMMENT 'required 是否必须。  -1 非必须，1必须。',
  `VERIFICATION_TYPE` varchar(50) DEFAULT NULL COMMENT 'verificationType 属性验证类型。',
  `SORT` int(255) DEFAULT '99999' COMMENT 'int sort 排序',
  `HIDE` int(255) DEFAULT '1' COMMENT 'hide 是否隐藏。  -1不 隐藏，1隐藏。',
  `REPEATS` int(50) DEFAULT '1' COMMENT 'repeat 是否验证重复字段。  -1 忽略重复，1验证重复。',
  `WECHAT_ACTIVITY_ID` varchar(255) DEFAULT NULL COMMENT 'wechatActivityId 微信活动的id。确定报的那个活动。',
  `WECHAT_ACTIVITY_SIGN_ID` varchar(255) DEFAULT NULL COMMENT 'wechatActivitySignId 微信活动报名的id。确定报的那个报名者。',
  `STATUS` int(11) DEFAULT '1' COMMENT 'status 状态。-1逻辑删除 ，1存在。',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT 'createTime 创建时间。',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT 'updateTime 更新时间。',
  `DESC_M` varchar(255) DEFAULT NULL COMMENT 'descM 描述。',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wechat_activity_sign_set
-- ----------------------------
INSERT INTO `wechat_activity_sign_set` VALUES ('01ea850a41d94a9da8d660c2c4d2064c', null, null, 'phone', '18311576225', '1', '', '-1', '', '2', '0', '-1', 'c78f91a936eb40cdbddcae050cdaadb7', 'f601e5a3e356498b80de81d428d246cd', '1', '2018-03-16 12:01:30', null, null);
INSERT INTO `wechat_activity_sign_set` VALUES ('0304478144194dcd83b4cdfdf8ad4d3e', null, null, 'name', '许功斌', '1', '', '-1', '', '1', '0', '-1', 'c78f91a936eb40cdbddcae050cdaadb7', '8460ca29d2ac471ea0abbc9306e5d29c', '1', '2018-03-07 09:57:45', null, null);
INSERT INTO `wechat_activity_sign_set` VALUES ('0625df4a8b3141d693e82e3d7ab6d1c8', null, null, 'nickname', '\\u951f\\u706c\\ud83d\\udca6', '1', '', '-1', '', '9999', '0', '-1', 'c78f91a936eb40cdbddcae050cdaadb7', '56036b9641b741ff8cdd42c1496a9a12', '1', '2018-03-07 11:46:49', null, null);
INSERT INTO `wechat_activity_sign_set` VALUES ('09564383b57948c4a09b03c7d3223ce9', null, null, 'phone', '18781917461', '1', '', '-1', '', '1', '0', '-1', '58448a4b2b914b57ab5fd772f2a3410c', '676bd74495464102ba25f4dbe5f28ac6', '1', '2018-03-09 08:13:45', null, null);
INSERT INTO `wechat_activity_sign_set` VALUES ('0a1d7f6c2a5d4463b1f434d22f943cf8', null, null, 'phone', '18311576225', '1', '', '-1', '', '2', '0', '-1', '58448a4b2b914b57ab5fd772f2a3410c', 'a1c7e8aca228490797ebbc533c3bdc3f', '1', '2018-03-09 11:51:15', null, null);
INSERT INTO `wechat_activity_sign_set` VALUES ('0a9522771abe42b5a9b7fc470223663a', null, null, 'name', '小五', '1', '', '-1', '', '1', '0', '-1', 'c78f91a936eb40cdbddcae050cdaadb7', 'af492c6817ab40359359d3073dcc64cb', '1', '2018-03-16 11:58:38', null, null);
INSERT INTO `wechat_activity_sign_set` VALUES ('0faa87c8581c482d9c8f739a120e278d', null, null, 'nickname', '\\u51cc\\u9752', '1', '', '-1', '', '9999', '0', '-1', 'c78f91a936eb40cdbddcae050cdaadb7', '8460ca29d2ac471ea0abbc9306e5d29c', '1', '2018-03-07 09:57:45', null, null);
INSERT INTO `wechat_activity_sign_set` VALUES ('172382f3f5624c63ba530960401755a9', '头像', '', 'headimgurl', '', '0', 'input', '-1', '-1', '10001', '1', '-1', '58448a4b2b914b57ab5fd772f2a3410c', null, '1', '2018-03-16 10:32:11', null, '微信头像');
INSERT INTO `wechat_activity_sign_set` VALUES ('17592b77929f4e52a9c21f847a7c7d2b', null, null, 'nickname', '\\u51cc\\u9752', '1', '', '-1', '', '9999', '0', '-1', 'c78f91a936eb40cdbddcae050cdaadb7', 'af492c6817ab40359359d3073dcc64cb', '1', '2018-03-16 11:58:38', null, null);
INSERT INTO `wechat_activity_sign_set` VALUES ('1fff8e46316748c194cfb1ac2cd072db', '姓名', '', 'name', '', '0', 'input', '1', '-1', '1', '-1', '1', 'c78f91a936eb40cdbddcae050cdaadb7', null, '1', '2018-03-16 11:53:10', null, '用户姓名');
INSERT INTO `wechat_activity_sign_set` VALUES ('26909f8fdf564060beaa16c534e5d689', null, null, 'name', '…', '1', '', '-1', '', '1', '0', '-1', 'c78f91a936eb40cdbddcae050cdaadb7', '15cf326b496c481aa0bcd3d23a660b6b', '1', '2018-03-07 11:38:14', null, null);
INSERT INTO `wechat_activity_sign_set` VALUES ('27c4a291894c477786ea0b640d9ff4b4', null, null, 'nickname', '\\u5c0f\\u4e94', '1', '', '-1', '', '9999', '0', '-1', 'c78f91a936eb40cdbddcae050cdaadb7', 'f601e5a3e356498b80de81d428d246cd', '1', '2018-03-16 12:01:30', null, null);
INSERT INTO `wechat_activity_sign_set` VALUES ('332e09e160f341fa991ed3793bb85e11', '头像', '', 'headimgurl', '', '0', 'input', '-1', '-1', '10001', '1', '-1', '770d65a5915f43ea9a31ad2594cbea3f', null, '1', '2018-03-16 11:26:16', null, '微信头像');
INSERT INTO `wechat_activity_sign_set` VALUES ('3773110fba354fa69ebc06975aedc546', null, null, 'name', '蓝卡', '1', '', '-1', '', '1', '0', '-1', '58448a4b2b914b57ab5fd772f2a3410c', '03396fc5949b4229836e1a1f22b9b490', '1', '2018-03-09 11:52:56', null, null);
INSERT INTO `wechat_activity_sign_set` VALUES ('3d4dad73622a4fcab38f75b11e4c1630', null, null, 'headimgurl', 'http://thirdwx.qlogo.cn/mmopen/2bZjHt0Y73kD2DdVtdN6xz0zvCxdeFPQUvLpHXGo6McF5H4PEVAiam3ghL0wQuYVMtWEo0Q636j5dicqXErvDaZHia1vXK6wibTC/132', '1', '', '-1', '', '10000', '0', '-1', 'c78f91a936eb40cdbddcae050cdaadb7', '8460ca29d2ac471ea0abbc9306e5d29c', '1', '2018-03-07 09:57:45', null, null);
INSERT INTO `wechat_activity_sign_set` VALUES ('4104934b05464221a093f8ac9f154a24', null, null, 'phone', '18781917461', '1', '', '-1', '', '2', '0', '-1', 'c78f91a936eb40cdbddcae050cdaadb7', 'af492c6817ab40359359d3073dcc64cb', '1', '2018-03-16 11:58:38', null, null);
INSERT INTO `wechat_activity_sign_set` VALUES ('41afb2f638c04172a7284217a0232e6e', null, null, 'phone', '18781917461', '1', '', '-1', '', '2', '0', '-1', 'c78f91a936eb40cdbddcae050cdaadb7', 'd087fa1dbb2a40a2bca508de861f54e7', '1', '2018-03-07 11:34:17', null, null);
INSERT INTO `wechat_activity_sign_set` VALUES ('45fdf21aaef44fec97893b2a659593f8', null, null, 'headimgurl', 'http://thirdwx.qlogo.cn/mmopen/kvq9gONdbpNpJhgTlBjQcEzHUvVDOOSVHpvANicDN7OZvapqDzAdIccddEp17OdrZqI8qoJl5T4fXKafWYh59lVIdKgujpROA/132', '1', '', '-1', '', '10000', '0', '-1', '58448a4b2b914b57ab5fd772f2a3410c', 'a1c7e8aca228490797ebbc533c3bdc3f', '1', '2018-03-09 11:51:15', null, null);
INSERT INTO `wechat_activity_sign_set` VALUES ('4c6bb68c87e345e7a787dff408f70818', null, null, 'nickname', '\\u51cc\\u9752', '1', '', '-1', '', '9999', '0', '-1', '58448a4b2b914b57ab5fd772f2a3410c', '9325ca840ade4147b96620ad2513e432', '1', '2018-03-09 11:49:06', null, null);
INSERT INTO `wechat_activity_sign_set` VALUES ('50dd4d351446450eb6dfe283f8b6042d', null, null, 'nickname', '\\u51cc\\u9752', '1', '', '-1', '', '9999', '0', '-1', '58448a4b2b914b57ab5fd772f2a3410c', '676bd74495464102ba25f4dbe5f28ac6', '1', '2018-03-09 08:13:45', null, null);
INSERT INTO `wechat_activity_sign_set` VALUES ('54dd538520a848d1a82f38c3261b95d0', null, null, 'headimgurl', '', '1', '', '-1', '', '10000', '0', '-1', '58448a4b2b914b57ab5fd772f2a3410c', '03396fc5949b4229836e1a1f22b9b490', '1', '2018-03-09 11:52:56', null, null);
INSERT INTO `wechat_activity_sign_set` VALUES ('5e46502786964c8985a9cd7adf9ece50', null, null, 'headimgurl', '', '1', '', '-1', '', '10000', '0', '-1', 'c78f91a936eb40cdbddcae050cdaadb7', '7f1bf398f6e142dea3da6994c984118c', '1', '2018-03-16 12:00:09', null, null);
INSERT INTO `wechat_activity_sign_set` VALUES ('5e710b0ea51f43ef983e0d91ed85578c', null, null, 'nickname', '\\u5c0f\\u4e94', '1', '', '-1', '', '9999', '0', '-1', '58448a4b2b914b57ab5fd772f2a3410c', 'a1c7e8aca228490797ebbc533c3bdc3f', '1', '2018-03-09 11:51:15', null, null);
INSERT INTO `wechat_activity_sign_set` VALUES ('5fcfeb03cf994a75967996fc268fa22e', null, null, 'headimgurl', 'http://thirdwx.qlogo.cn/mmopen/2bZjHt0Y73mWJrzIHxtE5BNEepeBlxg0EaeH1YtUnZytgtYl5BoFJ02C38iczj7oYm1W1ia7yibUPJicnClmibd6D4OtjTWMLLuoF/132', '1', '', '-1', '', '10000', '0', '-1', 'c78f91a936eb40cdbddcae050cdaadb7', 'd087fa1dbb2a40a2bca508de861f54e7', '1', '2018-03-07 11:34:17', null, null);
INSERT INTO `wechat_activity_sign_set` VALUES ('6184ff9dbf844378a7337dc7c7302f6b', '昵称', '', 'nickname', '', '0', 'input', '-1', '-1', '10000', '1', '-1', '58448a4b2b914b57ab5fd772f2a3410c', null, '1', '2018-03-16 10:32:11', null, '微信昵称');
INSERT INTO `wechat_activity_sign_set` VALUES ('627f7e4f714a47ad9c9449c3c9893c65', null, null, 'name', '许功斌', '1', '', '-1', '', '1', '0', '-1', '58448a4b2b914b57ab5fd772f2a3410c', '9325ca840ade4147b96620ad2513e432', '1', '2018-03-09 11:49:07', null, null);
INSERT INTO `wechat_activity_sign_set` VALUES ('68749010912e45d488ffa63473f51101', null, null, 'name', 'QQ', '1', '', '-1', '', '1', '0', '-1', 'c78f91a936eb40cdbddcae050cdaadb7', '7f1bf398f6e142dea3da6994c984118c', '1', '2018-03-16 12:00:09', null, null);
INSERT INTO `wechat_activity_sign_set` VALUES ('68ad6b5954144bafa64a9b9c7274eca3', null, null, 'nickname', '\\u897f\\u884c\\u7684\\u8fbe\\u897f', '1', '', '-1', '', '9999', '0', '-1', '58448a4b2b914b57ab5fd772f2a3410c', '03396fc5949b4229836e1a1f22b9b490', '1', '2018-03-09 11:52:56', null, null);
INSERT INTO `wechat_activity_sign_set` VALUES ('6c92462710264e6da3460973889b4192', null, null, 'nickname', null, '1', '', '-1', '', '9999', '0', '-1', '58448a4b2b914b57ab5fd772f2a3410c', '61164e706b5140cebc5723dc5c295f16', '1', '2018-03-08 14:18:53', null, null);
INSERT INTO `wechat_activity_sign_set` VALUES ('6d3b67542d864f70aa6bdc00e96e94a5', null, null, 'headimgurl', 'http://thirdwx.qlogo.cn/mmopen/2bZjHt0Y73kD2DdVtdN6xz0zvCxdeFPQUvLpHXGo6McF5H4PEVAiam3ghL0wQuYVMtWEo0Q636j5dicqXErvDaZHia1vXK6wibTC/132', '1', '', '-1', '', '10000', '0', '-1', 'c78f91a936eb40cdbddcae050cdaadb7', 'af492c6817ab40359359d3073dcc64cb', '1', '2018-03-16 11:58:38', null, null);
INSERT INTO `wechat_activity_sign_set` VALUES ('7673dc101d6c4171a6dfa3e6d6e87991', null, null, 'phone', '18311576225', '1', '', '-1', '', '2', '0', '-1', 'c78f91a936eb40cdbddcae050cdaadb7', '15cf326b496c481aa0bcd3d23a660b6b', '1', '2018-03-07 11:38:14', null, null);
INSERT INTO `wechat_activity_sign_set` VALUES ('7c9dbe965d694b4aba465f95ef185470', '电话', '', 'phone', '', '0', 'input', '1', 'phone', '2', '-1', '1', 'c78f91a936eb40cdbddcae050cdaadb7', null, '1', '2018-03-16 11:53:10', null, '用户姓名手机号码');
INSERT INTO `wechat_activity_sign_set` VALUES ('8016b867b2794aa5a125e28f13849df1', null, null, 'headimgurl', 'http://thirdwx.qlogo.cn/mmopen/Hn9cjAtpctS2Bk5wst4lcCCNrILvGsa22iafKX2WVqxtHpnic0l1BJm9kazjtXQeuGdXl72jFYQ7tFAc8cjX1jLic3fKQ6sxCUJ/132', '1', '', '-1', '', '10000', '0', '-1', 'c78f91a936eb40cdbddcae050cdaadb7', '56036b9641b741ff8cdd42c1496a9a12', '1', '2018-03-07 11:46:49', null, null);
INSERT INTO `wechat_activity_sign_set` VALUES ('8dfd3d09e30441a28bfaa8ac9fa39d34', null, null, 'phone', '17311076974', '1', '', '-1', '', '2', '0', '-1', 'c78f91a936eb40cdbddcae050cdaadb7', '56036b9641b741ff8cdd42c1496a9a12', '1', '2018-03-07 11:46:49', null, null);
INSERT INTO `wechat_activity_sign_set` VALUES ('93fe315923d74322a75d1c381117b135', '昵称', '', 'nickname', '', '0', 'input', '-1', '-1', '10000', '1', '-1', '770d65a5915f43ea9a31ad2594cbea3f', null, '1', '2018-03-16 11:26:16', null, '微信昵称');
INSERT INTO `wechat_activity_sign_set` VALUES ('976f45b2e6ce4ba087e5e8b08d79dc49', null, null, 'headimgurl', '', '1', '', '-1', '', '10000', '0', '-1', 'c78f91a936eb40cdbddcae050cdaadb7', '15cf326b496c481aa0bcd3d23a660b6b', '1', '2018-03-07 11:38:14', null, null);
INSERT INTO `wechat_activity_sign_set` VALUES ('9a9011f65f3b48f9bf2786a8bb18c1e8', null, null, 'phone', '18311576221', '1', '', '-1', '', '2', '0', '-1', '58448a4b2b914b57ab5fd772f2a3410c', '03396fc5949b4229836e1a1f22b9b490', '1', '2018-03-09 11:52:56', null, null);
INSERT INTO `wechat_activity_sign_set` VALUES ('9dec7443bae84da29701c0dc544b5bf5', null, null, 'name', '小五', '1', '', '-1', '', '1', '0', '-1', '58448a4b2b914b57ab5fd772f2a3410c', 'a1c7e8aca228490797ebbc533c3bdc3f', '1', '2018-03-09 11:51:15', null, null);
INSERT INTO `wechat_activity_sign_set` VALUES ('a96fb09330304f6f8a750401cd2bd7a0', '头像', '', 'headimgurl', '', '0', 'input', '-1', '-1', '10001', '1', '-1', 'c78f91a936eb40cdbddcae050cdaadb7', null, '1', '2018-03-16 11:53:10', null, '微信头像');
INSERT INTO `wechat_activity_sign_set` VALUES ('aad273ea4d2748639f1e347c7b1f536b', null, null, 'phone', '18781917461', '1', '', '-1', '', '2', '0', '-1', '58448a4b2b914b57ab5fd772f2a3410c', '9325ca840ade4147b96620ad2513e432', '1', '2018-03-09 11:49:07', null, null);
INSERT INTO `wechat_activity_sign_set` VALUES ('b0f7a179ebbf428d9f08a66018fa6df0', null, null, 'nickname', '\\u5c0f\\u4e94', '1', '', '-1', '', '9999', '0', '-1', 'c78f91a936eb40cdbddcae050cdaadb7', 'd087fa1dbb2a40a2bca508de861f54e7', '1', '2018-03-07 11:34:17', null, null);
INSERT INTO `wechat_activity_sign_set` VALUES ('b30f798dc2b240239533c4d80a6b90e3', '手机', '', 'phone', '', '0', 'input', '-1', 'phone', '2', '-1', '1', '58448a4b2b914b57ab5fd772f2a3410c', null, '1', '2018-03-16 10:32:11', null, '手机');
INSERT INTO `wechat_activity_sign_set` VALUES ('c23651d1011e4affa6461064c8845309', null, null, 'name', '小五', '1', '', '-1', '', '1', '0', '-1', 'c78f91a936eb40cdbddcae050cdaadb7', 'd087fa1dbb2a40a2bca508de861f54e7', '1', '2018-03-07 11:34:17', null, null);
INSERT INTO `wechat_activity_sign_set` VALUES ('c9feadb81fa247a4bb95ea34fc9d5747', null, null, 'headimgurl', null, '1', '', '-1', '', '10000', '0', '-1', '58448a4b2b914b57ab5fd772f2a3410c', '61164e706b5140cebc5723dc5c295f16', '1', '2018-03-08 14:18:53', null, null);
INSERT INTO `wechat_activity_sign_set` VALUES ('cba3c4f08d2340d1963e3eb709cb523f', null, null, 'phone', '18781917462', '1', '', '-1', '', '2', '0', '-1', 'c78f91a936eb40cdbddcae050cdaadb7', '7f1bf398f6e142dea3da6994c984118c', '1', '2018-03-16 12:00:09', null, null);
INSERT INTO `wechat_activity_sign_set` VALUES ('ccdf3ff349cf4108ba15948c88d706ac', null, null, 'headimgurl', 'http://thirdwx.qlogo.cn/mmopen/2bZjHt0Y73mWJrzIHxtE5BNEepeBlxg0EaeH1YtUnZytgtYl5BoFJ02C38iczj7oYm1W1ia7yibUPJicnClmibd6D4OtjTWMLLuoF/132', '1', '', '-1', '', '10000', '0', '-1', 'c78f91a936eb40cdbddcae050cdaadb7', 'f601e5a3e356498b80de81d428d246cd', '1', '2018-03-16 12:01:30', null, null);
INSERT INTO `wechat_activity_sign_set` VALUES ('d118d1ac212d44ee9da3311f3a0e226c', null, null, 'nickname', '\\u897f\\u884c\\u7684\\u8fbe\\u897f', '1', '', '-1', '', '9999', '0', '-1', 'c78f91a936eb40cdbddcae050cdaadb7', '15cf326b496c481aa0bcd3d23a660b6b', '1', '2018-03-07 11:38:14', null, null);
INSERT INTO `wechat_activity_sign_set` VALUES ('d87b724241ea4ed5b598d2a4f264d15d', null, null, 'headimgurl', 'http://thirdwx.qlogo.cn/mmopen/aAiaeB3mNoDjgnCEES7yP57tljSp8yoW9iczdiceibqb7333UsNHgbjFwmicIeYYcY4g2YX4HUTbzVBJLfkKic7v4ibIoiakqxX4nuU0/132', '1', '', '-1', '', '10000', '0', '-1', '58448a4b2b914b57ab5fd772f2a3410c', '9325ca840ade4147b96620ad2513e432', '1', '2018-03-09 11:49:06', null, null);
INSERT INTO `wechat_activity_sign_set` VALUES ('e387264216d84a1c9b0a454894509b7e', null, null, 'phone', '18781917461', '1', '', '-1', '', '1', '0', '-1', '58448a4b2b914b57ab5fd772f2a3410c', '61164e706b5140cebc5723dc5c295f16', '1', '2018-03-08 14:18:53', null, null);
INSERT INTO `wechat_activity_sign_set` VALUES ('e4aae07864cb4499a4e112117d35c69d', null, null, 'name', '小五', '1', '', '-1', '', '1', '0', '-1', 'c78f91a936eb40cdbddcae050cdaadb7', 'f601e5a3e356498b80de81d428d246cd', '1', '2018-03-16 12:01:30', null, null);
INSERT INTO `wechat_activity_sign_set` VALUES ('e97547f2bcbd4a0cafed1facf52caa67', null, null, 'nickname', '\\u897f\\u884c\\u7684\\u8fbe\\u897f', '1', '', '-1', '', '9999', '0', '-1', 'c78f91a936eb40cdbddcae050cdaadb7', '7f1bf398f6e142dea3da6994c984118c', '1', '2018-03-16 12:00:09', null, null);
INSERT INTO `wechat_activity_sign_set` VALUES ('ed45ded3f7a749049b3ddc3b91a452bc', null, null, 'phone', '18781917461', '1', '', '-1', '', '2', '0', '-1', 'c78f91a936eb40cdbddcae050cdaadb7', '8460ca29d2ac471ea0abbc9306e5d29c', '1', '2018-03-07 09:57:45', null, null);
INSERT INTO `wechat_activity_sign_set` VALUES ('f16938bf39aa406f83f1330cd0245ccf', '姓名', '', 'name', '', '0', 'input', '-1', '-1', '1', '-1', '1', '58448a4b2b914b57ab5fd772f2a3410c', null, '1', '2018-03-16 10:32:11', null, '姓名');
INSERT INTO `wechat_activity_sign_set` VALUES ('f38f9b16467b4f619312e76075890e0c', null, null, 'headimgurl', 'http://thirdwx.qlogo.cn/mmopen/aAiaeB3mNoDjgnCEES7yP57tljSp8yoW9iczdiceibqb7333UsNHgbjFwmicIeYYcY4g2YX4HUTbzVBJLfkKic7v4ibIoiakqxX4nuU0/132', '1', '', '-1', '', '10000', '0', '-1', '58448a4b2b914b57ab5fd772f2a3410c', '676bd74495464102ba25f4dbe5f28ac6', '1', '2018-03-09 08:13:45', null, null);
INSERT INTO `wechat_activity_sign_set` VALUES ('f471accb14414cac8d3ee713bac15de5', '昵称', '', 'nickname', '', '0', 'input', '-1', '-1', '10000', '1', '-1', 'c78f91a936eb40cdbddcae050cdaadb7', null, '1', '2018-03-16 11:53:10', null, '微信昵称');
INSERT INTO `wechat_activity_sign_set` VALUES ('fd0a16043c0044fb9b6ee3396c16d4fb', null, null, 'name', '锟', '1', '', '-1', '', '1', '0', '-1', 'c78f91a936eb40cdbddcae050cdaadb7', '56036b9641b741ff8cdd42c1496a9a12', '1', '2018-03-07 11:46:49', null, null);

-- ----------------------------
-- Table structure for `wechat_activity_test_questions`
-- ----------------------------
DROP TABLE IF EXISTS `wechat_activity_test_questions`;
CREATE TABLE `wechat_activity_test_questions` (
  `ID` varchar(100) NOT NULL COMMENT 'id',
  `TITLE` varchar(255) DEFAULT NULL COMMENT '问答题标题。',
  `SORT` int(11) DEFAULT '1' COMMENT '排序',
  `DESC_M` varchar(255) DEFAULT NULL COMMENT 'descM 问答题描述。',
  `STATUS` int(11) DEFAULT '-1' COMMENT 'status 状态。-1冻结的活动 ，1进行的活动。',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT 'createTime 创建时间。',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT 'updateTime 更新时间。',
  `ANSWER_ID` varchar(255) DEFAULT NULL COMMENT 'answerId 答案id。',
  `WECHAT_ACTIVITY_ID` varchar(255) DEFAULT NULL COMMENT 'wechatActivityId 微信活动的id。确定报的那个活动。',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wechat_activity_test_questions
-- ----------------------------
INSERT INTO `wechat_activity_test_questions` VALUES ('196a94d8-beb5-449e-9082-9942c8f0ca8c', '月球绕着（）公转？', '1', '天文题', '0', '2018-03-05 13:54:31', '2018-03-09 11:40:26', 'A.地球', null);
INSERT INTO `wechat_activity_test_questions` VALUES ('1af85b12-e2e5-4ae9-b489-1b206f33796f', '1', '1', '11', '0', '2018-03-16 11:27:11', '2018-03-16 11:27:23', '1', null);
INSERT INTO `wechat_activity_test_questions` VALUES ('f3cfa535-bed4-4fdc-8699-a822a0cb8200', '卡卡是谁', '2', '', '0', '2018-03-05 15:25:43', '2018-03-05 15:33:32', '足球天才', null);

-- ----------------------------
-- Table structure for `wechat_activity_winning`
-- ----------------------------
DROP TABLE IF EXISTS `wechat_activity_winning`;
CREATE TABLE `wechat_activity_winning` (
  `ID` varchar(100) NOT NULL COMMENT 'id',
  `DESC_M` varchar(255) DEFAULT NULL COMMENT 'descM 活动描述。',
  `CODE` varchar(255) DEFAULT NULL COMMENT 'code 核销码。',
  `WECHAT_ACTIVITY_ID` varchar(255) DEFAULT NULL COMMENT 'wechatActivityId 微信活动的id。确定报的那个活动。',
  `WECHAT_ACTIVITY_SIGN_ID` varchar(50) DEFAULT NULL COMMENT 'wechatActivitySignId 活动报名id。如果为非授权登录方式报名，该项能确定报名者的信息。',
  `USER_ID` varchar(255) DEFAULT NULL COMMENT 'userId 活动报名用户id。在授权登录开启时才会关联该id，用来确定登录状态下报名者的userId。',
  `STATUS` int(11) DEFAULT '0' COMMENT 'status 核销状态。0 未核销 ，1已核销。',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT 'createTime 创建时间。',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT 'updateTime 更新时间。',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wechat_activity_winning
-- ----------------------------
INSERT INTO `wechat_activity_winning` VALUES ('a6cb444b7f51477797130002de9f8f7e', '测试活动活动，包含以下奖品：时光之旅门票 * 1', '082475', '58448a4b2b914b57ab5fd772f2a3410c', '9325ca840ade4147b96620ad2513e432', '7d3779ed-751f-44ae-a3e0-015d11223fb3', '0', '2018-03-19 17:29:57', null);

-- ----------------------------
-- Table structure for `wechat_material`
-- ----------------------------
DROP TABLE IF EXISTS `wechat_material`;
CREATE TABLE `wechat_material` (
  `ID` varchar(100) NOT NULL COMMENT '素材主键ID',
  `DESC_M` varchar(300) DEFAULT NULL COMMENT '素材描述',
  `TYPESE` varchar(10) DEFAULT NULL COMMENT '1图片（image）2语音（voice）3视频（video）4缩略图（thumb）',
  `URL` varchar(255) DEFAULT NULL COMMENT '素材在服务器的url，上传成功后返回该URL路径',
  `MATERIAL_ID` varchar(100) DEFAULT '' COMMENT '上传微信服务器返回的ID',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  `STATUS` varchar(2) DEFAULT NULL COMMENT '-1 已删除 1未删除',
  `MENU_ID` varchar(10) DEFAULT NULL COMMENT '系统菜单ID',
  `PARENT_MENU_ID` varchar(10) DEFAULT NULL COMMENT 'parentMenuId绑定公众号的Menu_ID，确定该关键字的所属公众号',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wechat_material
-- ----------------------------
INSERT INTO `wechat_material` VALUES ('6afab38e-0020-44c7-9c71-5d6362020cac', '测试图片素材', 'image', '9735a66581b7476eb82b6a5fa98e4f47', 'prtCi1zJCjl6jSVVmt7GOWschT4P73hs6jGD7IDHPzY', '2018-03-09 15:47:34', '2018-03-14 13:22:48', '1', '128', '125');
INSERT INTO `wechat_material` VALUES ('ddd02ea2-f74c-41a5-8ef9-3c65eeff7571', '11', 'image', 'ef762798b22a4c84ac94a88f0b4abdbb', 'file not find', '2018-03-09 14:20:53', null, '-1', '128', '125');

-- ----------------------------
-- Table structure for `wechat_menu`
-- ----------------------------
DROP TABLE IF EXISTS `wechat_menu`;
CREATE TABLE `wechat_menu` (
  `ID` varchar(255) NOT NULL COMMENT ' 主键ID',
  `PARENT_ID` varchar(255) DEFAULT NULL COMMENT '父菜单ID',
  `MENU_NAME` varchar(255) DEFAULT NULL COMMENT ' 菜单名称',
  `MENU_TYPE` varchar(255) DEFAULT NULL COMMENT '1:ClickButton(按钮型菜单)  2:CompleteButton(复合型菜单)  3:ViewButton(视图型菜单)',
  `MENU_KEY` varchar(255) DEFAULT NULL COMMENT '点击按钮的key',
  `MENU_URL` varchar(255) DEFAULT NULL COMMENT '视图菜单链接',
  `MENU_FIRST` varchar(255) DEFAULT NULL COMMENT '一级菜单 0表示不是一级',
  `MENU_SECOND` varchar(255) DEFAULT NULL COMMENT '二级菜单 0表示不是二级菜单',
  `MENU_DESCRIBE` varchar(255) DEFAULT NULL COMMENT '菜单描述',
  `MENU_SORT` varchar(255) DEFAULT NULL COMMENT '排序',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT ' 创建时间',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT ' 更新时间',
  `STATUS` varchar(255) DEFAULT NULL COMMENT '-1 已删除 1未删除',
  `MENU_ID` varchar(255) DEFAULT NULL COMMENT '系统菜单ID(这个是关联管理后台那个菜单的)',
  `PARENT_MENU_ID` varchar(255) DEFAULT NULL COMMENT '系统父级菜单ID',
  PRIMARY KEY (`ID`),
  KEY `ID` (`ID`) USING BTREE,
  KEY `PARENT_ID` (`PARENT_ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='微信菜单管理';

-- ----------------------------
-- Records of wechat_menu
-- ----------------------------
INSERT INTO `wechat_menu` VALUES ('049e1ad6-d51c-4f56-9361-b1f00c883d89', null, '文章', 'CompleteButton', '', '', null, null, '', '2', '2018-03-21 16:27:52', null, '1', '112', '107');
INSERT INTO `wechat_menu` VALUES ('13ce0149-521f-4285-af36-e07ebeb5bf07', '049e1ad6-d51c-4f56-9361-b1f00c883d89', 'baidu2', 'ViewButton', '', 'https://www.baidu.com/', null, null, '', '2', '2018-03-30 13:07:46', '2018-03-30 13:15:35', '1', '', null);
INSERT INTO `wechat_menu` VALUES ('24ba3052-af60-44e6-9913-d5d290e67dfa', null, '主菜单', 'CompleteButton', '', '', null, null, '', '1', '2018-03-21 16:27:43', null, '1', '112', '107');
INSERT INTO `wechat_menu` VALUES ('48d79804-c0fc-4199-b0c0-4bae8afa4517', '049e1ad6-d51c-4f56-9361-b1f00c883d89', '百度', 'ViewButton', '', 'https://www.baidu.com/', null, null, '', '1', '2018-03-21 16:28:29', '2018-03-30 13:15:28', '1', '', null);
INSERT INTO `wechat_menu` VALUES ('649df34b-aaf6-4c75-b60b-33471795bb5b', '049e1ad6-d51c-4f56-9361-b1f00c883d89', 'baidu3', 'ViewButton', '', 'https://www.baidu.com/', null, null, '', '3', '2018-03-30 13:08:42', '2018-03-30 13:15:46', '1', '', null);
INSERT INTO `wechat_menu` VALUES ('fa48b7ca-663e-4fed-9028-eca6371bc1f7', '24ba3052-af60-44e6-9913-d5d290e67dfa', '达西', 'ViewButton', '', 'http://www.daxi51.com/ssm/main.htm', null, null, '', '1', '2018-03-30 13:10:00', '2018-03-30 13:10:08', '1', '', null);
INSERT INTO `wechat_menu` VALUES ('fb2cbb0a-59a4-4033-ae5c-25b5da5798e8', '24ba3052-af60-44e6-9913-d5d290e67dfa', '图片PIA', 'ViewButton', '', 'http://www.daxi51.com/ssm_file/api', null, null, '', '2', '2018-03-21 16:28:55', '2018-03-30 13:10:32', '1', '', null);
