CREATE TABLE [oa_appraisal]  ( 
	[id]         	bigint(20) AUTO_INCREMENT NOT NULL,
	[atype]      	int(11) NULL,
	[start_month]	datetime NULL,
	[end_month]  	datetime NULL,
	[teacher_id] 	bigint(20) NULL,
	[create_time]	datetime NULL,
	[user_id]    	bigint(20) NULL 
	)
GO
