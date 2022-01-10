/*
Navicat MySQL Data Transfer

Source Server         : root
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : zhwl_demo

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2022-01-10 17:07:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for physical_user
-- ----------------------------
DROP TABLE IF EXISTS `physical_user`;
CREATE TABLE `physical_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户标识',
  `unionid` varchar(64) NOT NULL DEFAULT '' COMMENT '用户唯一标识',
  `username` varchar(11) NOT NULL DEFAULT '' COMMENT '用户名',
  `created_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modified_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uni_username` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8mb4 COMMENT='用户信息';

-- ----------------------------
-- Records of physical_user
-- ----------------------------
INSERT INTO `physical_user` VALUES ('32', 'cf77f67d2ae542bc970800a423d0b775', '15666959333', '2021-11-29 10:23:05', '2021-11-29 11:18:17');
INSERT INTO `physical_user` VALUES ('33', '06aad77bc32a40288b1d42c9b9a39d18', '18806351190', '2021-11-29 10:30:17', '2021-12-04 06:13:06');
INSERT INTO `physical_user` VALUES ('34', '15b60b51c8704852a90222c00fb4974a', '15345491855', '2021-11-29 10:34:07', '2021-11-29 10:42:16');
INSERT INTO `physical_user` VALUES ('35', '1c82a324c89b4eb19358cb9cdcd19f5f', '15553675255', '2021-11-29 10:44:18', '2021-11-30 15:59:25');
INSERT INTO `physical_user` VALUES ('36', '376144ec29af4e598ab312374d475254', '13161158060', '2021-11-29 11:03:12', '2021-12-22 17:25:15');
INSERT INTO `physical_user` VALUES ('37', '91220d5c3e754b57814d2ba64f971661', '15689938905', '2021-11-29 11:10:46', '2021-11-29 11:10:46');
INSERT INTO `physical_user` VALUES ('38', '44b5b11fb56d4dfdb8bc9e4612c3ad56', '19806080088', '2021-11-29 11:12:00', '2021-12-04 09:31:34');
INSERT INTO `physical_user` VALUES ('39', '20217f76a5864ee69f7f7986bba37484', '18063560003', '2021-11-29 11:15:39', '2021-11-29 11:17:35');
INSERT INTO `physical_user` VALUES ('40', '2354c62bfe11469ea034a3ea2efd32fe', '13375608068', '2021-11-29 11:20:04', '2021-11-29 11:23:05');
INSERT INTO `physical_user` VALUES ('41', '51b37f47962e40f3895ad09df715b6e1', '18864887851', '2021-11-29 11:27:03', '2021-11-29 11:30:47');
INSERT INTO `physical_user` VALUES ('42', '17cb95d547ce42c5b9713a7a687296b4', '18865279727', '2021-11-29 11:27:18', '2021-11-29 11:29:19');
INSERT INTO `physical_user` VALUES ('43', '256c0cab584f49e7af312cad8b19bd46', '13656386967', '2021-11-29 11:32:12', '2021-11-29 11:34:05');
INSERT INTO `physical_user` VALUES ('44', '75157ed8b7174f9db2bded9397d9b8c2', '13245345369', '2021-11-29 11:32:27', '2021-11-29 11:36:21');
INSERT INTO `physical_user` VALUES ('45', 'e14e32707eb14567b246ec5c4b15b995', '15020683911', '2021-11-29 11:32:34', '2021-11-29 11:32:34');
INSERT INTO `physical_user` VALUES ('46', 'b240d4311d80468191770bd252142b03', '17763535708', '2021-11-29 11:32:58', '2021-11-29 11:32:58');
INSERT INTO `physical_user` VALUES ('47', 'd1138e8e3e16497eb8576e0bfb5e6a8c', '15562867239', '2021-11-29 11:33:00', '2021-11-29 11:33:00');
INSERT INTO `physical_user` VALUES ('48', '59efa05ad1e14594a32509b3084ce6db', '18365952121', '2021-11-29 11:35:39', '2021-11-29 11:35:39');
INSERT INTO `physical_user` VALUES ('49', '249413ece42a4e0ab75a475a8d3c0875', '15263515444', '2021-11-29 11:36:33', '2021-11-29 11:36:33');
INSERT INTO `physical_user` VALUES ('50', 'a804f880d2364be6afcaf3d703aa460a', '13506353057', '2021-11-29 11:39:55', '2021-12-04 23:40:26');
INSERT INTO `physical_user` VALUES ('51', '75288a9f8eb94b9d9056ee812598b3b0', '18365786139', '2021-11-29 11:54:50', '2021-11-29 11:59:55');
INSERT INTO `physical_user` VALUES ('52', '214baddc48124329b49f5883d96b34dd', '15178581757', '2021-11-29 12:02:40', '2021-11-29 12:02:40');
INSERT INTO `physical_user` VALUES ('53', '245096af9a4f4061b572fa1c9a4cf162', '13906359248', '2021-11-29 12:02:54', '2021-12-05 14:38:00');
INSERT INTO `physical_user` VALUES ('54', '7a5f5186c2184ed4ba352cf814e10d28', '15964797062', '2021-11-29 12:03:22', '2021-11-29 13:07:25');
INSERT INTO `physical_user` VALUES ('55', '02f61c5972104acdbada3205bf803f52', '15314186026', '2021-11-29 12:04:15', '2021-11-29 12:23:11');
INSERT INTO `physical_user` VALUES ('56', '8606c38bc772410db0d105b33aaa0ae8', '18837182535', '2021-11-29 12:04:35', '2021-11-29 12:11:40');
INSERT INTO `physical_user` VALUES ('57', 'd015de81cfb14f9994bd1ca045100eb4', '13561230421', '2021-11-29 12:05:11', '2021-11-29 12:05:11');
INSERT INTO `physical_user` VALUES ('58', 'd8de2e36c276449e98e5a906437c0b42', '19174228557', '2021-11-29 12:05:30', '2021-11-29 12:05:30');
INSERT INTO `physical_user` VALUES ('59', '565363bee4c14ddebc7eab132f0fffee', '13906358173', '2021-11-29 12:06:04', '2021-11-29 12:35:43');
INSERT INTO `physical_user` VALUES ('60', '571b3727d9e94255939075f724af29f9', '15553293055', '2021-11-29 12:06:21', '2021-11-29 19:56:50');
INSERT INTO `physical_user` VALUES ('61', '7afb39abbb764238aaab5eec210aa391', '15910199955', '2021-11-29 12:07:45', '2021-11-29 16:20:52');
INSERT INTO `physical_user` VALUES ('62', 'f40a3c853d21471583a41755b56db243', '18865115188', '2021-11-29 12:09:18', '2021-11-29 15:33:39');
INSERT INTO `physical_user` VALUES ('63', '4e31d257571249c1bc1a3ced1e392da0', '15263581186', '2021-11-29 12:09:48', '2021-11-29 12:15:24');
INSERT INTO `physical_user` VALUES ('64', '9bf8c8d71377432db9f581d7abbd7000', '17763535707', '2021-11-29 12:10:25', '2021-11-29 12:10:25');
INSERT INTO `physical_user` VALUES ('65', 'd9619f3f7030491b86e819e83452d975', '18063515118', '2021-11-29 12:10:25', '2021-11-29 12:10:25');
INSERT INTO `physical_user` VALUES ('66', 'd89ca42cc7b74daf8ef4d1792a7a01a0', '13784943969', '2021-11-29 12:11:02', '2021-11-29 12:19:05');
INSERT INTO `physical_user` VALUES ('67', '95e78bde7aea4621ade4e71321334101', '15506355995', '2021-11-29 12:11:10', '2021-11-29 12:11:10');
INSERT INTO `physical_user` VALUES ('68', '4b4a855f322643119726bb9f7f6a677e', '18363506000', '2021-11-29 12:13:28', '2021-11-29 13:00:16');
INSERT INTO `physical_user` VALUES ('69', '4796e0acbc254a6e88d36ff7a11fc110', '15163531616', '2021-11-29 12:15:44', '2021-11-29 12:31:32');
INSERT INTO `physical_user` VALUES ('70', '989d93f1e72c4a929fbbb77d9a436ee7', '13869558111', '2021-11-29 12:16:56', '2021-11-29 12:16:56');
INSERT INTO `physical_user` VALUES ('71', 'e322bffc2e66402aaf4ef2e5c50c383e', '13963511967', '2021-11-29 12:16:58', '2021-11-29 12:16:58');
INSERT INTO `physical_user` VALUES ('72', '7a981628a6694c4a91902551d20422d0', '15206649076', '2021-11-29 12:17:17', '2021-11-29 12:24:11');
INSERT INTO `physical_user` VALUES ('73', 'a74577453c7d41acaff631ab524e0be7', '15314168762', '2021-11-29 12:17:23', '2021-11-29 12:17:23');
INSERT INTO `physical_user` VALUES ('74', '014f606409d943a99b0e4369dd916827', '15315782951', '2021-11-29 12:17:31', '2021-11-29 12:44:22');
INSERT INTO `physical_user` VALUES ('75', '25c9e8d7c2c34c91afd08c4ec7abcf07', '13814464072', '2021-11-29 12:17:53', '2021-11-30 16:31:41');
INSERT INTO `physical_user` VALUES ('76', '0cdbb81e724e486ba655b73315d3635e', '13589731232', '2021-11-29 12:18:12', '2021-11-29 12:27:21');
INSERT INTO `physical_user` VALUES ('77', '78a54d66f8314d55adb8761e116b55e8', '13561244123', '2021-11-29 12:18:58', '2021-11-29 14:42:45');
INSERT INTO `physical_user` VALUES ('78', '448ea95a93e6417da581d7a53ea1b544', '15266888837', '2021-11-29 12:21:16', '2021-11-29 12:27:54');
INSERT INTO `physical_user` VALUES ('79', '962a04f5164f4a2db06137c8812f645e', '13969510112', '2021-11-29 12:21:27', '2021-11-29 14:28:03');
INSERT INTO `physical_user` VALUES ('80', 'f81e7f107e9940f0aa889a27358c49ba', '15553292725', '2021-11-29 12:21:36', '2021-11-29 12:21:36');
INSERT INTO `physical_user` VALUES ('81', '5266c1cdd7724adb994420db5c03c23d', '15066431343', '2021-11-29 12:23:11', '2021-11-29 12:32:29');
INSERT INTO `physical_user` VALUES ('82', '2c5bf92bf9c94cc595f4c1b5f019413b', '18365936688', '2021-11-29 12:26:31', '2021-11-29 12:26:31');
INSERT INTO `physical_user` VALUES ('83', 'dddf854884ee42f094cfd6b7e16f71dc', '17763537093', '2021-11-29 12:27:43', '2021-11-29 12:45:22');
INSERT INTO `physical_user` VALUES ('84', '59cbbab0c2aa49b1b753ac91f3268836', '13661510846', '2021-11-29 12:27:55', '2021-11-29 22:55:19');
INSERT INTO `physical_user` VALUES ('85', '040bac27c6e043a4959e010c34be3747', '15865756512', '2021-11-29 12:28:44', '2021-11-29 12:28:44');
INSERT INTO `physical_user` VALUES ('86', 'eea9ad7a481049b1a016bf67a0b9e4f6', '15954370690', '2021-11-29 12:29:46', '2021-11-29 12:29:46');
INSERT INTO `physical_user` VALUES ('87', '940a580e22b2486f83a1fa7e9e628b6e', '18564419357', '2021-11-29 12:29:47', '2021-11-29 12:42:22');
INSERT INTO `physical_user` VALUES ('88', 'a93017d2922b4f73b07d44caf2e8fd0d', '18365869949', '2021-11-29 12:30:26', '2021-11-29 12:30:26');
INSERT INTO `physical_user` VALUES ('89', '5531c3ec222640bdbd5947c374186138', '13465754770', '2021-11-29 12:32:09', '2021-11-29 12:32:09');
INSERT INTO `physical_user` VALUES ('90', '340caa0a114140829f1bfd75b56f7bd3', '18863547997', '2021-11-29 12:32:15', '2021-11-29 12:32:15');
INSERT INTO `physical_user` VALUES ('91', '85306feb88f54ac5bf8105c05118afca', '13793491567', '2021-11-29 12:32:22', '2021-11-29 12:40:17');
INSERT INTO `physical_user` VALUES ('92', 'fd344c395b12474d91adcb13a23d209d', '13734494111', '2021-11-29 12:35:31', '2021-11-29 12:35:31');
INSERT INTO `physical_user` VALUES ('93', 'd655f611a2cf4dfdbbd0df00803b5459', '18172386331', '2021-11-29 12:35:53', '2021-11-29 12:35:53');
INSERT INTO `physical_user` VALUES ('94', '38f0a93d7f2543258bc06bd8e82d86cb', '15506448682', '2021-11-29 12:36:16', '2021-11-29 12:44:43');
INSERT INTO `physical_user` VALUES ('95', '8dfc71c6725e4736b3b3cef603f88c65', '18854124544', '2021-11-29 12:36:51', '2021-12-04 11:23:08');
INSERT INTO `physical_user` VALUES ('96', 'cb96def7a6784e03938749e2dc6b14ca', '18663537099', '2021-11-29 12:37:09', '2021-11-29 20:07:27');
INSERT INTO `physical_user` VALUES ('97', 'a0269c077a834beb8b89da93ec6dc3f3', '18063553301', '2021-11-29 12:37:14', '2021-11-29 12:37:14');
INSERT INTO `physical_user` VALUES ('98', 'ffb7454edd054515985073ade79d9223', '17686617598', '2021-11-29 12:37:21', '2021-11-29 12:37:21');
INSERT INTO `physical_user` VALUES ('99', '0643537fd64a466b9d2d0521b67295e8', '19534338102', '2021-11-29 12:40:42', '2021-11-29 12:40:42');
INSERT INTO `physical_user` VALUES ('100', 'edb9544855de4f9da547b5dcd0f16b6f', '15735514467', '2021-11-29 12:40:45', '2021-11-29 12:40:45');
INSERT INTO `physical_user` VALUES ('101', 'e56ffb40671b4b3585b6ff8a49e7c796', '15553475053', '2021-11-29 12:41:10', '2021-11-29 12:41:10');
INSERT INTO `physical_user` VALUES ('102', '9cf59e6645ed4a65ad90b615912feee6', '13676380020', '2021-11-29 12:41:21', '2021-11-29 12:41:21');
INSERT INTO `physical_user` VALUES ('103', '579dd555840e449097a0a96ed54988a6', '13005928601', '2021-11-29 12:42:16', '2021-11-29 13:41:05');
INSERT INTO `physical_user` VALUES ('104', 'b951d2799fb340c1adbd09a59e880047', '15894332673', '2021-11-29 12:42:47', '2021-11-29 13:57:53');
INSERT INTO `physical_user` VALUES ('105', '5757e991d64842d5bcd4888be3485717', '18806358320', '2021-11-29 12:43:48', '2021-11-29 12:43:48');
INSERT INTO `physical_user` VALUES ('106', '62f89a40f772468cbd1b43f098073f47', '15095059753', '2021-11-29 12:44:25', '2021-11-29 12:44:25');
INSERT INTO `physical_user` VALUES ('107', '888f9e9a6c6d4184a29fb206c875140a', '18363561109', '2021-11-29 12:46:27', '2021-11-29 12:51:26');
INSERT INTO `physical_user` VALUES ('108', 'f17eb7f5bf6a46968527ecfdcc365fc9', '13892509525', '2021-11-29 12:46:38', '2021-11-29 12:46:38');
INSERT INTO `physical_user` VALUES ('109', '0b3f1e92239a4cb3ac785155c27d60c7', '18863566099', '2021-11-29 12:46:59', '2021-11-29 12:46:59');
INSERT INTO `physical_user` VALUES ('110', '44ca44b3b63f40608b46c77d4f44b59a', '15314168859', '2021-11-29 12:47:36', '2021-11-29 12:47:36');
INSERT INTO `physical_user` VALUES ('111', 'f070b6895ffd4a5db1b1a7a2b050da93', '15552110407', '2021-11-29 12:47:40', '2021-11-29 12:47:40');
INSERT INTO `physical_user` VALUES ('112', 'bc00672baf3947d1a10504fa9e4d05b4', '13375615551', '2021-11-29 12:48:22', '2021-12-02 15:59:10');
INSERT INTO `physical_user` VALUES ('113', 'e108608a6f2c4cbf806be0d7cb78e855', '13883758917', '2021-11-29 12:50:18', '2021-12-01 17:04:00');
INSERT INTO `physical_user` VALUES ('114', '9b1584ab89954c61be0c15c8172cc777', '13869543546', '2021-11-29 12:50:36', '2021-11-29 12:50:36');
INSERT INTO `physical_user` VALUES ('115', 'b9fe00a832a24571b349579ba385ddca', '13963590868', '2021-11-29 12:51:08', '2021-12-03 19:55:43');
INSERT INTO `physical_user` VALUES ('116', '180afaf1549847779be1b474190e4c44', '15314177177', '2021-11-29 12:51:36', '2021-11-29 12:58:49');
INSERT INTO `physical_user` VALUES ('117', '438223f711f54f78831446b88dc8a277', '15966228989', '2021-11-29 12:52:30', '2021-11-29 12:52:30');
INSERT INTO `physical_user` VALUES ('118', 'f63b38398cb14e6f8c8a7258e2e510da', '13891090986', '2021-11-29 12:55:15', '2021-11-29 12:55:15');
INSERT INTO `physical_user` VALUES ('119', '6f9724e2ee8043609a9bf1673c69f9df', '15206542223', '2021-11-29 12:58:40', '2021-11-29 12:58:40');
INSERT INTO `physical_user` VALUES ('120', '51624a7e90714509b453958f043c9254', '15216356821', '2021-11-29 12:59:09', '2021-11-29 12:59:09');
INSERT INTO `physical_user` VALUES ('121', '534365f6fec04fffba16256e32649e99', '13064062233', '2021-11-29 12:59:33', '2021-11-29 13:03:23');
INSERT INTO `physical_user` VALUES ('122', 'e96e0c6ec9614cc0a36cb6843fee6189', '15098411119', '2021-11-29 13:00:06', '2021-11-29 13:00:06');
INSERT INTO `physical_user` VALUES ('123', 'edae53273d984c329316f6fa9ee660b1', '18663019387', '2021-11-29 13:00:17', '2021-11-29 13:00:17');
INSERT INTO `physical_user` VALUES ('124', 'bf4c72cf048f4038a96e652985725053', '13121359656', '2021-11-29 13:00:25', '2021-11-29 13:00:25');
INSERT INTO `physical_user` VALUES ('125', 'cf96cfc6ae384a6e8536cae8541ed7c5', '15106354635', '2021-11-29 13:01:08', '2021-11-29 13:17:20');
INSERT INTO `physical_user` VALUES ('126', '6d7387c2422a479599a3df1d964d2381', '15066482834', '2021-11-29 13:03:09', '2021-11-29 13:03:09');
INSERT INTO `physical_user` VALUES ('127', 'f0b34030eef84616a770aab30c5bb815', '18606358399', '2021-11-29 13:03:19', '2021-11-29 13:03:19');
INSERT INTO `physical_user` VALUES ('128', '24b25d7d9fda40bdbb0191417f4f7923', '15606351777', '2021-11-29 13:04:08', '2021-11-29 13:10:07');
INSERT INTO `physical_user` VALUES ('130', '', '王小明', '2022-01-06 09:41:35', '2022-01-06 09:41:35');
INSERT INTO `physical_user` VALUES ('132', 'dfdsf', '万大力', '2022-01-10 16:43:09', '2022-01-10 16:43:09');

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COMMENT='参数配置表';

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES ('1', '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2021-01-07 16:34:49', '', null, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES ('2', '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2021-01-07 16:34:49', '', null, '初始化密码 123456');
INSERT INTO `sys_config` VALUES ('3', '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2021-01-07 16:34:49', '', null, '深黑主题theme-dark，浅色主题theme-light，深蓝主题theme-blue');
INSERT INTO `sys_config` VALUES ('4', '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2021-01-07 16:34:49', '', null, '是否开启注册用户功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES ('5', '用户管理-密码字符范围', 'sys.account.chrtype', '0', 'Y', 'admin', '2021-01-07 16:34:49', '', null, '默认任意字符范围，0任意（密码可以输入任意字符），1数字（密码只能为0-9数字），2英文字母（密码只能为a-z和A-Z字母），3字母和数字（密码必须包含字母，数字）,4字母数字和特殊字符（目前支持的特殊字符包括：~!@#$%^&*()-=_+）');
INSERT INTO `sys_config` VALUES ('6', '用户管理-初始密码修改策略', 'sys.account.initPasswordModify', '0', 'Y', 'admin', '2021-01-07 16:34:49', '', null, '0：初始密码修改策略关闭，没有任何提示，1：提醒用户，如果未修改初始密码，则在登录时就会提醒修改密码对话框');
INSERT INTO `sys_config` VALUES ('7', '用户管理-账号密码更新周期', 'sys.account.passwordValidateDays', '0', 'Y', 'admin', '2021-01-07 16:34:49', '', null, '密码更新周期（填写数字，数据初始化值为0不限制，若修改必须为大于0小于365的正整数），如果超过这个周期登录系统时，则在登录时就会提醒修改密码对话框');
INSERT INTO `sys_config` VALUES ('8', '主框架页-菜单导航显示风格', 'sys.index.menuStyle', 'default', 'Y', 'admin', '2021-01-07 16:34:49', '', null, '菜单导航显示风格（default为左侧导航菜单，topnav为顶部导航菜单）');
INSERT INTO `sys_config` VALUES ('9', '主框架页-是否开启页脚', 'sys.index.ignoreFooter', 'false', 'Y', 'admin', '2021-01-07 16:34:49', 'admin', '2021-02-22 14:43:53', '是否开启底部页脚显示（true显示，false隐藏）');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父部门id',
  `ancestors` varchar(50) DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `leader` varchar(20) DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `status` char(1) DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8mb4 COMMENT='部门表';

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES ('100', '0', '0', '趣体检', '0', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-01-07 16:34:43', 'admin', '2021-01-12 16:36:44');
INSERT INTO `sys_dept` VALUES ('113', '100', '0,100', '超管', '1', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-01-12 16:36:54', '', null);
INSERT INTO `sys_dept` VALUES ('114', '100', '0,100', '普通', '2', 'aaa', null, null, '0', '0', 'admin', '2022-01-07 15:42:04', '', null);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data` (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COMMENT='字典数据表';

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES ('1', '1', '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2021-01-07 16:34:48', '', null, '性别男');
INSERT INTO `sys_dict_data` VALUES ('2', '2', '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2021-01-07 16:34:48', '', null, '性别女');
INSERT INTO `sys_dict_data` VALUES ('3', '3', '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2021-01-07 16:34:48', '', null, '性别未知');
INSERT INTO `sys_dict_data` VALUES ('4', '1', '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2021-01-07 16:34:48', '', null, '显示菜单');
INSERT INTO `sys_dict_data` VALUES ('5', '2', '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2021-01-07 16:34:48', '', null, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES ('6', '1', '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2021-01-07 16:34:48', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('7', '2', '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2021-01-07 16:34:48', '', null, '停用状态');
INSERT INTO `sys_dict_data` VALUES ('8', '1', '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2021-01-07 16:34:48', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('9', '2', '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2021-01-07 16:34:48', '', null, '停用状态');
INSERT INTO `sys_dict_data` VALUES ('10', '1', '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2021-01-07 16:34:48', '', null, '默认分组');
INSERT INTO `sys_dict_data` VALUES ('11', '2', '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2021-01-07 16:34:48', '', null, '系统分组');
INSERT INTO `sys_dict_data` VALUES ('12', '1', '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2021-01-07 16:34:48', '', null, '系统默认是');
INSERT INTO `sys_dict_data` VALUES ('13', '2', '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2021-01-07 16:34:48', '', null, '系统默认否');
INSERT INTO `sys_dict_data` VALUES ('14', '1', '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2021-01-07 16:34:48', '', null, '通知');
INSERT INTO `sys_dict_data` VALUES ('15', '2', '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2021-01-07 16:34:48', '', null, '公告');
INSERT INTO `sys_dict_data` VALUES ('16', '1', '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2021-01-07 16:34:48', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('17', '2', '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2021-01-07 16:34:48', '', null, '关闭状态');
INSERT INTO `sys_dict_data` VALUES ('18', '99', '其他', '0', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2021-01-07 16:34:48', '', null, '其他操作');
INSERT INTO `sys_dict_data` VALUES ('19', '1', '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2021-01-07 16:34:48', '', null, '新增操作');
INSERT INTO `sys_dict_data` VALUES ('20', '2', '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2021-01-07 16:34:48', '', null, '修改操作');
INSERT INTO `sys_dict_data` VALUES ('21', '3', '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2021-01-07 16:34:48', '', null, '删除操作');
INSERT INTO `sys_dict_data` VALUES ('22', '4', '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2021-01-07 16:34:48', '', null, '授权操作');
INSERT INTO `sys_dict_data` VALUES ('23', '5', '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2021-01-07 16:34:48', '', null, '导出操作');
INSERT INTO `sys_dict_data` VALUES ('24', '6', '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2021-01-07 16:34:48', '', null, '导入操作');
INSERT INTO `sys_dict_data` VALUES ('25', '7', '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2021-01-07 16:34:48', '', null, '强退操作');
INSERT INTO `sys_dict_data` VALUES ('26', '8', '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2021-01-07 16:34:48', '', null, '生成操作');
INSERT INTO `sys_dict_data` VALUES ('27', '9', '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2021-01-07 16:34:48', '', null, '清空操作');
INSERT INTO `sys_dict_data` VALUES ('28', '1', '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2021-01-07 16:34:48', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('29', '2', '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2021-01-07 16:34:48', '', null, '停用状态');

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type` (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`),
  UNIQUE KEY `dict_type` (`dict_type`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COMMENT='字典类型表';

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES ('1', '用户性别', 'sys_user_sex', '0', 'admin', '2021-01-07 16:34:48', '', null, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES ('2', '菜单状态', 'sys_show_hide', '0', 'admin', '2021-01-07 16:34:48', '', null, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES ('3', '系统开关', 'sys_normal_disable', '0', 'admin', '2021-01-07 16:34:48', '', null, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES ('4', '任务状态', 'sys_job_status', '0', 'admin', '2021-01-07 16:34:48', '', null, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES ('5', '任务分组', 'sys_job_group', '0', 'admin', '2021-01-07 16:34:48', '', null, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES ('6', '系统是否', 'sys_yes_no', '0', 'admin', '2021-01-07 16:34:48', '', null, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES ('7', '通知类型', 'sys_notice_type', '0', 'admin', '2021-01-07 16:34:48', '', null, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES ('8', '通知状态', 'sys_notice_status', '0', 'admin', '2021-01-07 16:34:48', '', null, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES ('9', '操作类型', 'sys_oper_type', '0', 'admin', '2021-01-07 16:34:48', '', null, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES ('10', '系统状态', 'sys_common_status', '0', 'admin', '2021-01-07 16:34:48', '', null, '登录状态列表');

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor` (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `login_name` varchar(50) DEFAULT '' COMMENT '登录账号',
  `ipaddr` varchar(50) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` char(1) DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) DEFAULT '' COMMENT '提示消息',
  `login_time` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COMMENT='系统访问记录';

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES ('1', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 7', '0', '登录成功', '2022-01-03 11:33:33');
INSERT INTO `sys_logininfor` VALUES ('2', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 7', '0', '登录成功', '2022-01-03 12:00:17');
INSERT INTO `sys_logininfor` VALUES ('3', 'gfdg', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '用户不存在/密码错误', '2022-01-03 15:31:13');
INSERT INTO `sys_logininfor` VALUES ('4', 'gfdg', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '用户不存在/密码错误', '2022-01-03 15:31:37');
INSERT INTO `sys_logininfor` VALUES ('5', 'ad', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '用户不存在/密码错误', '2022-01-03 15:48:21');
INSERT INTO `sys_logininfor` VALUES ('6', 'dsf', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '用户不存在/密码错误', '2022-01-03 16:19:35');
INSERT INTO `sys_logininfor` VALUES ('7', 'asd', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码错误', '2022-01-03 16:56:51');
INSERT INTO `sys_logininfor` VALUES ('8', 'asd', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '用户不存在/密码错误', '2022-01-03 16:56:57');
INSERT INTO `sys_logininfor` VALUES ('9', 'asd', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '用户不存在/密码错误', '2022-01-03 17:00:52');
INSERT INTO `sys_logininfor` VALUES ('10', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '密码输入错误1次', '2022-01-03 17:40:14');
INSERT INTO `sys_logininfor` VALUES ('11', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '密码输入错误2次', '2022-01-03 17:40:46');
INSERT INTO `sys_logininfor` VALUES ('12', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '密码输入错误3次', '2022-01-03 17:40:54');
INSERT INTO `sys_logininfor` VALUES ('13', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '密码输入错误4次', '2022-01-03 17:41:37');
INSERT INTO `sys_logininfor` VALUES ('14', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '密码输入错误5次', '2022-01-03 17:41:48');
INSERT INTO `sys_logininfor` VALUES ('15', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '用户不存在/密码错误', '2022-01-03 17:41:58');
INSERT INTO `sys_logininfor` VALUES ('16', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '用户不存在/密码错误', '2022-01-03 17:42:03');
INSERT INTO `sys_logininfor` VALUES ('17', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码错误', '2022-01-03 17:43:02');
INSERT INTO `sys_logininfor` VALUES ('18', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '密码输入错误5次，帐户锁定10分钟', '2022-01-03 17:43:15');
INSERT INTO `sys_logininfor` VALUES ('19', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '密码输入错误1次', '2022-01-03 18:04:56');
INSERT INTO `sys_logininfor` VALUES ('20', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-03 18:06:22');
INSERT INTO `sys_logininfor` VALUES ('21', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-04 09:51:02');
INSERT INTO `sys_logininfor` VALUES ('22', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-04 15:00:35');
INSERT INTO `sys_logininfor` VALUES ('23', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '密码输入错误1次', '2022-01-04 18:24:41');
INSERT INTO `sys_logininfor` VALUES ('24', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-04 18:25:04');
INSERT INTO `sys_logininfor` VALUES ('25', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-05 08:47:16');
INSERT INTO `sys_logininfor` VALUES ('26', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码错误', '2022-01-05 13:53:44');
INSERT INTO `sys_logininfor` VALUES ('27', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-05 13:53:47');
INSERT INTO `sys_logininfor` VALUES ('28', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-06 13:47:00');
INSERT INTO `sys_logininfor` VALUES ('29', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-06 14:49:58');
INSERT INTO `sys_logininfor` VALUES ('30', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码错误', '2022-01-06 18:12:37');
INSERT INTO `sys_logininfor` VALUES ('31', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-06 18:12:44');
INSERT INTO `sys_logininfor` VALUES ('32', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-06 18:15:02');
INSERT INTO `sys_logininfor` VALUES ('33', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-07 09:03:03');
INSERT INTO `sys_logininfor` VALUES ('34', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码错误', '2022-01-07 09:05:52');
INSERT INTO `sys_logininfor` VALUES ('35', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-07 09:06:03');
INSERT INTO `sys_logininfor` VALUES ('36', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-07 09:41:30');
INSERT INTO `sys_logininfor` VALUES ('37', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-07 10:16:36');
INSERT INTO `sys_logininfor` VALUES ('38', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2022-01-07 10:21:53');
INSERT INTO `sys_logininfor` VALUES ('39', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-07 10:22:00');
INSERT INTO `sys_logininfor` VALUES ('40', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2022-01-07 10:23:44');
INSERT INTO `sys_logininfor` VALUES ('41', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-07 10:23:48');
INSERT INTO `sys_logininfor` VALUES ('42', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-07 14:03:04');
INSERT INTO `sys_logininfor` VALUES ('43', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2022-01-07 14:07:37');
INSERT INTO `sys_logininfor` VALUES ('44', 'user1', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '密码输入错误1次', '2022-01-07 14:07:49');
INSERT INTO `sys_logininfor` VALUES ('45', 'user1', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '用户不存在/密码错误', '2022-01-07 14:08:33');
INSERT INTO `sys_logininfor` VALUES ('46', 'user1', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-07 14:08:43');
INSERT INTO `sys_logininfor` VALUES ('47', 'user1', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2022-01-07 14:19:08');
INSERT INTO `sys_logininfor` VALUES ('48', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-07 14:19:12');
INSERT INTO `sys_logininfor` VALUES ('49', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2022-01-07 14:19:38');
INSERT INTO `sys_logininfor` VALUES ('50', 'user1', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '用户已封禁，请联系管理员', '2022-01-07 14:19:50');
INSERT INTO `sys_logininfor` VALUES ('51', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-07 14:20:02');
INSERT INTO `sys_logininfor` VALUES ('52', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2022-01-07 14:28:50');
INSERT INTO `sys_logininfor` VALUES ('53', 'user1', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-07 14:29:01');
INSERT INTO `sys_logininfor` VALUES ('54', 'user1', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2022-01-07 14:29:10');
INSERT INTO `sys_logininfor` VALUES ('55', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-07 14:29:14');
INSERT INTO `sys_logininfor` VALUES ('56', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2022-01-07 14:29:42');
INSERT INTO `sys_logininfor` VALUES ('57', 'user1', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-07 14:29:54');
INSERT INTO `sys_logininfor` VALUES ('58', 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2022-01-07 14:43:38');
INSERT INTO `sys_logininfor` VALUES ('59', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-07 14:44:27');
INSERT INTO `sys_logininfor` VALUES ('60', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-07 15:34:06');
INSERT INTO `sys_logininfor` VALUES ('61', 'use1', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '用户不存在/密码错误', '2022-01-07 15:36:09');
INSERT INTO `sys_logininfor` VALUES ('62', 'use1', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '用户不存在/密码错误', '2022-01-07 15:36:18');
INSERT INTO `sys_logininfor` VALUES ('63', 'user1', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-07 15:36:27');
INSERT INTO `sys_logininfor` VALUES ('64', 'user1', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2022-01-07 15:37:21');
INSERT INTO `sys_logininfor` VALUES ('65', 'user1', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-07 15:37:33');
INSERT INTO `sys_logininfor` VALUES ('66', 'user1', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2022-01-07 15:37:47');
INSERT INTO `sys_logininfor` VALUES ('67', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-07 15:37:52');
INSERT INTO `sys_logininfor` VALUES ('68', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2022-01-07 15:37:59');
INSERT INTO `sys_logininfor` VALUES ('69', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-07 15:38:11');
INSERT INTO `sys_logininfor` VALUES ('70', 'user1', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码错误', '2022-01-07 15:38:59');
INSERT INTO `sys_logininfor` VALUES ('71', 'user1', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-07 15:39:04');
INSERT INTO `sys_logininfor` VALUES ('72', 'user1', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2022-01-07 15:39:39');
INSERT INTO `sys_logininfor` VALUES ('73', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-07 15:39:43');
INSERT INTO `sys_logininfor` VALUES ('74', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2022-01-07 15:44:07');
INSERT INTO `sys_logininfor` VALUES ('75', 'user1', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-07 15:44:20');
INSERT INTO `sys_logininfor` VALUES ('76', 'user1', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2022-01-07 15:44:31');
INSERT INTO `sys_logininfor` VALUES ('77', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-07 15:44:38');
INSERT INTO `sys_logininfor` VALUES ('78', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2022-01-07 15:45:07');
INSERT INTO `sys_logininfor` VALUES ('79', 'user1', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-07 15:45:20');
INSERT INTO `sys_logininfor` VALUES ('80', 'user1', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2022-01-07 15:45:47');
INSERT INTO `sys_logininfor` VALUES ('81', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-07 15:45:51');
INSERT INTO `sys_logininfor` VALUES ('82', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2022-01-07 15:46:27');
INSERT INTO `sys_logininfor` VALUES ('83', 'user1', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-07 15:46:39');
INSERT INTO `sys_logininfor` VALUES ('84', 'user1', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2022-01-07 15:46:55');
INSERT INTO `sys_logininfor` VALUES ('85', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-07 15:46:59');
INSERT INTO `sys_logininfor` VALUES ('86', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2022-01-07 15:47:19');
INSERT INTO `sys_logininfor` VALUES ('87', 'user1', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-07 15:47:31');
INSERT INTO `sys_logininfor` VALUES ('88', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-07 16:48:31');
INSERT INTO `sys_logininfor` VALUES ('89', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-07 16:54:34');
INSERT INTO `sys_logininfor` VALUES ('90', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-07 17:06:40');
INSERT INTO `sys_logininfor` VALUES ('91', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-07 17:21:20');
INSERT INTO `sys_logininfor` VALUES ('92', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-08 09:33:29');
INSERT INTO `sys_logininfor` VALUES ('93', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-08 10:42:53');
INSERT INTO `sys_logininfor` VALUES ('94', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2022-01-08 11:07:50');
INSERT INTO `sys_logininfor` VALUES ('95', 'user1', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-08 11:08:03');
INSERT INTO `sys_logininfor` VALUES ('96', 'user1', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2022-01-08 11:09:16');
INSERT INTO `sys_logininfor` VALUES ('97', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-08 11:09:21');
INSERT INTO `sys_logininfor` VALUES ('98', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2022-01-08 11:10:32');
INSERT INTO `sys_logininfor` VALUES ('99', 'user1', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-08 11:10:45');
INSERT INTO `sys_logininfor` VALUES ('100', 'user1', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2022-01-08 11:13:59');
INSERT INTO `sys_logininfor` VALUES ('101', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-08 11:14:05');
INSERT INTO `sys_logininfor` VALUES ('102', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-08 14:01:39');
INSERT INTO `sys_logininfor` VALUES ('103', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2022-01-08 14:53:06');
INSERT INTO `sys_logininfor` VALUES ('104', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-08 14:53:10');
INSERT INTO `sys_logininfor` VALUES ('105', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-08 14:57:13');
INSERT INTO `sys_logininfor` VALUES ('106', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-08 15:06:05');
INSERT INTO `sys_logininfor` VALUES ('107', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2022-01-08 15:27:19');
INSERT INTO `sys_logininfor` VALUES ('108', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-08 15:27:23');
INSERT INTO `sys_logininfor` VALUES ('109', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-08 16:23:52');
INSERT INTO `sys_logininfor` VALUES ('110', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-10 09:47:59');
INSERT INTO `sys_logininfor` VALUES ('111', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-10 10:08:08');
INSERT INTO `sys_logininfor` VALUES ('112', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-10 11:16:08');
INSERT INTO `sys_logininfor` VALUES ('113', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-10 11:57:18');
INSERT INTO `sys_logininfor` VALUES ('114', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-10 13:52:29');
INSERT INTO `sys_logininfor` VALUES ('115', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码错误', '2022-01-10 14:30:38');
INSERT INTO `sys_logininfor` VALUES ('116', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-10 14:30:42');
INSERT INTO `sys_logininfor` VALUES ('117', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-10 14:48:36');
INSERT INTO `sys_logininfor` VALUES ('118', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-10 15:02:09');
INSERT INTO `sys_logininfor` VALUES ('119', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-10 15:31:38');
INSERT INTO `sys_logininfor` VALUES ('120', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-01-10 16:38:01');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `url` varchar(200) DEFAULT '#' COMMENT '请求地址',
  `target` varchar(20) DEFAULT '' COMMENT '打开方式（menuItem页签 menuBlank新窗口）',
  `menu_type` char(1) DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `is_refresh` char(1) DEFAULT '1' COMMENT '是否刷新（0刷新 1不刷新）',
  `perms` varchar(100) DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1122 DEFAULT CHARSET=utf8mb4 COMMENT='菜单权限表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '系统管理', '0', '6', '#', 'menuItem', 'M', '0', '1', '', 'fa fa-gear', 'admin', '2021-01-07 16:34:45', 'admin', '2021-12-23 21:43:01', '系统管理目录');
INSERT INTO `sys_menu` VALUES ('100', '用户管理', '1', '1', '/system/user', '', 'C', '0', '1', 'system:user:view', 'fa fa-user-o', 'admin', '2021-01-07 16:34:45', '', null, '用户管理菜单');
INSERT INTO `sys_menu` VALUES ('101', '角色管理', '1', '2', '/system/role', '', 'C', '0', '1', 'system:role:view', 'fa fa-user-secret', 'admin', '2021-01-07 16:34:45', '', null, '角色管理菜单');
INSERT INTO `sys_menu` VALUES ('102', '菜单管理', '1', '3', '/system/menu', '', 'C', '0', '1', 'system:menu:view', 'fa fa-th-list', 'admin', '2021-01-07 16:34:45', '', null, '菜单管理菜单');
INSERT INTO `sys_menu` VALUES ('103', '部门管理', '1', '4', '/system/dept', '', 'C', '0', '1', 'system:dept:view', 'fa fa-outdent', 'admin', '2021-01-07 16:34:45', '', null, '部门管理菜单');
INSERT INTO `sys_menu` VALUES ('104', '岗位管理', '1', '5', '/system/post', '', 'C', '0', '1', 'system:post:view', 'fa fa-address-card-o', 'admin', '2021-01-07 16:34:45', '', null, '岗位管理菜单');
INSERT INTO `sys_menu` VALUES ('108', '日志管理', '1', '9', '#', '', 'M', '0', '1', '', 'fa fa-pencil-square-o', 'admin', '2021-01-07 16:34:45', '', null, '日志管理菜单');
INSERT INTO `sys_menu` VALUES ('500', '操作日志', '108', '1', '/monitor/operlog', '', 'C', '0', '1', 'monitor:operlog:view', 'fa fa-address-book', 'admin', '2021-01-07 16:34:45', '', null, '操作日志菜单');
INSERT INTO `sys_menu` VALUES ('501', '登录日志', '108', '2', '/monitor/logininfor', '', 'C', '0', '1', 'monitor:logininfor:view', 'fa fa-file-image-o', 'admin', '2021-01-07 16:34:45', '', null, '登录日志菜单');
INSERT INTO `sys_menu` VALUES ('1000', '用户查询', '100', '1', '#', '', 'F', '0', '1', 'system:user:list', '#', 'admin', '2021-01-07 16:34:45', '', null, '');
INSERT INTO `sys_menu` VALUES ('1001', '用户新增', '100', '2', '#', '', 'F', '0', '1', 'system:user:add', '#', 'admin', '2021-01-07 16:34:45', '', null, '');
INSERT INTO `sys_menu` VALUES ('1002', '用户修改', '100', '3', '#', '', 'F', '0', '1', 'system:user:edit', '#', 'admin', '2021-01-07 16:34:45', '', null, '');
INSERT INTO `sys_menu` VALUES ('1003', '用户删除', '100', '4', '#', '', 'F', '0', '1', 'system:user:remove', '#', 'admin', '2021-01-07 16:34:45', '', null, '');
INSERT INTO `sys_menu` VALUES ('1004', '用户导出', '100', '5', '#', '', 'F', '0', '1', 'system:user:export', '#', 'admin', '2021-01-07 16:34:45', '', null, '');
INSERT INTO `sys_menu` VALUES ('1005', '用户导入', '100', '6', '#', '', 'F', '0', '1', 'system:user:import', '#', 'admin', '2021-01-07 16:34:45', '', null, '');
INSERT INTO `sys_menu` VALUES ('1006', '重置密码', '100', '7', '#', '', 'F', '0', '1', 'system:user:resetPwd', '#', 'admin', '2021-01-07 16:34:45', '', null, '');
INSERT INTO `sys_menu` VALUES ('1007', '角色查询', '101', '1', '#', '', 'F', '0', '1', 'system:role:list', '#', 'admin', '2021-01-07 16:34:45', '', null, '');
INSERT INTO `sys_menu` VALUES ('1008', '角色新增', '101', '2', '#', '', 'F', '0', '1', 'system:role:add', '#', 'admin', '2021-01-07 16:34:45', '', null, '');
INSERT INTO `sys_menu` VALUES ('1009', '角色修改', '101', '3', '#', '', 'F', '0', '1', 'system:role:edit', '#', 'admin', '2021-01-07 16:34:45', '', null, '');
INSERT INTO `sys_menu` VALUES ('1010', '角色删除', '101', '4', '#', '', 'F', '0', '1', 'system:role:remove', '#', 'admin', '2021-01-07 16:34:45', '', null, '');
INSERT INTO `sys_menu` VALUES ('1011', '角色导出', '101', '5', '#', '', 'F', '0', '1', 'system:role:export', '#', 'admin', '2021-01-07 16:34:45', '', null, '');
INSERT INTO `sys_menu` VALUES ('1012', '菜单查询', '102', '1', '#', '', 'F', '0', '1', 'system:menu:list', '#', 'admin', '2021-01-07 16:34:45', '', null, '');
INSERT INTO `sys_menu` VALUES ('1013', '菜单新增', '102', '2', '#', '', 'F', '0', '1', 'system:menu:add', '#', 'admin', '2021-01-07 16:34:45', '', null, '');
INSERT INTO `sys_menu` VALUES ('1014', '菜单修改', '102', '3', '#', '', 'F', '0', '1', 'system:menu:edit', '#', 'admin', '2021-01-07 16:34:45', '', null, '');
INSERT INTO `sys_menu` VALUES ('1015', '菜单删除', '102', '4', '#', '', 'F', '0', '1', 'system:menu:remove', '#', 'admin', '2021-01-07 16:34:45', '', null, '');
INSERT INTO `sys_menu` VALUES ('1016', '部门查询', '103', '1', '#', '', 'F', '0', '1', 'system:dept:list', '#', 'admin', '2021-01-07 16:34:45', '', null, '');
INSERT INTO `sys_menu` VALUES ('1017', '部门新增', '103', '2', '#', '', 'F', '0', '1', 'system:dept:add', '#', 'admin', '2021-01-07 16:34:45', '', null, '');
INSERT INTO `sys_menu` VALUES ('1018', '部门修改', '103', '3', '#', '', 'F', '0', '1', 'system:dept:edit', '#', 'admin', '2021-01-07 16:34:45', '', null, '');
INSERT INTO `sys_menu` VALUES ('1019', '部门删除', '103', '4', '#', '', 'F', '0', '1', 'system:dept:remove', '#', 'admin', '2021-01-07 16:34:45', '', null, '');
INSERT INTO `sys_menu` VALUES ('1020', '岗位查询', '104', '1', '#', '', 'F', '0', '1', 'system:post:list', '#', 'admin', '2021-01-07 16:34:45', '', null, '');
INSERT INTO `sys_menu` VALUES ('1021', '岗位新增', '104', '2', '#', '', 'F', '0', '1', 'system:post:add', '#', 'admin', '2021-01-07 16:34:45', '', null, '');
INSERT INTO `sys_menu` VALUES ('1022', '岗位修改', '104', '3', '#', '', 'F', '0', '1', 'system:post:edit', '#', 'admin', '2021-01-07 16:34:45', '', null, '');
INSERT INTO `sys_menu` VALUES ('1023', '岗位删除', '104', '4', '#', '', 'F', '0', '1', 'system:post:remove', '#', 'admin', '2021-01-07 16:34:45', '', null, '');
INSERT INTO `sys_menu` VALUES ('1024', '岗位导出', '104', '5', '#', '', 'F', '0', '1', 'system:post:export', '#', 'admin', '2021-01-07 16:34:45', '', null, '');
INSERT INTO `sys_menu` VALUES ('1039', '操作查询', '500', '1', '#', '', 'F', '0', '1', 'monitor:operlog:list', '#', 'admin', '2021-01-07 16:34:45', '', null, '');
INSERT INTO `sys_menu` VALUES ('1040', '操作删除', '500', '2', '#', '', 'F', '0', '1', 'monitor:operlog:remove', '#', 'admin', '2021-01-07 16:34:45', '', null, '');
INSERT INTO `sys_menu` VALUES ('1041', '详细信息', '500', '3', '#', '', 'F', '0', '1', 'monitor:operlog:detail', '#', 'admin', '2021-01-07 16:34:45', '', null, '');
INSERT INTO `sys_menu` VALUES ('1042', '日志导出', '500', '4', '#', '', 'F', '0', '1', 'monitor:operlog:export', '#', 'admin', '2021-01-07 16:34:45', '', null, '');
INSERT INTO `sys_menu` VALUES ('1043', '登录查询', '501', '1', '#', '', 'F', '0', '1', 'monitor:logininfor:list', '#', 'admin', '2021-01-07 16:34:45', '', null, '');
INSERT INTO `sys_menu` VALUES ('1044', '登录删除', '501', '2', '#', '', 'F', '0', '1', 'monitor:logininfor:remove', '#', 'admin', '2021-01-07 16:34:45', '', null, '');
INSERT INTO `sys_menu` VALUES ('1045', '日志导出', '501', '3', '#', '', 'F', '0', '1', 'monitor:logininfor:export', '#', 'admin', '2021-01-07 16:34:45', '', null, '');
INSERT INTO `sys_menu` VALUES ('1046', '账户解锁', '501', '4', '#', '', 'F', '0', '1', 'monitor:logininfor:unlock', '#', 'admin', '2021-01-07 16:34:45', '', null, '');
INSERT INTO `sys_menu` VALUES ('1111', '参数设置', '1', '6', '/system/config', 'menuItem', 'C', '0', '1', 'system:config:view', 'fa fa-sun-o', 'admin', '2021-02-20 13:44:42', '', null, '');
INSERT INTO `sys_menu` VALUES ('1112', '参数查询', '1111', '1', '#', 'menuItem', 'F', '0', '1', 'system:config:list', '#', 'admin', '2021-02-20 13:45:42', '', null, '');
INSERT INTO `sys_menu` VALUES ('1113', '参数新增', '1111', '2', '#', 'menuItem', 'F', '0', '1', 'system:config:add', '#', 'admin', '2021-02-20 13:46:07', '', null, '');
INSERT INTO `sys_menu` VALUES ('1114', '参数修改', '1111', '3', '#', 'menuItem', 'F', '0', '1', 'system:config:edit', '#', 'admin', '2021-02-20 13:46:34', '', null, '');
INSERT INTO `sys_menu` VALUES ('1115', '参数删除', '1111', '4', '#', 'menuItem', 'F', '0', '1', 'system:config:remove', '#', 'admin', '2021-02-20 13:46:58', '', null, '');
INSERT INTO `sys_menu` VALUES ('1116', '参数导出', '1111', '5', '#', 'menuItem', 'F', '0', '1', 'system:config:export', '#', 'admin', '2021-02-20 13:47:20', '', null, '');
INSERT INTO `sys_menu` VALUES ('1117', '用户管理', '0', '1', '#', 'menuItem', 'M', '0', '1', '', 'fa fa-users', 'admin', '2021-10-12 15:06:59', '', '0000-00-00 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1118', '用户列表', '1117', '1', '/user/list', 'menuItem', 'C', '0', '1', 'user:list:view', 'fa fa-user', 'admin', '2021-10-12 15:08:56', 'admin', '2022-01-07 10:33:07', '');
INSERT INTO `sys_menu` VALUES ('1119', '列表', '1118', '1', '#', 'menuItem', 'F', '0', '1', 'user:list', '#', 'admin', '2021-10-12 15:11:16', '', '0000-00-00 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1120', '导出', '1118', '2', '#', 'menuItem', 'F', '0', '1', 'user:export', '#', 'admin', '2021-10-12 15:16:19', '', '0000-00-00 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1121', '用户列表新增', '1118', '3', '#', 'menuItem', 'F', '0', '1', 'user:add', '#', 'admin', '2022-01-08 10:23:51', 'admin', '2022-01-08 15:27:10', '');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log` (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(50) DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) DEFAULT '' COMMENT '返回参数',
  `status` int(1) DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COMMENT='操作日志记录';

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES ('1', '菜单管理', '2', 'com.zhwl.ruoyi.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '超管', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1118\"],\"parentId\":[\"1117\"],\"menuType\":[\"C\"],\"menuName\":[\"用户列表\"],\"url\":[\"/user/list1\"],\"target\":[\"menuItem\"],\"perms\":[\"user:list:view1\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-user\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-01-07 10:19:14');
INSERT INTO `sys_oper_log` VALUES ('2', '菜单管理', '2', 'com.zhwl.ruoyi.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '超管', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1118\"],\"parentId\":[\"1117\"],\"menuType\":[\"C\"],\"menuName\":[\"用户列表\"],\"url\":[\"/user/list\"],\"target\":[\"menuItem\"],\"perms\":[\"user:list:view1\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-user\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-01-07 10:20:30');
INSERT INTO `sys_oper_log` VALUES ('3', '菜单管理', '2', 'com.zhwl.ruoyi.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '超管', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1118\"],\"parentId\":[\"1117\"],\"menuType\":[\"C\"],\"menuName\":[\"用户列表\"],\"url\":[\"/user/list\"],\"target\":[\"menuItem\"],\"perms\":[\"user:list:vie\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-user\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-01-07 10:23:40');
INSERT INTO `sys_oper_log` VALUES ('4', '菜单管理', '2', 'com.zhwl.ruoyi.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '超管', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1118\"],\"parentId\":[\"1117\"],\"menuType\":[\"C\"],\"menuName\":[\"用户列表\"],\"url\":[\"/user/list\"],\"target\":[\"menuItem\"],\"perms\":[\"user:list:view\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-user\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-01-07 10:33:07');
INSERT INTO `sys_oper_log` VALUES ('5', '用户管理', '1', 'com.zhwl.ruoyi.controller.system.SysUserController.addSave()', 'POST', '1', 'admin', '超管', '/system/user/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"userName\":[\"user1\"],\"deptName\":[\"\"],\"phonenumber\":[\"17645674215\"],\"email\":[\"\"],\"loginName\":[\"user1\"],\"sex\":[\"0\"],\"remark\":[\"user test1\"],\"status\":[\"0\"],\"roleIds\":[\"\"],\"postIds\":[\"4\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-01-07 14:05:28');
INSERT INTO `sys_oper_log` VALUES ('6', '用户管理', '2', 'com.zhwl.ruoyi.controller.system.SysUserController.editSave()', 'POST', '1', 'admin', '超管', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"2\"],\"deptId\":[\"100\"],\"userName\":[\"user1\"],\"dept.deptName\":[\"趣体检\"],\"phonenumber\":[\"17645674215\"],\"email\":[\"user@gmail.com\"],\"loginName\":[\"user1\"],\"sex\":[\"0\"],\"remark\":[\"user test1\"],\"status\":[\"0\"],\"roleIds\":[\"\"],\"postIds\":[\"4\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-01-07 14:07:19');
INSERT INTO `sys_oper_log` VALUES ('7', '用户管理', '2', 'com.zhwl.ruoyi.controller.system.SysUserController.editSave()', 'POST', '1', 'admin', '超管', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"2\"],\"deptId\":[\"113\"],\"userName\":[\"user1\"],\"dept.deptName\":[\"超管\"],\"phonenumber\":[\"17645674215\"],\"email\":[\"user@gmail.com\"],\"loginName\":[\"user1\"],\"sex\":[\"0\"],\"remark\":[\"user test1\"],\"status\":[\"1\"],\"roleIds\":[\"\"],\"postIds\":[\"4\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-01-07 14:19:35');
INSERT INTO `sys_oper_log` VALUES ('8', '用户管理', '2', 'com.zhwl.ruoyi.controller.system.SysUserController.changeStatus()', 'POST', '1', 'admin', '超管', '/system/user/changeStatus', '127.0.0.1', '内网IP', '{\"userId\":[\"2\"],\"status\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-01-07 14:20:13');
INSERT INTO `sys_oper_log` VALUES ('9', '角色管理', '1', 'com.zhwl.ruoyi.controller.system.SysRoleController.addSave()', 'POST', '1', 'admin', '超管', '/system/role/add', '127.0.0.1', '内网IP', '{\"roleName\":[\"员工\"],\"roleKey\":[\"worker\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"worker\"],\"menuIds\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-01-07 14:27:16');
INSERT INTO `sys_oper_log` VALUES ('10', '用户管理', '4', 'com.zhwl.ruoyi.controller.system.SysUserController.insertAuthRole()', 'POST', '1', 'admin', '超管', '/system/user/authRole/insertAuthRole', '127.0.0.1', '内网IP', '{\"userId\":[\"2\"],\"roleIds\":[\"2\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-01-07 14:27:34');
INSERT INTO `sys_oper_log` VALUES ('11', '用户管理', '2', 'com.zhwl.ruoyi.controller.system.SysUserController.editSave()', 'POST', '1', 'admin', '超管', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"2\"],\"deptId\":[\"100\"],\"userName\":[\"user1\"],\"dept.deptName\":[\"趣体检\"],\"phonenumber\":[\"17645674215\"],\"email\":[\"user@gmail.com\"],\"loginName\":[\"user1\"],\"sex\":[\"0\"],\"role\":[\"2\"],\"remark\":[\"user test1\"],\"status\":[\"0\"],\"roleIds\":[\"2\"],\"postIds\":[\"4\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-01-07 14:28:37');
INSERT INTO `sys_oper_log` VALUES ('12', '角色管理', '2', 'com.zhwl.ruoyi.controller.system.SysRoleController.editSave()', 'POST', '1', 'admin', '超管', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"员工\"],\"roleKey\":[\"worker\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"worker\"],\"menuIds\":[\"1117,1118,1119,1120,1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,1111,1112,1113,1114,1115,1116,108,500,1039,1040,1041,1042,501,1043,1044,1045,1046\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-01-07 14:29:34');
INSERT INTO `sys_oper_log` VALUES ('13', '用户管理', '2', 'com.zhwl.ruoyi.controller.system.SysUserController.editSave()', 'POST', '1', 'admin', '超管', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"2\"],\"deptId\":[\"100\"],\"userName\":[\"user1\"],\"dept.deptName\":[\"趣体检\"],\"phonenumber\":[\"17645674215\"],\"email\":[\"user@gmail.com\"],\"loginName\":[\"user1\"],\"sex\":[\"0\"],\"role\":[\"2\"],\"remark\":[\"user test111\"],\"status\":[\"0\"],\"roleIds\":[\"2\"],\"postIds\":[\"4\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-01-07 14:56:20');
INSERT INTO `sys_oper_log` VALUES ('14', '角色管理', '2', 'com.zhwl.ruoyi.controller.system.SysRoleController.editSave()', 'POST', '1', 'admin', '超管', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"员工\"],\"roleKey\":[\"worker\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"worker\"],\"menuIds\":[\"1118,1119,1000,1007,1012,1016,1020,1112,500,1039,1043\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-01-07 15:35:48');
INSERT INTO `sys_oper_log` VALUES ('15', '角色管理', '2', 'com.zhwl.ruoyi.controller.system.SysRoleController.editSave()', 'POST', '1', 'admin', '超管', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"员工\"],\"roleKey\":[\"worker\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"worker\"],\"menuIds\":[\"1118,1119,1000,1007,1012,1016,1020,1112,500,1039,1043\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-01-07 15:37:14');
INSERT INTO `sys_oper_log` VALUES ('16', '角色管理', '2', 'com.zhwl.ruoyi.controller.system.SysRoleController.editSave()', 'POST', '1', 'admin', '超管', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"员工\"],\"roleKey\":[\"worker\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"worker\"],\"menuIds\":[\"1118,1119\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-01-07 15:38:48');
INSERT INTO `sys_oper_log` VALUES ('17', '用户管理', '4', 'com.zhwl.ruoyi.controller.system.SysUserController.insertAuthRole()', 'POST', '1', 'admin', '超管', '/system/user/authRole/insertAuthRole', '127.0.0.1', '内网IP', '{\"userId\":[\"2\"],\"roleIds\":[\"2\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-01-07 15:40:27');
INSERT INTO `sys_oper_log` VALUES ('18', '部门管理', '1', 'com.zhwl.ruoyi.controller.system.SysDeptController.addSave()', 'POST', '1', 'admin', '超管', '/system/dept/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"100\"],\"deptName\":[\"普通\"],\"orderNum\":[\"2\"],\"leader\":[\"aaa\"],\"phone\":[\"\"],\"email\":[\"\"],\"status\":[\"0\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-01-07 15:42:04');
INSERT INTO `sys_oper_log` VALUES ('19', '角色管理', '2', 'com.zhwl.ruoyi.controller.system.SysRoleController.editSave()', 'POST', '1', 'admin', '超管', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"员工\"],\"roleKey\":[\"worker\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"worker\"],\"menuIds\":[\"1118,1119\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-01-07 15:42:42');
INSERT INTO `sys_oper_log` VALUES ('20', '用户管理', '2', 'com.zhwl.ruoyi.controller.system.SysUserController.editSave()', 'POST', '1', 'admin', '超管', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"2\"],\"deptId\":[\"114\"],\"userName\":[\"user1\"],\"dept.deptName\":[\"普通\"],\"phonenumber\":[\"17645674215\"],\"email\":[\"user@gmail.com\"],\"loginName\":[\"user1\"],\"sex\":[\"0\"],\"role\":[\"2\"],\"remark\":[\"user test111\"],\"status\":[\"0\"],\"roleIds\":[\"2\"],\"postIds\":[\"4\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-01-07 15:42:54');
INSERT INTO `sys_oper_log` VALUES ('21', '角色管理', '2', 'com.zhwl.ruoyi.controller.system.SysRoleController.authDataScopeSave()', 'POST', '1', 'admin', '超管', '/system/role/authDataScope', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"员工\"],\"roleKey\":[\"worker\"],\"dataScope\":[\"2\"],\"deptIds\":[\"100,114\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-01-07 15:43:32');
INSERT INTO `sys_oper_log` VALUES ('22', '角色管理', '2', 'com.zhwl.ruoyi.controller.system.SysRoleController.authDataScopeSave()', 'POST', '1', 'admin', '超管', '/system/role/authDataScope', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"员工\"],\"roleKey\":[\"worker\"],\"dataScope\":[\"2\"],\"deptIds\":[\"100,114\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-01-07 15:43:52');
INSERT INTO `sys_oper_log` VALUES ('23', '角色管理', '2', 'com.zhwl.ruoyi.controller.system.SysRoleController.editSave()', 'POST', '1', 'admin', '超管', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"员工\"],\"roleKey\":[\"worker\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"worker\"],\"menuIds\":[\"1118,1119\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-01-07 15:44:04');
INSERT INTO `sys_oper_log` VALUES ('24', '角色管理', '2', 'com.zhwl.ruoyi.controller.system.SysRoleController.editSave()', 'POST', '1', 'admin', '超管', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"员工\"],\"roleKey\":[\"worker\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"worker\"],\"menuIds\":[\"1117,1118,1119,1120,1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,1111,1112,1113,1114,1115,1116,108,500,1039,1040,1041,1042,501,1043,1044,1045,1046\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-01-07 15:45:05');
INSERT INTO `sys_oper_log` VALUES ('25', '角色管理', '2', 'com.zhwl.ruoyi.controller.system.SysRoleController.editSave()', 'POST', '1', 'admin', '超管', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"员工\"],\"roleKey\":[\"worker\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"worker\"],\"menuIds\":[\"1117,1118,1119,1120,1,100,1000\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-01-07 15:46:19');
INSERT INTO `sys_oper_log` VALUES ('26', '角色管理', '2', 'com.zhwl.ruoyi.controller.system.SysRoleController.editSave()', 'POST', '1', 'admin', '超管', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"员工\"],\"roleKey\":[\"worker\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"worker\"],\"menuIds\":[\"1117,1118,1119,1,100,1000\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-01-07 15:47:15');
INSERT INTO `sys_oper_log` VALUES ('27', '菜单管理', '1', 'com.zhwl.ruoyi.controller.system.SysMenuController.addSave()', 'POST', '1', 'admin', '超管', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"1118\"],\"menuType\":[\"F\"],\"menuName\":[\"用户\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"user:add\"],\"orderNum\":[\"3\"],\"icon\":[\"\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-01-08 10:23:51');
INSERT INTO `sys_oper_log` VALUES ('28', '菜单管理', '2', 'com.zhwl.ruoyi.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '超管', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1121\"],\"parentId\":[\"1118\"],\"menuType\":[\"F\"],\"menuName\":[\"新增列表用户\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"user:add\"],\"orderNum\":[\"3\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-01-08 10:24:58');
INSERT INTO `sys_oper_log` VALUES ('29', '角色管理', '2', 'com.zhwl.ruoyi.controller.system.SysRoleController.editSave()', 'POST', '1', 'admin', '超管', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"员工\"],\"roleKey\":[\"worker\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"worker\"],\"menuIds\":[\"1117,1118,1119,1120,1121,1,100,1000\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-01-08 11:10:28');
INSERT INTO `sys_oper_log` VALUES ('30', '岗位管理', '2', 'com.zhwl.ruoyi.controller.system.SysPostController.editSave()', 'POST', '1', 'admin', '超管', '/system/post/edit', '127.0.0.1', '内网IP', '{\"postId\":[\"4\"],\"postName\":[\"普通员工\"],\"postCode\":[\"worker\"],\"postSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-01-08 11:19:45');
INSERT INTO `sys_oper_log` VALUES ('31', '菜单管理', '2', 'com.zhwl.ruoyi.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '超管', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1121\"],\"parentId\":[\"1118\"],\"menuType\":[\"F\"],\"menuName\":[\"用户列表新增\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"user:add\"],\"orderNum\":[\"3\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-01-08 14:52:29');
INSERT INTO `sys_oper_log` VALUES ('32', '菜单管理', '2', 'com.zhwl.ruoyi.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '超管', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1121\"],\"parentId\":[\"1118\"],\"menuType\":[\"F\"],\"menuName\":[\"用户列表新增\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"user:add\"],\"orderNum\":[\"3\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-01-08 14:56:23');
INSERT INTO `sys_oper_log` VALUES ('33', '菜单管理', '2', 'com.zhwl.ruoyi.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '超管', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1121\"],\"parentId\":[\"1118\"],\"menuType\":[\"C\"],\"menuName\":[\"用户列表新增\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"user:add\"],\"orderNum\":[\"3\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-01-08 15:25:55');
INSERT INTO `sys_oper_log` VALUES ('34', '菜单管理', '2', 'com.zhwl.ruoyi.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '超管', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1121\"],\"parentId\":[\"1118\"],\"menuType\":[\"F\"],\"menuName\":[\"用户列表新增\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"user:add\"],\"orderNum\":[\"3\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-01-08 15:27:10');
INSERT INTO `sys_oper_log` VALUES ('35', '用户管理', '1', 'com.zhwl.ruoyi.controller.system.SysUserController.addSave()', 'POST', '1', 'admin', '超管', '/system/user/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"114\"],\"userName\":[\"user2\"],\"deptName\":[\"普通\"],\"phonenumber\":[\"17645674216\"],\"email\":[\"user2@gmail.com\"],\"loginName\":[\"user2\"],\"sex\":[\"0\"],\"role\":[\"2\"],\"remark\":[\"worker\"],\"status\":[\"0\"],\"roleIds\":[\"2\"],\"postIds\":[\"4\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2022-01-10 15:37:08');

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post` (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COMMENT='岗位信息表';

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES ('1', 'ceo', '董事长', '1', '0', 'admin', '2021-01-07 16:34:44', '', null, '');
INSERT INTO `sys_post` VALUES ('4', 'worker', '普通员工', '2', '0', 'admin', '2021-01-07 16:34:44', 'admin', '2022-01-08 11:19:45', '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `status` char(1) NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='角色信息表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '超级管理员', 'admin', '1', '1', '0', '0', 'admin', '2021-01-07 16:34:45', '', null, '超级管理员');
INSERT INTO `sys_role` VALUES ('2', '员工', 'worker', '2', '2', '0', '0', 'admin', '2022-01-07 14:27:16', 'admin', '2022-01-08 11:10:28', 'worker');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`,`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='角色和部门关联表';

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES ('2', '100');
INSERT INTO `sys_role_dept` VALUES ('2', '114');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='角色和菜单关联表';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('2', '1');
INSERT INTO `sys_role_menu` VALUES ('2', '100');
INSERT INTO `sys_role_menu` VALUES ('2', '1000');
INSERT INTO `sys_role_menu` VALUES ('2', '1117');
INSERT INTO `sys_role_menu` VALUES ('2', '1118');
INSERT INTO `sys_role_menu` VALUES ('2', '1119');
INSERT INTO `sys_role_menu` VALUES ('2', '1120');
INSERT INTO `sys_role_menu` VALUES ('2', '1121');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `login_name` varchar(30) NOT NULL COMMENT '登录账号',
  `user_name` varchar(30) DEFAULT '' COMMENT '用户昵称',
  `user_type` varchar(2) DEFAULT '00' COMMENT '用户类型（00系统用户 01注册用户）',
  `email` varchar(50) DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) DEFAULT '' COMMENT '手机号码',
  `sex` char(1) DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) DEFAULT '' COMMENT '头像路径',
  `password` varchar(50) DEFAULT '' COMMENT '密码',
  `salt` varchar(20) DEFAULT '' COMMENT '盐加密',
  `status` char(1) DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(50) DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登录时间',
  `pwd_update_date` datetime DEFAULT NULL COMMENT '密码最后更新时间',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='用户信息表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', '113', 'admin', 'admin', '00', 'ry@126.com', '15888888888', '0', '', '8ad6303d6b87b2318494e50442936848', '62e4cf', '0', '0', '127.0.0.1', '2022-01-10 16:38:01', '2021-11-29 12:18:42', 'admin', '2021-01-07 16:34:44', '', '2022-01-10 16:38:01', '管理员');
INSERT INTO `sys_user` VALUES ('2', '114', 'user1', 'user1', '00', 'user@gmail.com', '17645674215', '0', '', '9eb7081c7646dd08b6448e04d3871699', 'e4e758', '0', '0', '127.0.0.1', '2022-01-08 11:10:46', null, 'admin', '2022-01-07 14:05:28', 'admin', '2022-01-08 11:10:45', 'user test111');
INSERT INTO `sys_user` VALUES ('3', '114', 'user2', 'user2', '00', 'user2@gmail.com', '17645674216', '0', '', 'c511e94713540486eb64e707f116488f', 'a1c5b2', '0', '0', '', null, null, 'admin', '2022-01-10 15:37:08', '', null, 'worker');

-- ----------------------------
-- Table structure for sys_user_online
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_online`;
CREATE TABLE `sys_user_online` (
  `sessionId` varchar(50) NOT NULL DEFAULT '' COMMENT '用户会话id',
  `login_name` varchar(50) DEFAULT '' COMMENT '登录账号',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `ipaddr` varchar(50) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` varchar(10) DEFAULT '' COMMENT '在线状态on_line在线off_line离线',
  `start_timestamp` datetime DEFAULT NULL COMMENT 'session创建时间',
  `last_access_time` datetime DEFAULT NULL COMMENT 'session最后访问时间',
  `expire_time` int(5) DEFAULT '0' COMMENT '超时时间，单位为分钟',
  PRIMARY KEY (`sessionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='在线用户记录';

-- ----------------------------
-- Records of sys_user_online
-- ----------------------------
INSERT INTO `sys_user_online` VALUES ('3db90482-50ca-49d3-b6cc-cb1ec7801202', 'admin', '超管', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', 'on_line', '2022-01-10 16:37:58', '2022-01-10 16:43:06', '1800000');

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户与岗位关联表';

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES ('1', '1');
INSERT INTO `sys_user_post` VALUES ('2', '4');
INSERT INTO `sys_user_post` VALUES ('3', '4');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户和角色关联表';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1', '1');
INSERT INTO `sys_user_role` VALUES ('2', '2');
INSERT INTO `sys_user_role` VALUES ('3', '2');
