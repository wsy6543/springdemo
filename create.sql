

CREATE TABLE `worker` (
    `id` integer AUTO_INCREMENT NOT NULL PRIMARY KEY COMMENT '主键',
    `name` varchar(128) NOT NULL COMMENT '部门名称',
    `phone` varchar(32)  NOT NULL DEFAULT '' COMMENT '手机号',
    `dept_id` integer NOT NULL COMMENT '部门id',
    `title` varchar(128) NOT NULL DEFAULT '' COMMENT '职位',
    `join_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '入职时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT '员工';



CREATE TABLE `dept` (
    `id` integer AUTO_INCREMENT NOT NULL PRIMARY KEY COMMENT '主键',
    `name` varchar(128) NOT NULL COMMENT '部门名称',
    `master` varchar(128)  NOT NULL DEFAULT 0 COMMENT '主管name',
    `phone` varchar(32)  NOT NULL DEFAULT '' COMMENT '手机号',
    `email` varchar(32) NOT NULL DEFAULT '' COMMENT 'email'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT '部门';


CREATE TABLE `customer` (
    `id` integer AUTO_INCREMENT NOT NULL PRIMARY KEY COMMENT '主键',
    `name` varchar(128) NOT NULL COMMENT '名称',
    `phone` varchar(32)  NOT NULL DEFAULT '' COMMENT '手机号',
    `bank` varchar(32)  NOT NULL DEFAULT '' COMMENT '银行',
    `addr` varchar(128)  NOT NULL DEFAULT '' COMMENT '银行'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT '客户';




insert into worker (`name`, `phone`, `dept_id`, `title`) values ("小王", "400-400-4008", 1, "客户经理"),
("小李", "1263", 2, "客户经理"),
("小剪", "6747263", 3, "客户经理");


insert into dept (`name`, `master`, `phone`, `email`) values ("市场部", "wsy", "15624980001", "8977@qq.com"),
("销售部", "kangkang", "776789", "6743@dfjk.com"),
("小王", "libai", "678342", "87438@jkdsa.com");