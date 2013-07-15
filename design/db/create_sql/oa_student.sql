CREATE TABLE oa_student  ( 
	id            	bigint(20) AUTO_INCREMENT NOT NULL,
	student_name  	varchar(50) NULL,
	id_number     	varchar(18) NULL,
	gender        	int(11) NULL,
	student_number	int(11) NULL,
	birthday      	datetime NULL,
	create_time   	datetime NULL,
	update_time   	datetime NULL,
	operator_id   	bigint(20) NULL,
	grade_name    	varchar(30) NULL,
	class_name    	varchar(30) NULL,
	current_year  	int(11) NULL,
	category_name 	varchar(30) NULL 
	);
INSERT INTO oa_student(id, student_name, id_number, gender, student_number, birthday, create_time, update_time, operator_id, grade_name, class_name, current_year, category_name)
  VALUES(11, '林锋', '3454214324', 1, 3, '2013-07-08 00:00:00.0', '2013-07-14 18:57:55.0', NULL, NULL, '高一年级', '高一（3）班', 2013, '全科');
INSERT INTO oa_student(id, student_name, id_number, gender, student_number, birthday, create_time, update_time, operator_id, grade_name, class_name, current_year, category_name)
  VALUES(12, '张三', '76543', 0, 2, '2013-07-17 00:00:00.0', '2013-07-14 18:48:14.0', NULL, NULL, '高一年级', '高一（3）班', 2013, '全科');
