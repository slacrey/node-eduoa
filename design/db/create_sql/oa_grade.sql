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

