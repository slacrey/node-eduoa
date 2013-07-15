CREATE TABLE oa_certificate  ( 
	id               	bigint(20) AUTO_INCREMENT NOT NULL,
	type_id          	bigint(20) NULL,
	advanced         	int(11) NULL,
	certificates_time	datetime NULL,
	description      	varchar(200) NULL,
	teacher_id       	bigint(20) NULL 
	)
COMMENT = '?' ;
