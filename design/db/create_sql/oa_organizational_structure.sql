CREATE TABLE oa_organizational_structure  ( 
	id            	bigint(20) AUTO_INCREMENT NOT NULL,
	structure_name	varchar(50) NULL,
	create_time   	datetime NULL,
	user_id       	bigint(20) NULL,
	attachment_id 	bigint(20) NULL 
	);
INSERT INTO oa_organizational_structure(id, structure_name, create_time, user_id, attachment_id)
  VALUES(17, '组织机构', '2013-07-07 14:46:52.0', 1, 17);
