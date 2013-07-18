CREATE TABLE 'security_module'  ( 
	'id'         	bigint(20) AUTO_INCREMENT NOT NULL,
	'description'	varchar(255) NULL,
	'name'       	varchar(32) NOT NULL,
	'priority'   	int(11) NOT NULL,
	'sn'         	varchar(32) NOT NULL,
	'url'        	varchar(255) NOT NULL,
	'parent_id'  	bigint(20) NULL 
	);
INSERT INTO 'security_module'('id', 'description', 'name', 'priority', 'sn', 'url', 'parent_id')
  VALUES(1, '所有模块的根节点，不能删除。', '根模块', 1, 'Root', '#', NULL);
INSERT INTO 'security_module'('id', 'description', 'name', 'priority', 'sn', 'url', 'parent_id')
  VALUES(2, '安全管理:包含权限管理、模块管理等。', '系统管理', 99, 'Security', '#', 1);
INSERT INTO 'security_module'('id', 'description', 'name', 'priority', 'sn', 'url', 'parent_id')
  VALUES(3, '', '用户管理', 99, 'User', '/management/security/user/list', 2);
INSERT INTO 'security_module'('id', 'description', 'name', 'priority', 'sn', 'url', 'parent_id')
  VALUES(4, '', '角色管理', 99, 'Role', '/management/security/role/list', 2);
INSERT INTO 'security_module'('id', 'description', 'name', 'priority', 'sn', 'url', 'parent_id')
  VALUES(5, '', '模块管理', 99, 'Module', '/management/security/module/tree_list', 2);
INSERT INTO 'security_module'('id', 'description', 'name', 'priority', 'sn', 'url', 'parent_id')
  VALUES(10, '一个开发使用的简单示例。', '开发实例', 99, 'Sample', '#', 1);
INSERT INTO 'security_module'('id', 'description', 'name', 'priority', 'sn', 'url', 'parent_id')
  VALUES(14, '', '简单任务实例', 99, 'Task', '/management/sample/task/list', 10);
INSERT INTO 'security_module'('id', 'description', 'name', 'priority', 'sn', 'url', 'parent_id')
  VALUES(18, '', '组织管理', 99, 'Organization', '/management/security/organization/tree_list', 2);
INSERT INTO 'security_module'('id', 'description', 'name', 'priority', 'sn', 'url', 'parent_id')
  VALUES(24, '', '缓存管理', 99, 'CacheManage', '/management/security/cacheManage/index', 2);
INSERT INTO 'security_module'('id', 'description', 'name', 'priority', 'sn', 'url', 'parent_id')
  VALUES(38, '测试下', '测试模块', 99, 'sdfs', '测试下', 1);
INSERT INTO 'security_module'('id', 'description', 'name', 'priority', 'sn', 'url', 'parent_id')
  VALUES(52, '', '自定义权限测试', 99, 'ggg', '/vv', 38);
INSERT INTO 'security_module'('id', 'description', 'name', 'priority', 'sn', 'url', 'parent_id')
  VALUES(53, '', '多级模块测试', 99, 'gg', '/gg', 52);
INSERT INTO 'security_module'('id', 'description', 'name', 'priority', 'sn', 'url', 'parent_id')
  VALUES(54, '', '模块测试2', 99, '多级模块测试2', '/hh', 53);
INSERT INTO 'security_module'('id', 'description', 'name', 'priority', 'sn', 'url', 'parent_id')
  VALUES(58, '', '新模块26', 99, 'ff', '/dd', 53);
INSERT INTO 'security_module'('id', 'description', 'name', 'priority', 'sn', 'url', 'parent_id')
  VALUES(59, '', '日志管理', 99, 'logEntity', '/management/security/logEntity/list', 2);
INSERT INTO 'security_module'('id', 'description', 'name', 'priority', 'sn', 'url', 'parent_id')
  VALUES(63, '', '职务管理', 99, 'Position', '/management/eduoa/position/list', 2);
INSERT INTO 'security_module'('id', 'description', 'name', 'priority', 'sn', 'url', 'parent_id')
  VALUES(64, '', '年级管理', 99, 'Grade', '/management/eduoa/grade/list', 2);
INSERT INTO 'security_module'('id', 'description', 'name', 'priority', 'sn', 'url', 'parent_id')
  VALUES(65, '', '班级管理', 99, 'Class', '/management/eduoa/class/tree_list', 2);
INSERT INTO 'security_module'('id', 'description', 'name', 'priority', 'sn', 'url', 'parent_id')
  VALUES(66, '', '人员组成分工', 99, 'Teacher', '#', 1);
INSERT INTO 'security_module'('id', 'description', 'name', 'priority', 'sn', 'url', 'parent_id')
  VALUES(67, '', '组织结构', 99, 'Structure', '/management/eduoa/structure/create', 66);
INSERT INTO 'security_module'('id', 'description', 'name', 'priority', 'sn', 'url', 'parent_id')
  VALUES(68, '', '组织机构查看', 99, 'StructureView', '/management/eduoa/structure/view', 66);
INSERT INTO 'security_module'('id', 'description', 'name', 'priority', 'sn', 'url', 'parent_id')
  VALUES(69, '', '科目管理', 99, 'Subject', '/management/eduoa/subject/list', 2);
INSERT INTO 'security_module'('id', 'description', 'name', 'priority', 'sn', 'url', 'parent_id')
  VALUES(70, '', '职称证书', 99, 'CertificateType', '/management/eduoa/certificatetype/list', 2);
INSERT INTO 'security_module'('id', 'description', 'name', 'priority', 'sn', 'url', 'parent_id')
  VALUES(72, '', '教师信息管理', 99, 'TeacherInfo', '/management/eduoa/teacher/list', 66);
INSERT INTO 'security_module'('id', 'description', 'name', 'priority', 'sn', 'url', 'parent_id')
  VALUES(74, '', '学生信息管理', 99, 'StudentInfo', '/management/eduoa/student/list', 66);
INSERT INTO 'security_module'('id', 'description', 'name', 'priority', 'sn', 'url', 'parent_id')
  VALUES(75, '', '日常办公助手', 99, 'Work', '#', 1);
INSERT INTO 'security_module'('id', 'description', 'name', 'priority', 'sn', 'url', 'parent_id')
  VALUES(76, '', '请销假管理', 99, 'Leave', '#', 75);
INSERT INTO 'security_module'('id', 'description', 'name', 'priority', 'sn', 'url', 'parent_id')
  VALUES(79, '', '请假申请', 99, 'LeavePermit', '/management/eduoa/leavepermit/listDraft', 76);
INSERT INTO 'security_module'('id', 'description', 'name', 'priority', 'sn', 'url', 'parent_id')
  VALUES(80, '', '已提交', 99, 'listApproval', '/management/eduoa/leavepermit/listApproval', 76);
INSERT INTO 'security_module'('id', 'description', 'name', 'priority', 'sn', 'url', 'parent_id')
  VALUES(82, '', '请假审批', 99, 'Permit', ' 	 /management/eduoa/leavepermit/list', 76);
INSERT INTO 'security_module'('id', 'description', 'name', 'priority', 'sn', 'url', 'parent_id')
  VALUES(83, '', '已完结', 99, 'listFinish', '/management/eduoa/leavepermit/listFinish', 76);
