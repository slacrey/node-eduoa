CREATE TABLE oa_subject  ( 
	id          	bigint(20) AUTO_INCREMENT NOT NULL,
	subject_name	varchar(50) COMMENT '?'  NULL,
	description 	varchar(200) NULL 
	)
COMMENT = '?' ;
INSERT INTO oa_subject(id, subject_name, description)
  VALUES(3, '语文', '');
INSERT INTO oa_subject(id, subject_name, description)
  VALUES(4, '数学', '');
INSERT INTO oa_subject(id, subject_name, description)
  VALUES(5, '英语', '');
INSERT INTO oa_subject(id, subject_name, description)
  VALUES(6, '物理', '');
INSERT INTO oa_subject(id, subject_name, description)
  VALUES(7, '化学', '');
INSERT INTO oa_subject(id, subject_name, description)
  VALUES(8, '生物', '');
