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
  VALUES(1, '����ģ��ĸ��ڵ㣬����ɾ����', '��ģ��', 1, 'Root', '#', NULL);
INSERT INTO 'security_module'('id', 'description', 'name', 'priority', 'sn', 'url', 'parent_id')
  VALUES(2, '��ȫ����:����Ȩ�޹���ģ�����ȡ�', 'ϵͳ����', 99, 'Security', '#', 1);
INSERT INTO 'security_module'('id', 'description', 'name', 'priority', 'sn', 'url', 'parent_id')
  VALUES(3, '', '�û�����', 99, 'User', '/management/security/user/list', 2);
INSERT INTO 'security_module'('id', 'description', 'name', 'priority', 'sn', 'url', 'parent_id')
  VALUES(4, '', '��ɫ����', 99, 'Role', '/management/security/role/list', 2);
INSERT INTO 'security_module'('id', 'description', 'name', 'priority', 'sn', 'url', 'parent_id')
  VALUES(5, '', 'ģ�����', 99, 'Module', '/management/security/module/tree_list', 2);
INSERT INTO 'security_module'('id', 'description', 'name', 'priority', 'sn', 'url', 'parent_id')
  VALUES(10, 'һ������ʹ�õļ�ʾ����', '����ʵ��', 99, 'Sample', '#', 1);
INSERT INTO 'security_module'('id', 'description', 'name', 'priority', 'sn', 'url', 'parent_id')
  VALUES(14, '', '������ʵ��', 99, 'Task', '/management/sample/task/list', 10);
INSERT INTO 'security_module'('id', 'description', 'name', 'priority', 'sn', 'url', 'parent_id')
  VALUES(18, '', '��֯����', 99, 'Organization', '/management/security/organization/tree_list', 2);
INSERT INTO 'security_module'('id', 'description', 'name', 'priority', 'sn', 'url', 'parent_id')
  VALUES(24, '', '�������', 99, 'CacheManage', '/management/security/cacheManage/index', 2);
INSERT INTO 'security_module'('id', 'description', 'name', 'priority', 'sn', 'url', 'parent_id')
  VALUES(38, '������', '����ģ��', 99, 'sdfs', '������', 1);
INSERT INTO 'security_module'('id', 'description', 'name', 'priority', 'sn', 'url', 'parent_id')
  VALUES(52, '', '�Զ���Ȩ�޲���', 99, 'ggg', '/vv', 38);
INSERT INTO 'security_module'('id', 'description', 'name', 'priority', 'sn', 'url', 'parent_id')
  VALUES(53, '', '�༶ģ�����', 99, 'gg', '/gg', 52);
INSERT INTO 'security_module'('id', 'description', 'name', 'priority', 'sn', 'url', 'parent_id')
  VALUES(54, '', 'ģ�����2', 99, '�༶ģ�����2', '/hh', 53);
INSERT INTO 'security_module'('id', 'description', 'name', 'priority', 'sn', 'url', 'parent_id')
  VALUES(58, '', '��ģ��26', 99, 'ff', '/dd', 53);
INSERT INTO 'security_module'('id', 'description', 'name', 'priority', 'sn', 'url', 'parent_id')
  VALUES(59, '', '��־����', 99, 'logEntity', '/management/security/logEntity/list', 2);
INSERT INTO 'security_module'('id', 'description', 'name', 'priority', 'sn', 'url', 'parent_id')
  VALUES(63, '', 'ְ�����', 99, 'Position', '/management/eduoa/position/list', 2);
INSERT INTO 'security_module'('id', 'description', 'name', 'priority', 'sn', 'url', 'parent_id')
  VALUES(64, '', '�꼶����', 99, 'Grade', '/management/eduoa/grade/list', 2);
INSERT INTO 'security_module'('id', 'description', 'name', 'priority', 'sn', 'url', 'parent_id')
  VALUES(65, '', '�༶����', 99, 'Class', '/management/eduoa/class/tree_list', 2);
INSERT INTO 'security_module'('id', 'description', 'name', 'priority', 'sn', 'url', 'parent_id')
  VALUES(66, '', '��Ա��ɷֹ�', 99, 'Teacher', '#', 1);
INSERT INTO 'security_module'('id', 'description', 'name', 'priority', 'sn', 'url', 'parent_id')
  VALUES(67, '', '��֯�ṹ', 99, 'Structure', '/management/eduoa/structure/create', 66);
INSERT INTO 'security_module'('id', 'description', 'name', 'priority', 'sn', 'url', 'parent_id')
  VALUES(68, '', '��֯�����鿴', 99, 'StructureView', '/management/eduoa/structure/view', 66);
INSERT INTO 'security_module'('id', 'description', 'name', 'priority', 'sn', 'url', 'parent_id')
  VALUES(69, '', '��Ŀ����', 99, 'Subject', '/management/eduoa/subject/list', 2);
INSERT INTO 'security_module'('id', 'description', 'name', 'priority', 'sn', 'url', 'parent_id')
  VALUES(70, '', 'ְ��֤��', 99, 'CertificateType', '/management/eduoa/certificatetype/list', 2);
INSERT INTO 'security_module'('id', 'description', 'name', 'priority', 'sn', 'url', 'parent_id')
  VALUES(72, '', '��ʦ��Ϣ����', 99, 'TeacherInfo', '/management/eduoa/teacher/list', 66);
INSERT INTO 'security_module'('id', 'description', 'name', 'priority', 'sn', 'url', 'parent_id')
  VALUES(74, '', 'ѧ����Ϣ����', 99, 'StudentInfo', '/management/eduoa/student/list', 66);
INSERT INTO 'security_module'('id', 'description', 'name', 'priority', 'sn', 'url', 'parent_id')
  VALUES(75, '', '�ճ��칫����', 99, 'Work', '#', 1);
INSERT INTO 'security_module'('id', 'description', 'name', 'priority', 'sn', 'url', 'parent_id')
  VALUES(76, '', '�����ٹ���', 99, 'Leave', '#', 75);
INSERT INTO 'security_module'('id', 'description', 'name', 'priority', 'sn', 'url', 'parent_id')
  VALUES(79, '', '�������', 99, 'LeavePermit', '/management/eduoa/leavepermit/listDraft', 76);
INSERT INTO 'security_module'('id', 'description', 'name', 'priority', 'sn', 'url', 'parent_id')
  VALUES(80, '', '���ύ', 99, 'listApproval', '/management/eduoa/leavepermit/listApproval', 76);
INSERT INTO 'security_module'('id', 'description', 'name', 'priority', 'sn', 'url', 'parent_id')
  VALUES(82, '', '�������', 99, 'Permit', ' 	 /management/eduoa/leavepermit/list', 76);
INSERT INTO 'security_module'('id', 'description', 'name', 'priority', 'sn', 'url', 'parent_id')
  VALUES(83, '', '�����', 99, 'listFinish', '/management/eduoa/leavepermit/listFinish', 76);
