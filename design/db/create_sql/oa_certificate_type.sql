CREATE TABLE oa_certificate_type  ( 
	id         	bigint(20) AUTO_INCREMENT NOT NULL,
	type_name  	varchar(50) NULL,
	description	varchar(200) NULL,
	type_level 	int(11) COMMENT '?'  NULL 
	)
COMMENT = '?' ;
INSERT INTO oa_certificate_type(id, type_name, description, type_level)
  VALUES(1, '°¢Ë¹´ï', '123', 23);
INSERT INTO oa_certificate_type(id, type_name, description, type_level)
  VALUES(2, '12322231', '123', 222);
