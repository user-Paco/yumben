
/* 新增商户接入接口基础信息表*/
CREATE TABLE `t_supplier_interface` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `supplier_code` varchar(255) DEFAULT NULL COMMENT '商户code',
  `supplier_name` varchar(255) DEFAULT NULL COMMENT '商户名称',
  `access_token` varchar(255) DEFAULT NULL COMMENT '请求token标识',
  `refresh_token` varchar(255) DEFAULT NULL COMMENT '刷新token',
  `refresh_token_expires` timestamp NULL DEFAULT NULL COMMENT 'refresh_token的过期时间',
  `expires_in` timestamp NULL DEFAULT NULL COMMENT 'Access_token的有效时间段，秒级别,有效期24小时',
  `token_timestamp` timestamp NULL DEFAULT NULL COMMENT 'token时间戳',
  `username` varchar(255) DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `status` varchar(255) DEFAULT '1' COMMENT '状态（0代表禁用，1代表可用）',
  `creator` varchar(255) DEFAULT NULL COMMENT '创建人',
  `updater` varchar(255) DEFAULT NULL COMMENT '修改人',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unitoken` (`access_token`) USING BTREE,
  UNIQUE KEY `unirefreshtoken` (`refresh_token`) USING BTREE,
  UNIQUE KEY `unisuppliercode` (`supplier_code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商户接入接口基础信息表';

/* 商户接口配置表*/
CREATE TABLE `t_supplier_interface_conf` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `supplier_code` varchar(255) DEFAULT NULL COMMENT '商户编号',
  `shop_code` text COMMENT '门店号',
  `all_shop` varchar(255) DEFAULT '1' COMMENT '是否全部门店均可访问（1代表是，0代表不是）',
  `api_method` varchar(255) DEFAULT NULL COMMENT 'api方法(字段关联t_interface_conf表method)',
  `begin_time` timestamp NULL DEFAULT NULL COMMENT '开始时间',
  `end_time` timestamp NULL DEFAULT NULL COMMENT '结束时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `creater` varchar(255) DEFAULT NULL COMMENT '创建人',
  `updater` varchar(255) DEFAULT NULL COMMENT '更新人',
  `status` varchar(255) DEFAULT NULL COMMENT '访问状态{1:允许访问,2:访问有效期到期(禁止访问),3:永久禁止访问}',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unisupplier&method` (`supplier_code`,`api_method`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商户接口配置表';