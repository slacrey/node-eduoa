CREATE TABLE [security_module]  ( 
	[id]         	bigint(20) AUTO_INCREMENT NOT NULL,
	[description]	varchar(255) NULL,
	[name]       	varchar(32) NOT NULL,
	[priority]   	int(11) NOT NULL,
	[sn]         	varchar(32) NOT NULL,
	[url]        	varchar(255) NOT NULL,
	[parent_id]  	bigint(20) NULL 
	)
GO
INSERT INTO [security_module]([id], [description], [name], [priority], [sn], [url], [parent_id])
  VALUES(1, '所有模块的根节点，不能删除。', '根模块', 1, 'Root', '#', NULL)
GO
INSERT INTO [security_module]([id], [description], [name], [priority], [sn], [url], [parent_id])
  VALUES(2, '安全管理:包含权限管理、模块管理等。', '系统管理', 99, 'Security', '#', 1)
GO
INSERT INTO [security_module]([id], [description], [name], [priority], [sn], [url], [parent_id])
  VALUES(3, '', '用户管理', 99, 'User', '/management/security/user/list', 2)
GO
INSERT INTO [security_module]([id], [description], [name], [priority], [sn], [url], [parent_id])
  VALUES(4, '', '角色管理', 99, 'Role', '/management/security/role/list', 2)
GO
INSERT INTO [security_module]([id], [description], [name], [priority], [sn], [url], [parent_id])
  VALUES(5, '', '模块管理', 99, 'Module', '/management/security/module/tree_list', 2)
GO
INSERT INTO [security_module]([id], [description], [name], [priority], [sn], [url], [parent_id])
  VALUES(10, '一个开发使用的简单示例。', '开发实例', 99, 'Sample', '#', 1)
GO
INSERT INTO [security_module]([id], [description], [name], [priority], [sn], [url], [parent_id])
  VALUES(14, '', '简单任务实例', 99, 'Task', '/management/sample/task/list', 10)
GO
INSERT INTO [security_module]([id], [description], [name], [priority], [sn], [url], [parent_id])
  VALUES(18, '', '组织管理', 99, 'Organization', '/management/security/organization/tree_list', 2)
GO
INSERT INTO [security_module]([id], [description], [name], [priority], [sn], [url], [parent_id])
  VALUES(24, '', '缓存管理', 99, 'CacheManage', '/management/security/cacheManage/index', 2)
GO
INSERT INTO [security_module]([id], [description], [name], [priority], [sn], [url], [parent_id])
  VALUES(38, '测试下', '测试模块', 99, 'sdfs', '测试下', 1)
GO
INSERT INTO [security_module]([id], [description], [name], [priority], [sn], [url], [parent_id])
  VALUES(52, '', '自定义权限测试', 99, 'ggg', '/vv', 38)
GO
INSERT INTO [security_module]([id], [description], [name], [priority], [sn], [url], [parent_id])
  VALUES(53, '', '多级模块测试', 99, 'gg', '/gg', 52)
GO
INSERT INTO [security_module]([id], [description], [name], [priority], [sn], [url], [parent_id])
  VALUES(54, '', '模块测试2', 99, '多级模块测试2', '/hh', 53)
GO
INSERT INTO [security_module]([id], [description], [name], [priority], [sn], [url], [parent_id])
  VALUES(58, '', '新模块26', 99, 'ff', '/dd', 53)
GO
INSERT INTO [security_module]([id], [description], [name], [priority], [sn], [url], [parent_id])
  VALUES(59, '', '日志管理', 99, 'logEntity', '/management/security/logEntity/list', 2)
GO
INSERT INTO [security_module]([id], [description], [name], [priority], [sn], [url], [parent_id])
  VALUES(63, '', '职务管理', 99, 'Position', '/management/eduoa/position/list', 2)
GO
INSERT INTO [security_module]([id], [description], [name], [priority], [sn], [url], [parent_id])
  VALUES(64, '', '年级管理', 99, 'Grade', '/management/eduoa/grade/list', 2)
GO
INSERT INTO [security_module]([id], [description], [name], [priority], [sn], [url], [parent_id])
  VALUES(65, '', '班级管理', 99, 'Class', '/management/eduoa/class/tree_list', 2)
GO
INSERT INTO [security_module]([id], [description], [name], [priority], [sn], [url], [parent_id])
  VALUES(66, '', '人员组成分工', 99, 'Teacher', '#', 1)
GO
INSERT INTO [security_module]([id], [description], [name], [priority], [sn], [url], [parent_id])
  VALUES(67, '', '组织结构', 99, 'Structure', '/management/eduoa/structure/create', 66)
GO
INSERT INTO [security_module]([id], [description], [name], [priority], [sn], [url], [parent_id])
  VALUES(68, '', '组织机构查看', 99, 'StructureView', '/management/eduoa/structure/view', 66)
GO
INSERT INTO [security_module]([id], [description], [name], [priority], [sn], [url], [parent_id])
  VALUES(69, '', '科目管理', 99, 'Subject', '/management/eduoa/subject/list', 2)
GO
INSERT INTO [security_module]([id], [description], [name], [priority], [sn], [url], [parent_id])
  VALUES(70, '', '职称证书', 99, 'CertificateType', '/management/eduoa/certificatetype/list', 2)
GO
INSERT INTO [security_module]([id], [description], [name], [priority], [sn], [url], [parent_id])
  VALUES(72, '', '人员管理', 99, 'TeacherInfo', '/management/eduoa/teacher/list', 66)
GO
