CREATE TABLE oa_student_grade  ( 
	id          	bigint(20) AUTO_INCREMENT NOT NULL,
	grade_id    	bigint(20) NOT NULL,
	student_id  	bigint(20) COMMENT '?'  NOT NULL,
	start_time  	datetime NULL,
	end_time    	datetime NULL,
	current_year	int(11) NULL 
	)
COMMENT = '?' ;
INSERT INTO oa_student_grade(id, grade_id, student_id, start_time, end_time, current_year)
  VALUES(3, 13, 11, '2012-09-01 00:00:00.0', '2013-02-01 00:00:00.0', 2013);
INSERT INTO oa_student_grade(id, grade_id, student_id, start_time, end_time, current_year)
  VALUES(4, 13, 12, '2012-09-01 00:00:00.0', '2013-02-01 00:00:00.0', 2013);
INSERT INTO oa_student_grade(id, grade_id, student_id, start_time, end_time, current_year)
  VALUES(5, 13, 11, '2012-09-01 00:00:00.0', '2013-02-01 00:00:00.0', 2013);
