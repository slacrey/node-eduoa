CREATE TABLE [oa_contact]  ( 
	[id]          	bigint(20) AUTO_INCREMENT NOT NULL,
	[student_id]  	bigint(20) NULL,
	[nexus]       	varchar(20) NULL,
	[contact_name]	varchar(50) NULL,
	[job]         	varchar(50) NULL,
	[phone]       	varchar(20) NULL,
	[qq]          	varchar(20) NULL,
	[email]       	varchar(20) NULL,
	[address]     	varchar(200) NULL,
	[home_phone]  	varchar(20) NULL,
	[office_phone]	varchar(20) NULL,
	[create_time] 	datetime NULL,
	[update_time] 	datetime NULL 
	)
GO
