CREATE TABLE 'security_organization'  ( 
	'id'         	bigint(20) AUTO_INCREMENT NOT NULL,
	'description'	varchar(255) NULL,
	'name'       	varchar(64) NOT NULL,
	'parent_id'  	bigint(20) NULL,
	'org_order'  	int(11) NULL 
	);
INSERT INTO 'security_organization'('id', 'description', 'name', 'parent_id', 'org_order')
  VALUES(1, '不能删除。', '根组织', NULL, NULL);
INSERT INTO 'security_organization'('id', 'description', 'name', 'parent_id', 'org_order')
  VALUES(24, '', '香河县第一中学', 1, NULL);
INSERT INTO 'security_organization'('id', 'description', 'name', 'parent_id', 'org_order')
  VALUES(25, '', '高一年级', 24, NULL);
INSERT INTO 'security_organization'('id', 'description', 'name', 'parent_id', 'org_order')
  VALUES(26, '', '高二年级', 24, NULL);
INSERT INTO 'security_organization'('id', 'description', 'name', 'parent_id', 'org_order')
  VALUES(27, '', '高三年级', 24, NULL);
INSERT INTO 'security_organization'('id', 'description', 'name', 'parent_id', 'org_order')
  VALUES(28, '', '教务处', 24, NULL);
INSERT INTO 'security_organization'('id', 'description', 'name', 'parent_id', 'org_order')
  VALUES(29, '', '政教处', 24, NULL);
INSERT INTO 'security_organization'('id', 'description', 'name', 'parent_id', 'org_order')
  VALUES(30, '', '办公室', 24, NULL);
INSERT INTO 'security_organization'('id', 'description', 'name', 'parent_id', 'org_order')
  VALUES(31, '', '三联办', 24, NULL);
INSERT INTO 'security_organization'('id', 'description', 'name', 'parent_id', 'org_order')
  VALUES(32, '', '后勤', 24, NULL);
INSERT INTO 'security_organization'('id', 'description', 'name', 'parent_id', 'org_order')
  VALUES(33, '', '财务室', 24, NULL);
INSERT INTO 'security_organization'('id', 'description', 'name', 'parent_id', 'org_order')
  VALUES(34, '', '实验室', 24, NULL);
INSERT INTO 'security_organization'('id', 'description', 'name', 'parent_id', 'org_order')
  VALUES(35, '', '图书馆', 24, NULL);
INSERT INTO 'security_organization'('id', 'description', 'name', 'parent_id', 'org_order')
  VALUES(36, '', '团委', 24, NULL);
INSERT INTO 'security_organization'('id', 'description', 'name', 'parent_id', 'org_order')
  VALUES(37, '', '资料室', 24, NULL);
INSERT INTO 'security_organization'('id', 'description', 'name', 'parent_id', 'org_order')
  VALUES(38, '', '语文组', 25, NULL);
INSERT INTO 'security_organization'('id', 'description', 'name', 'parent_id', 'org_order')
  VALUES(39, '', '化学组', 25, NULL);
INSERT INTO 'security_organization'('id', 'description', 'name', 'parent_id', 'org_order')
  VALUES(40, '', '英语组', 25, NULL);
INSERT INTO 'security_organization'('id', 'description', 'name', 'parent_id', 'org_order')
  VALUES(41, '', '物理组', 25, NULL);
INSERT INTO 'security_organization'('id', 'description', 'name', 'parent_id', 'org_order')
  VALUES(42, '', '政治组', 25, NULL);
INSERT INTO 'security_organization'('id', 'description', 'name', 'parent_id', 'org_order')
  VALUES(43, '', '生物组', 25, NULL);
INSERT INTO 'security_organization'('id', 'description', 'name', 'parent_id', 'org_order')
  VALUES(44, '', '语文组', 26, NULL);
INSERT INTO 'security_organization'('id', 'description', 'name', 'parent_id', 'org_order')
  VALUES(45, '', '数学组', 26, NULL);
INSERT INTO 'security_organization'('id', 'description', 'name', 'parent_id', 'org_order')
  VALUES(46, '', '英语组', 26, NULL);
INSERT INTO 'security_organization'('id', 'description', 'name', 'parent_id', 'org_order')
  VALUES(47, '', '物理组', 26, NULL);
INSERT INTO 'security_organization'('id', 'description', 'name', 'parent_id', 'org_order')
  VALUES(48, '', '化学组', 26, NULL);
INSERT INTO 'security_organization'('id', 'description', 'name', 'parent_id', 'org_order')
  VALUES(49, '', '生物组', 26, NULL);
