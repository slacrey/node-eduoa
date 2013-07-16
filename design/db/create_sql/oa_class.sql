CREATE TABLE oa_class  ( 
	id            	bigint(20) AUTO_INCREMENT NOT NULL,
	grade_id      	bigint(20) NULL,
	class_name    	varchar(50) NULL,
	category      	int(11) NULL,
	description   	varchar(200) NULL,
	number_limit  	int(11) NULL,
	create_time   	datetime NULL,
	update_time   	datetime NULL,
	create_user_id	bigint(20) NULL,
	update_user_id	bigint(20) NULL 
	);

