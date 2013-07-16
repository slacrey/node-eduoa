
CREATE TABLE `cms_article`  ( 
	`id`              	bigint(20) AUTO_INCREMENT NOT NULL,
	`channel_id`      	bigint(20) NULL,
	`article_class_id`	bigint(20) NULL,
	`title`           	varchar(50) NULL,
	`summary`         	varchar(50) NULL,
	`content`         	text NULL,
	`hits`            	int(11) NULL,
	`create_time`     	datetime NULL,
	`create_user_id`  	bigint(20) NULL,
	`update_time`     	datetime NULL,
	`update_user_id`  	bigint(20) NULL,
	`article_state`   	int(11) NULL,
	PRIMARY KEY(`id`)
);
CREATE TABLE `cms_article_teacher`  ( 
	`id`           	bigint(20) AUTO_INCREMENT NOT NULL,
	`article_id`   	bigint(20) NULL,
	`teacher_name` 	varchar(10) NULL,
	`photo_url`    	varchar(100) NULL,
	`attachment_id`	bigint(20) NULL,
	PRIMARY KEY(`id`)
);
CREATE TABLE `cms_channel`  ( 
	`id`          	bigint(20) AUTO_INCREMENT NOT NULL,
	`channel_name`	varchar(100) NULL,
	`channel_sort`	int(11) NULL,
	`channel_url` 	varchar(200) NULL,
	PRIMARY KEY(`id`)
);
CREATE TABLE `oa_appraisal`  ( 
	`id`         	bigint(20) AUTO_INCREMENT NOT NULL,
	`atype`      	int(11) NULL,
	`start_month`	datetime NULL,
	`end_month`  	datetime NULL,
	`teacher_id` 	bigint(20) NULL,
	`create_time`	datetime NULL,
	`user_id`    	bigint(20) NULL,
	PRIMARY KEY(`id`)
);
CREATE TABLE `oa_certificate`  ( 
	`id`               	bigint(20) AUTO_INCREMENT NOT NULL,
	`type_id`          	bigint(20) NULL,
	`advanced`         	int(11) NULL,
	`certificates_time`	datetime NULL,
	`description`      	varchar(200) NULL,
	`teacher_id`       	bigint(20) NULL,
	PRIMARY KEY(`id`)
);
CREATE TABLE `oa_certificate_type`  ( 
	`id`         	bigint(20) AUTO_INCREMENT NOT NULL,
	`type_name`  	varchar(50) NULL,
	`description`	varchar(200) NULL,
	`type_level` 	int(11) NULL,
	PRIMARY KEY(`id`)
);
CREATE TABLE `oa_class`  ( 
	`id`            	bigint(20) AUTO_INCREMENT NOT NULL,
	`grade_id`      	bigint(20) NULL,
	`class_name`    	varchar(50) NULL,
	`category`      	int(11) NULL,
	`description`   	varchar(200) NULL,
	`number_limit`  	int(11) NULL,
	`create_time`   	datetime NULL,
	`update_time`   	datetime NULL,
	`create_user_id`	bigint(20) NULL,
	`update_user_id`	bigint(20) NULL,
	PRIMARY KEY(`id`)
);
CREATE TABLE `oa_class_teacher`  ( 
	`id`          	bigint(20) AUTO_INCREMENT NOT NULL,
	`class_id`    	bigint(20) NULL,
	`teacher_id`  	bigint(20) NULL,
	`start_time`  	datetime NULL,
	`end_time`    	datetime NULL,
	`head_teacher`	int(11) NULL,
	PRIMARY KEY(`id`)
);
CREATE TABLE `oa_contact`  ( 
	`id`          	bigint(20) AUTO_INCREMENT NOT NULL,
	`student_id`  	bigint(20) NULL,
	`nexus`       	varchar(20) NULL,
	`contact_name`	varchar(50) NULL,
	`job`         	varchar(50) NULL,
	`phone`       	varchar(20) NULL,
	`qq`          	varchar(20) NULL,
	`email`       	varchar(20) NULL,
	`address`     	varchar(200) NULL,
	`home_phone`  	varchar(20) NULL,
	`office_phone`	varchar(20) NULL,
	`create_time` 	datetime NULL,
	`update_time` 	datetime NULL,
	PRIMARY KEY(`id`)
);
CREATE TABLE `oa_dictionary`  ( 
	`id`       	bigint(20) AUTO_INCREMENT NOT NULL,
	`dict_name`	varchar(50) NULL,
	`dict_key` 	varchar(50) NULL,
	`parent_id`	bigint(20) NULL,
	PRIMARY KEY(`id`)
);
CREATE TABLE `oa_dictionary_value`  ( 
	`id`           	bigint(20) AUTO_INCREMENT NOT NULL,
	`dictionary_id`	bigint(20) NULL,
	`dict_label`   	varchar(50) NULL,
	`dict_value`   	varchar(100) NULL,
	PRIMARY KEY(`id`)
);
CREATE TABLE `oa_goods_apply`  ( 
	`id`                     	bigint(20) NOT NULL,
	`leader_id`              	bigint(20) NULL,
	`leader_name`            	varchar(30) NULL,
	`leader_position`        	varchar(30) NULL,
	`goods_id`               	bigint(20) NULL,
	`goods_name`             	varchar(50) NULL,
	`goods_unit`             	varchar(50) NULL,
	`apply_teacher_id`       	bigint(20) NULL,
	`apply_teacher_name`     	varchar(30) NULL,
	`apply_organization_id`  	bigint(20) NULL,
	`apply_organization_name`	varchar(30) NULL,
	`create_time`            	datetime NULL,
	`apply_time`             	datetime NULL,
	`apply_statue`           	int(11) NULL,
	`statue`                 	int(11) NULL,
	PRIMARY KEY(`id`)
);
CREATE TABLE `oa_grade`  ( 
	`id`          	bigint(20) AUTO_INCREMENT NOT NULL,
	`grade_name`  	varchar(50) NULL,
	`description` 	varchar(255) NULL,
	`create_time` 	datetime NULL,
	`current_year`	int(11) NULL,
	`current_half`	int(11) NULL,
	`start_time`  	datetime NULL,
	`end_time`    	datetime NULL,
	PRIMARY KEY(`id`)
);
CREATE TABLE `oa_leave_permit`  ( 
	`id`                	bigint(20) NOT NULL,
	`leader_id`         	bigint(20) NULL,
	`leader_name`       	varchar(30) NULL,
	`leader_position`   	varchar(30) NULL,
	`reason`            	varchar(200) NULL,
	`remark`            	varchar(255) NULL,
	`start_time`        	datetime NULL,
	`end_time`          	datetime NULL,
	`apply_time`        	datetime NULL,
	`apply_teacher_id`  	bigint(20) NULL,
	`apply_teacher_name`	varchar(30) NULL,
	`create_time`       	datetime NULL,
	`statue`            	int(11) NULL,
	`apply_statue`      	int(11) NULL,
	PRIMARY KEY(`id`)
);
CREATE TABLE `oa_organizational_structure`  ( 
	`id`            	bigint(20) AUTO_INCREMENT NOT NULL,
	`structure_name`	varchar(50) NULL,
	`create_time`   	datetime NULL,
	`user_id`       	bigint(20) NULL,
	`attachment_id` 	bigint(20) NULL,
	PRIMARY KEY(`id`)
);
CREATE TABLE `oa_position`  ( 
	`id`           	bigint(20) AUTO_INCREMENT NOT NULL,
	`position_name`	varchar(50) NULL,
	`description`  	varchar(200) NULL,
	PRIMARY KEY(`id`)
);
CREATE TABLE `oa_student`  ( 
	`id`            	bigint(20) AUTO_INCREMENT NOT NULL,
	`student_name`  	varchar(50) NULL,
	`id_number`     	varchar(18) NULL,
	`gender`        	int(11) NULL,
	`student_number`	int(11) NULL,
	`birthday`      	datetime NULL,
	`create_time`   	datetime NULL,
	`update_time`   	datetime NULL,
	`operator_id`   	bigint(20) NULL,
	`grade_name`    	varchar(30) NULL,
	`class_name`    	varchar(30) NULL,
	`current_year`  	int(11) NULL,
	`category_name` 	varchar(30) NULL,
	PRIMARY KEY(`id`)
);
CREATE TABLE `oa_student_class`  ( 
	`id`          	bigint(20) AUTO_INCREMENT NOT NULL,
	`student_id`  	bigint(20) NOT NULL,
	`class_id`    	bigint(20) NOT NULL,
	`start_time`  	datetime NULL,
	`end_time`    	datetime NULL,
	`current_year`	int(11) NULL,
	PRIMARY KEY(`id`)
);
CREATE TABLE `oa_student_grade`  ( 
	`id`          	bigint(20) AUTO_INCREMENT NOT NULL,
	`grade_id`    	bigint(20) NOT NULL,
	`student_id`  	bigint(20) NOT NULL,
	`start_time`  	datetime NULL,
	`end_time`    	datetime NULL,
	`current_year`	int(11) NULL,
	PRIMARY KEY(`id`)
);
CREATE TABLE `oa_subject`  ( 
	`id`          	bigint(20) AUTO_INCREMENT NOT NULL,
	`subject_name`	varchar(50) NULL,
	`description` 	varchar(200) NULL,
	PRIMARY KEY(`id`)
);
CREATE TABLE `oa_teacher_info`  ( 
	`id`                     	bigint(20) AUTO_INCREMENT NOT NULL,
	`teacher_name`           	varchar(50) NULL,
	`teacher_number`         	varchar(20) NULL,
	`grade_id`               	bigint(20) NULL,
	`org_id`                 	bigint(20) NULL,
	`id_number`              	varchar(18) NULL,
	`is_teacher`             	int(11) NULL,
	`position_id`            	bigint(20) NULL,
	`phone`                  	varchar(20) NULL,
	`head_teacher`           	int(11) NULL,
	`email`                  	varchar(50) NULL,
	`subject_id`             	bigint(20) NULL,
	`gender`                 	int(11) NULL,
	`birthday`               	datetime NULL,
	`political_landscape`    	int(11) NULL,
	`join_time`              	datetime NULL,
	`working_time`           	datetime NULL,
	`original_education`     	int(11) NULL,
	`original_education_time`	datetime NULL,
	`special`                	varchar(50) NULL,
	`new_education`          	int(11) NULL,
	`new_education_time`     	datetime NULL,
	`certificates_time`      	datetime NULL,
	`establishment`          	int(11) NULL,
	`create_time`            	datetime NULL,
	`update_time`            	datetime NULL,
	`certificates_type`      	int(11) NULL,
	PRIMARY KEY(`id`)
);
CREATE TABLE `security_log_entity`  ( 
	`id`         	bigint(20) AUTO_INCREMENT NOT NULL,
	`create_time`	datetime NULL,
	`ip_address` 	varchar(16) NULL,
	`log_level`  	varchar(16) NULL,
	`message`    	varchar(255) NULL,
	`username`   	varchar(32) NULL,
	PRIMARY KEY(`id`)
);
CREATE TABLE `security_module`  ( 
	`id`         	bigint(20) AUTO_INCREMENT NOT NULL,
	`description`	varchar(255) NULL,
	`name`       	varchar(32) NOT NULL,
	`priority`   	int(11) NOT NULL,
	`sn`         	varchar(32) NOT NULL,
	`url`        	varchar(255) NOT NULL,
	`parent_id`  	bigint(20) NULL,
	PRIMARY KEY(`id`)
);
CREATE TABLE `security_organization`  ( 
	`id`         	bigint(20) AUTO_INCREMENT NOT NULL,
	`description`	varchar(255) NULL,
	`name`       	varchar(64) NOT NULL,
	`parent_id`  	bigint(20) NULL,
	`org_order`  	int(11) NULL,
	PRIMARY KEY(`id`)
);
CREATE TABLE `security_organization_role`  ( 
	`id`             	bigint(20) AUTO_INCREMENT NOT NULL,
	`priority`       	int(11) NOT NULL,
	`organization_id`	bigint(20) NULL,
	`role_id`        	bigint(20) NULL,
	PRIMARY KEY(`id`)
);
CREATE TABLE `security_permission`  ( 
	`id`         	bigint(20) AUTO_INCREMENT NOT NULL,
	`description`	varchar(255) NULL,
	`name`       	varchar(32) NOT NULL,
	`short_name` 	varchar(16) NOT NULL,
	`module_id`  	bigint(20) NULL,
	PRIMARY KEY(`id`)
);
CREATE TABLE `security_role`  ( 
	`id`         	bigint(20) AUTO_INCREMENT NOT NULL,
	`description`	varchar(255) NULL,
	`name`       	varchar(32) NOT NULL,
	PRIMARY KEY(`id`)
);
CREATE TABLE `security_role_permission`  ( 
	`id`           	bigint(20) AUTO_INCREMENT NOT NULL,
	`permission_id`	bigint(20) NULL,
	`role_id`      	bigint(20) NULL,
	PRIMARY KEY(`id`)
);
CREATE TABLE `security_user`  ( 
	`id`         	bigint(20) AUTO_INCREMENT NOT NULL,
	`create_time`	datetime NULL,
	`email`      	varchar(128) NULL,
	`password`   	varchar(64) NOT NULL,
	`phone`      	varchar(32) NULL,
	`realname`   	varchar(32) NOT NULL,
	`salt`       	varchar(32) NOT NULL,
	`status`     	varchar(16) NOT NULL,
	`username`   	varchar(32) NOT NULL,
	`org_id`     	bigint(20) NULL,
	`teacher_id` 	bigint(20) NULL,
	PRIMARY KEY(`id`)
);
CREATE TABLE `security_user_role`  ( 
	`id`      	bigint(20) AUTO_INCREMENT NOT NULL,
	`priority`	int(11) NOT NULL,
	`role_id` 	bigint(20) NULL,
	`user_id` 	bigint(20) NULL,
	PRIMARY KEY(`id`)
);
CREATE TABLE `ss_task`  ( 
	`id`         	bigint(20) AUTO_INCREMENT NOT NULL,
	`description`	varchar(255) NULL,
	`title`      	varchar(32) NOT NULL,
	PRIMARY KEY(`id`)
);
CREATE TABLE `sys_attachment`  ( 
	`id`             	bigint(20) AUTO_INCREMENT NOT NULL,
	`file_name`      	varchar(100) NULL,
	`file_ext`       	varchar(100) NULL,
	`file_size`      	int(10) NULL,
	`service_file`   	varchar(200) NULL,
	`create_time`    	datetime NULL,
	`user_id`        	bigint(20) NULL,
	`attachment_type`	int(11) NULL,
	`url_path`       	varchar(255) NULL,
	PRIMARY KEY(`id`)
);
CREATE TABLE `sys_type_rules`  ( 
	`id`         	bigint(20) AUTO_INCREMENT NOT NULL,
	`applay_id`  	bigint(20) NULL,
	`role_type`  	int(11) NULL,
	`role_name`  	varchar(50) NULL,
	`content`    	varchar(500) NULL,
	`create_time`	datetime NULL,
	PRIMARY KEY(`id`)
);

