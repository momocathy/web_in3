-- 表的结构：sline_leave --
CREATE TABLE `sline_leave` (
  `id` int(13) NOT NULL AUTO_INCREMENT,
  `webid` int(11) unsigned NOT NULL,
  `aid` int(11) unsigned DEFAULT NULL,
  `ip` varchar(100) DEFAULT NULL COMMENT '留言者IP地址',
  `leavename` varchar(50) DEFAULT NULL COMMENT '留言者昵称',
  `qq` varchar(50) DEFAULT NULL COMMENT '留言者QQ或MSN等联系方式',
  `msn` varchar(50) DEFAULT NULL,
  `telephone` varchar(50) DEFAULT NULL COMMENT '留言者电话（座机）',
  `phone` varchar(11) DEFAULT NULL COMMENT '留言者手机',
  `weixin` varchar(255) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL COMMENT '留言人邮箱',
  `title` varchar(50) DEFAULT NULL COMMENT '留言主题',
  `headimg` varchar(50) DEFAULT NULL COMMENT '选择头像',
  `content` mediumtext COMMENT '留言内容',
  `addtime` int(10) unsigned DEFAULT NULL COMMENT '添加时间',
  `reply` mediumtext COMMENT '管理员回复内容',
  `retime` int(10) unsigned DEFAULT NULL COMMENT '管理员回复时间',
  `approval` int(1) unsigned DEFAULT NULL COMMENT '是否通过',
  `ishidden` int(1) DEFAULT NULL COMMENT '留言人是否隐藏',
  `leaveip` varchar(50) DEFAULT NULL COMMENT '留言者IP',
  `listarea` varchar(255) DEFAULT NULL COMMENT '分类区域',
  `listspot` varchar(255) DEFAULT NULL COMMENT '问题的对应景区',
  `ismaill` int(1) DEFAULT '0',
  `tagword` varchar(255) DEFAULT NULL,
  `typeid` varchar(255) DEFAULT NULL,
  `ismust` varchar(255) DEFAULT NULL,
  `kind` varchar(255) DEFAULT NULL,
  `kindlist` varchar(255) DEFAULT NULL,
  `postid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='留言表(弃用)';-- <xjx> --

