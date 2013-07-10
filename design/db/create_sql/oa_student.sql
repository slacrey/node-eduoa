CREATE TABLE [oa_student]  ( 
	[id]            	bigint(20) AUTO_INCREMENT NOT NULL,
	[student_name]  	varchar(50) NULL,
	[id_number]     	varchar(18) NULL,
	[gender]        	int(11) NULL,
	[student_number]	varchar(30) NULL,
	[birthday]      	datetime NULL,
	[create_time]   	datetime NULL,
	[update_time]   	datetime NULL,
	[operator_id]   	bigint(20) NULL 
	)
GO
