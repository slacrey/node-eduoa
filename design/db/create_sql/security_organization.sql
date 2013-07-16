CREATE TABLE security_organization  ( 
	id         	bigint(20) AUTO_INCREMENT NOT NULL,
	description	varchar(255) NULL,
	name       	varchar(64) NOT NULL,
	parent_id  	bigint(20) NULL,
	org_order  	int(11) NULL 
	);

