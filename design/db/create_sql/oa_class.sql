CREATE TABLE [oa_class]  ( 
	[id]            	bigint(20) AUTO_INCREMENT NOT NULL,
	[grade_id]      	bigint(20) NULL,
	[class_name]    	varchar(50) NULL,
	[category]      	int(11) NULL,
	[description]   	varchar(200) NULL,
	[number_limit]  	int(11) NULL,
	[create_time]   	datetime NULL,
	[update_time]   	datetime NULL,
	[create_user_id]	bigint(20) NULL,
	[update_user_id]	bigint(20) NULL 
	)
GO
INSERT INTO [oa_class]([id], [grade_id], [class_name], [category], [description], [number_limit], [create_time], [update_time], [create_user_id], [update_user_id])
  VALUES(3, 5, '1班', 1, '23', 42, '2013-07-06 23:50:01.0', NULL, NULL, NULL)
GO
INSERT INTO [oa_class]([id], [grade_id], [class_name], [category], [description], [number_limit], [create_time], [update_time], [create_user_id], [update_user_id])
  VALUES(4, 5, '23', 1, '123', 23, '2013-07-06 23:50:17.0', NULL, NULL, NULL)
GO
INSERT INTO [oa_class]([id], [grade_id], [class_name], [category], [description], [number_limit], [create_time], [update_time], [create_user_id], [update_user_id])
  VALUES(5, 5, '9', 1, '12', 12, '2013-07-07 13:45:57.0', NULL, NULL, NULL)
GO
INSERT INTO [oa_class]([id], [grade_id], [class_name], [category], [description], [number_limit], [create_time], [update_time], [create_user_id], [update_user_id])
  VALUES(6, 5, 'qweq', 3, 'qw', 123, '2013-07-07 14:16:49.0', NULL, NULL, NULL)
GO
