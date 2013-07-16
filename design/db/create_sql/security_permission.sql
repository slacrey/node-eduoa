CREATE TABLE security_permission  ( 
	id         	bigint(20) AUTO_INCREMENT NOT NULL,
	description	varchar(255) NULL,
	name       	varchar(32) NOT NULL,
	short_name 	varchar(16) NOT NULL,
	module_id  	bigint(20) NULL 
	);
