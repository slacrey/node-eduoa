CREATE TABLE security_module  ( 
	id         	bigint(20) AUTO_INCREMENT NOT NULL,
	description	varchar(255) NULL,
	name       	varchar(32) NOT NULL,
	priority   	int(11) NOT NULL,
	sn         	varchar(32) NOT NULL,
	url        	varchar(255) NOT NULL,
	parent_id  	bigint(20) NULL 
	);

