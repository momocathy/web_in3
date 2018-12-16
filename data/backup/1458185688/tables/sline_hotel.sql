-- 表的结构：sline_hotel --
CREATE TABLE `sline_hotel` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `webid` int(3) NOT NULL DEFAULT '1' COMMENT '站点id',
  `aid` int(11) unsigned DEFAULT NULL COMMENT '前端显示id',
  `title` varchar(255) DEFAULT NULL COMMENT '酒店标题',
  `seotitle` varchar(100) DEFAULT NULL COMMENT 'seo标题',
  `sellpoint` varchar(255) DEFAULT NULL COMMENT '卖点',
  `hotelrankid` int(6) DEFAULT NULL COMMENT '酒店星级id',
  `telephone` varchar(13) DEFAULT NULL COMMENT '酒店电话',
  `postcode` int(6) DEFAULT NULL COMMENT '邮政编码',
  `content` longtext COMMENT '酒店介绍',
  `address` varchar(255) DEFAULT NULL COMMENT '地址',
  `price` int(11) DEFAULT NULL COMMENT '最低价',
  `shownum` int(11) DEFAULT NULL COMMENT '查看数量',
  `addtime` int(11) unsigned DEFAULT NULL COMMENT '添加时间',
  `modtime` int(11) unsigned DEFAULT NULL COMMENT '修改时间',
  `keyword` varchar(255) DEFAULT NULL COMMENT '关键词',
  `description` longtext COMMENT '描述',
  `tagword` varchar(255) DEFAULT NULL COMMENT 'tag词',
  `litpic` varchar(100) DEFAULT NULL COMMENT '封面图片',
  `kindlist` varchar(255) DEFAULT NULL COMMENT '目的地',
  `themelist` varchar(255) DEFAULT NULL COMMENT '专题',
  `attrid` varchar(255) DEFAULT NULL COMMENT '属性',
  `ishidden` int(3) DEFAULT '0' COMMENT '是否显示',
  `traffic` text COMMENT '交通',
  `aroundspots` text COMMENT '周边景点',
  `notice` text COMMENT '提示',
  `equipment` text COMMENT '设备',
  `piclist` text COMMENT '图片列表',
  `opentime` varchar(255) DEFAULT NULL COMMENT '开业时间',
  `decoratetime` varchar(255) DEFAULT NULL COMMENT '装修时间',
  `iconlist` varchar(255) DEFAULT NULL COMMENT '图标信息',
  `satisfyscore` int(11) DEFAULT NULL COMMENT '满意度',
  `bookcount` varchar(5) DEFAULT NULL COMMENT '预订数量',
  `supplierlist` varchar(255) DEFAULT NULL COMMENT '供应商信息',
  `templet` varchar(255) DEFAULT NULL COMMENT '模板',
  `recommendnum` int(11) DEFAULT '0' COMMENT '推荐次数',
  `lng` varchar(50) DEFAULT NULL COMMENT '经度',
  `lat` varchar(50) DEFAULT NULL COMMENT '纬度',
  `fuwu` text COMMENT '服务',
  `finaldestid` int(11) DEFAULT NULL COMMENT '最终目的地',
  PRIMARY KEY (`id`),
  KEY `IDX_AID` (`aid`) USING BTREE,
  KEY `IDX_HOTELPRICE_WEBID` (`price`,`webid`) USING BTREE,
  KEY `IDX_WEBID` (`webid`) USING BTREE,
  KEY `IDX_HOTELRANKID_WEBID` (`hotelrankid`,`webid`) USING BTREE,
  KEY `IDX_MO_AD_HO_WE` (`modtime`,`addtime`,`hotelrankid`,`webid`) USING BTREE,
  KEY `IDX_KINDLIST` (`kindlist`) USING BTREE,
  KEY `IDX_attrid` (`attrid`) USING BTREE,
  KEY `IDX_ishidden` (`ishidden`) USING BTREE,
  KEY `IDX_title` (`title`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='酒店信息表';-- <xjx> --

