CREATE TABLE `t_area` (
	id int(10) auto_increment NOT NULL,
	area_code varchar(8) NOT NULL COMMENT '区域代码',
	area_name varchar(20) NOT NULL COMMENT '区域名称',
	is_use TINYINT NOT NULL COMMENT '是否使用',
	`desc` varchar(100) NULL COMMENT '描述',
	created_time TIMESTAMP NULL DEFAULT NULL,
	update_time TIMESTAMP NULL DEFAULT NULL,
	CONSTRAINT t_area_pk PRIMARY KEY (id)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_general_ci
COMMENT='区域表';


CREATE TABLE `t_area_goods` (
	id int(10) auto_increment NOT NULL,
	area_code varchar(8) NOT NULL COMMENT '区域代码',
	goods_id int(10) unsigned NOT NULL COMMENT '商品ID',
	created_time TIMESTAMP NULL DEFAULT NULL,
	update_time TIMESTAMP NULL DEFAULT NULL,
	CONSTRAINT t_area_goods_pk PRIMARY KEY (id)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_general_ci
COMMENT='区域关联商品表';
