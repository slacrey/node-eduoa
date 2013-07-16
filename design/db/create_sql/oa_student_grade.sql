CREATE TABLE oa_student_grade  ( 
	id          	bigint(20) AUTO_INCREMENT NOT NULL,
	grade_id    	bigint(20) NOT NULL,
	student_id  	bigint(20) COMMENT '?'  NOT NULL,
	start_time  	datetime NULL,
	end_time    	datetime NULL,
	current_year	int(11) NULL 
	)
COMMENT = '?' ;

