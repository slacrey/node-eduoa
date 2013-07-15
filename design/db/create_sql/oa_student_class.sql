CREATE TABLE oa_student_class  ( 
	id          	bigint(20) AUTO_INCREMENT NOT NULL,
	student_id  	bigint(20) NOT NULL,
	class_id    	bigint(20) NOT NULL,
	start_time  	datetime NULL,
	end_time    	datetime NULL,
	current_year	int(11) NULL 
	)
COMMENT = '?' ;
INSERT INTO oa_student_class(id, student_id, class_id, start_time, end_time, current_year)
  VALUES(3, 11, 9, '2012-09-01 00:00:00.0', '2013-02-01 00:00:00.0', 2013);
INSERT INTO oa_student_class(id, student_id, class_id, start_time, end_time, current_year)
  VALUES(4, 12, 9, '2012-09-01 00:00:00.0', '2013-02-01 00:00:00.0', 2013);
INSERT INTO oa_student_class(id, student_id, class_id, start_time, end_time, current_year)
  VALUES(5, 11, 9, '2012-09-01 00:00:00.0', '2013-02-01 00:00:00.0', 2013);
