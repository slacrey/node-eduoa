CREATE TABLE oa_teacher_info  ( 
	id                     	bigint(20) AUTO_INCREMENT NOT NULL,
	teacher_name           	varchar(50) NULL,
	teacher_number         	varchar(20) COMMENT '?'  NULL,
	grade_id               	bigint(20) NULL,
	org_id                 	bigint(20) NULL,
	id_number              	varchar(18) NULL,
	is_teacher             	int(11) NULL,
	position_id            	bigint(20) NULL,
	phone                  	varchar(20) NULL,
	head_teacher           	int(11) NULL,
	email                  	varchar(50) NULL,
	subject_id             	bigint(20) NULL,
	gender                 	int(11) NULL,
	birthday               	datetime NULL,
	political_landscape    	int(11) NULL,
	join_time              	datetime NULL,
	working_time           	datetime NULL,
	original_education     	int(11) NULL,
	original_education_time	datetime NULL,
	special                	varchar(50) NULL,
	new_education          	int(11) NULL,
	new_education_time     	datetime NULL,
	certificates_time      	datetime NULL,
	establishment          	int(11) NULL,
	create_time            	datetime NULL,
	update_time            	datetime NULL,
	certificates_type      	int(11) NULL 
	);
INSERT INTO oa_teacher_info(id, teacher_name, teacher_number, grade_id, org_id, id_number, is_teacher, position_id, phone, head_teacher, email, subject_id, gender, birthday, political_landscape, join_time, working_time, original_education, original_education_time, special, new_education, new_education_time, certificates_time, establishment, create_time, update_time, certificates_type)
  VALUES(2, '张慧华', '100001', NULL, 47, '123123', 0, 13, '213123', NULL, '12312321', 3, 0, '2013-07-17 00:00:00.0', 0, '2013-07-11 00:00:00.0', '2013-07-17 00:00:00.0', 1, '2013-07-30 00:00:00.0', NULL, 1, '2013-07-25 00:00:00.0', NULL, 1, NULL, NULL, NULL);
INSERT INTO oa_teacher_info(id, teacher_name, teacher_number, grade_id, org_id, id_number, is_teacher, position_id, phone, head_teacher, email, subject_id, gender, birthday, political_landscape, join_time, working_time, original_education, original_education_time, special, new_education, new_education_time, certificates_time, establishment, create_time, update_time, certificates_type)
  VALUES(3, '林锋', '100002', NULL, 43, '123123123', 0, NULL, '12312321', NULL, '12312321', 5, 0, '2013-07-18 00:00:00.0', 0, '2013-07-10 00:00:00.0', '2013-07-09 00:00:00.0', 1, '2013-07-26 00:00:00.0', NULL, 1, '2013-07-27 00:00:00.0', NULL, 1, NULL, NULL, NULL);
INSERT INTO oa_teacher_info(id, teacher_name, teacher_number, grade_id, org_id, id_number, is_teacher, position_id, phone, head_teacher, email, subject_id, gender, birthday, political_landscape, join_time, working_time, original_education, original_education_time, special, new_education, new_education_time, certificates_time, establishment, create_time, update_time, certificates_type)
  VALUES(6, '1231', '100002', NULL, 39, '3123213', 0, NULL, '123123', NULL, '123213', 4, 0, '2013-07-01 00:00:00.0', 0, '2013-07-02 00:00:00.0', '2013-07-01 00:00:00.0', 1, '2013-07-02 00:00:00.0', NULL, 1, '2013-07-24 00:00:00.0', NULL, 1, NULL, NULL, NULL);
INSERT INTO oa_teacher_info(id, teacher_name, teacher_number, grade_id, org_id, id_number, is_teacher, position_id, phone, head_teacher, email, subject_id, gender, birthday, political_landscape, join_time, working_time, original_education, original_education_time, special, new_education, new_education_time, certificates_time, establishment, create_time, update_time, certificates_type)
  VALUES(7, '林锋', '100010', 13, 38, '510231231233431432', 0, 8, '123455432', NULL, '23456@1243.com', NULL, 1, '2013-07-16 00:00:00.0', 0, '2013-07-10 00:00:00.0', '2013-07-15 00:00:00.0', 1, '2013-07-25 00:00:00.0', NULL, 1, '2013-07-18 00:00:00.0', NULL, 1, NULL, NULL, NULL);
