CREATE TABLE [oa_class_teacher]  ( 
	[id]          	bigint(20) AUTO_INCREMENT NOT NULL,
	[class_id]    	bigint(20) NULL,
	[teacher_id]  	bigint(20) NULL,
	[start_time]  	datetime NULL,
	[end_time]    	datetime NULL,
	[head_teacher]	int(11) NULL 
	)
GO
