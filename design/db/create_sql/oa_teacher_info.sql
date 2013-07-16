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
