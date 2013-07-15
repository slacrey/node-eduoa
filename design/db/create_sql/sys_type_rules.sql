CREATE TABLE sys_type_rules  ( 
	id         	bigint(20) AUTO_INCREMENT NOT NULL,
	applay_id  	bigint(20) NULL,
	role_type  	int(11) NULL,
	role_name  	varchar(50) NULL,
	content    	varchar(500) NULL,
	create_time	datetime NULL 
	);
