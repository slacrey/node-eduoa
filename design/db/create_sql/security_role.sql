CREATE TABLE [security_role]  ( 
	[id]         	bigint(20) AUTO_INCREMENT NOT NULL,
	[description]	varchar(255) NULL,
	[name]       	varchar(32) NOT NULL 
	)
GO
INSERT INTO [security_role]([id], [description], [name])
  VALUES(3, '', '管理员')
GO
INSERT INTO [security_role]([id], [description], [name])
  VALUES(4, NULL, '财务人员')
GO
INSERT INTO [security_role]([id], [description], [name])
  VALUES(5, NULL, '营销人员')
GO
INSERT INTO [security_role]([id], [description], [name])
  VALUES(7, NULL, '任务实例角色')
GO
INSERT INTO [security_role]([id], [description], [name])
  VALUES(8, '仅仅是测试角色2', 'test')
GO
