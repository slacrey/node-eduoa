CREATE TABLE [oa_grade]  ( 
	[id]          	bigint(20) AUTO_INCREMENT NOT NULL,
	[grade_name]  	varchar(50) NULL,
	[description] 	varchar(255) NULL,
	[create_time] 	datetime NULL,
	[current_year]	int(11) NULL,
	[current_half]	int(11) COMMENT 'ѧ'  NULL 
	)
GO
INSERT INTO [oa_grade]([id], [grade_name], [description], [create_time], [current_year], [current_half])
  VALUES(4, 'qwe', 'qwe', '2013-07-06 18:17:55.0', 2010, 1)
GO
INSERT INTO [oa_grade]([id], [grade_name], [description], [create_time], [current_year], [current_half])
  VALUES(5, 'sdasdsa', '12323123', NULL, 2013, 2)
GO
INSERT INTO [oa_grade]([id], [grade_name], [description], [create_time], [current_year], [current_half])
  VALUES(6, '123', '123', '2013-07-06 23:35:07.0', 2013, 1)
GO
INSERT INTO [oa_grade]([id], [grade_name], [description], [create_time], [current_year], [current_half])
  VALUES(7, 'qwe', 'qwe', '2013-07-07 14:17:51.0', 2013, 1)
GO
INSERT INTO [oa_grade]([id], [grade_name], [description], [create_time], [current_year], [current_half])
  VALUES(8, 'wqe', 'qwe', '2013-07-07 14:22:26.0', 2013, 1)
GO
INSERT INTO [oa_grade]([id], [grade_name], [description], [create_time], [current_year], [current_half])
  VALUES(9, '332', 'wqe', '2013-07-07 14:22:56.0', 2013, 1)
GO
