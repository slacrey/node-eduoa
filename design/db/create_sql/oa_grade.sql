CREATE TABLE oa_grade  ( 
	id          	bigint(20) AUTO_INCREMENT NOT NULL,
	grade_name  	varchar(50) NULL,
	description 	varchar(255) NULL,
	create_time 	datetime NULL,
	current_year	int(11) NULL,
	current_half	int(11) COMMENT '?'  NULL,
	start_time  	datetime NULL,
	end_time    	datetime NULL 
	);
INSERT INTO oa_grade(id, grade_name, description, create_time, current_year, current_half, start_time, end_time)
  VALUES(13, '高一年级', '', '2013-07-13 22:20:14.0', 2013, 1, '2012-09-01 00:00:00.0', '2013-02-01 00:00:00.0');
INSERT INTO oa_grade(id, grade_name, description, create_time, current_year, current_half, start_time, end_time)
  VALUES(14, '高一年级', '', '2013-07-13 22:21:08.0', 2013, 2, '2013-03-01 00:00:00.0', '2013-06-26 00:00:00.0');
INSERT INTO oa_grade(id, grade_name, description, create_time, current_year, current_half, start_time, end_time)
  VALUES(15, '高二年级', '', '2013-07-13 22:22:41.0', 2013, 1, '2012-09-01 00:00:00.0', '2013-02-01 00:00:00.0');
INSERT INTO oa_grade(id, grade_name, description, create_time, current_year, current_half, start_time, end_time)
  VALUES(16, '高二年级', '', '2013-07-13 22:23:08.0', 2013, 2, '2013-03-01 00:00:00.0', '2013-06-26 00:00:00.0');
INSERT INTO oa_grade(id, grade_name, description, create_time, current_year, current_half, start_time, end_time)
  VALUES(17, '高三年级', '', '2013-07-13 22:23:28.0', 2013, 1, '2012-09-01 00:00:00.0', '2013-02-01 00:00:00.0');
INSERT INTO oa_grade(id, grade_name, description, create_time, current_year, current_half, start_time, end_time)
  VALUES(18, '高三年级', '', '2013-07-13 22:23:44.0', 2013, 2, '2013-03-01 00:00:00.0', '2013-06-26 00:00:00.0');
