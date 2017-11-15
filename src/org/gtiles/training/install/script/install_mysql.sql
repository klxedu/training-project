-- 
-- TABLE: TRAINING_DETAIL 
--

CREATE TABLE TRAINING_DETAIL(
    TRAINING_DETAIL_ID    VARCHAR(50)     NOT NULL,
    SIGN_LOCATION         VARCHAR(200),
    COURSE_NAME           VARCHAR(200),
    TEACHER               VARCHAR(200),
    TRAINING_USER_ID      VARCHAR(50)     NOT NULL,
    PRIMARY KEY (TRAINING_DETAIL_ID)
)ENGINE=INNODB
;



-- 
-- TABLE: TRAINING_USER 
--

CREATE TABLE TRAINING_USER(
    TRAINING_USER_ID    VARCHAR(50)     NOT NULL,
    NAME                VARCHAR(200),
    DEPT                VARCHAR(200),
    MOBILE_PHONE        VARCHAR(50),
    EMAIL               VARCHAR(200),
    CREATE_TIME         DATETIME,
    PRIMARY KEY (TRAINING_USER_ID)
)ENGINE=INNODB
;



-- 
-- TABLE: TRAINING_DETAIL 
--

ALTER TABLE TRAINING_DETAIL ADD CONSTRAINT RefTRAINING_USER1 
    FOREIGN KEY (TRAINING_USER_ID)
    REFERENCES TRAINING_USER(TRAINING_USER_ID) ON DELETE CASCADE
;

-- 菜单初始化
INSERT INTO `gt_swb_menu` (`MENUID`, `MENUCODE`, `MENUNAME`, `MENUORDER`, `ISSHOW`, `MENUGRPID`, `LINK_MENU_ID`, `MENU_ICON`, `SUB_MENU_GROUP`) 
	VALUES ('uuid-menugrp-swb-example', 'example', '培训用户管理', '9', '1', 'uuid-menugrp-swb', NULL, 'iconfont icon-kaoshijilu', '');
-- 权限点初始化
INSERT INTO `gt_auth_res_group` (`RES_GROUP_ID`, `RES_GROUP_NAME`, `RES_GROUP_CODE`, `RES_GROUP_TYPE`, `OPERATOR`, `OPERATOR_ID`, `UPDATE_TIME`) 
	VALUES ('uuid-menugrp-swb-example', '培训用户管理', 'example', '1', 'admin', 'admin', '2016-08-12 14:05:51');
INSERT INTO `gt_auth_resource` (`RESOURCE_ID`, `RESOURCE_NAME`, `RESOURCE_CODE`, `RESOURCE_VALUE`, `DESCRIPTION`, `IS_AUDIT_LOG`, `RES_GROUP_ID`, `OPERATOR`, `OPERATOR_ID`, `UPDATE_TIME`) 
	VALUES ('uuid-menugrp-swb-example-find', '查询', 'example-find', '', '查询', '2', 'uuid-menugrp-swb-example', 'admin', 'admin', '2016-08-12 14:14:52');
INSERT INTO `gt_auth_resource` (`RESOURCE_ID`, `RESOURCE_NAME`, `RESOURCE_CODE`, `RESOURCE_VALUE`, `DESCRIPTION`, `IS_AUDIT_LOG`, `RES_GROUP_ID`, `OPERATOR`, `OPERATOR_ID`, `UPDATE_TIME`) 
	VALUES ('uuid-menugrp-swb-example-manage', '维护', 'example-manage', '', '维护', '2', 'uuid-menugrp-swb-example', 'admin', 'admin', '2016-08-12 14:14:52');

