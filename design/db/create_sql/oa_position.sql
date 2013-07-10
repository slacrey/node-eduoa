CREATE TABLE [oa_position]  ( 
	[id]           	bigint(20) AUTO_INCREMENT NOT NULL,
	[position_name]	varchar(50) NULL,
	[description]  	varchar(200) NULL 
	)
COMMENT = 'ְ' 
GO
INSERT INTO [oa_position]([id], [position_name], [description])
  VALUES(7, '校长', '')
GO
INSERT INTO [oa_position]([id], [position_name], [description])
  VALUES(8, '副校长', '')
GO
INSERT INTO [oa_position]([id], [position_name], [description])
  VALUES(9, '年级主任', '')
GO
INSERT INTO [oa_position]([id], [position_name], [description])
  VALUES(10, '年级教学主任', '')
GO
INSERT INTO [oa_position]([id], [position_name], [description])
  VALUES(11, '年级纪律主任', '')
GO
INSERT INTO [oa_position]([id], [position_name], [description])
  VALUES(12, '年级组长', '')
GO
INSERT INTO [oa_position]([id], [position_name], [description])
  VALUES(13, '备科组长', '')
GO
INSERT INTO [oa_position]([id], [position_name], [description])
  VALUES(14, '学科教研组长', '')
GO
INSERT INTO [oa_position]([id], [position_name], [description])
  VALUES(15, '教务处主任', '')
GO
INSERT INTO [oa_position]([id], [position_name], [description])
  VALUES(16, '政教处主任', '')
GO
INSERT INTO [oa_position]([id], [position_name], [description])
  VALUES(17, '办公室主任', '')
GO
