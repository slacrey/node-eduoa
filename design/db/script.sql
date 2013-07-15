ALTER TABLE `cms_article_teacher`
	DROP FOREIGN KEY `FK_Reference_33`;
ALTER TABLE `cms_article`
	DROP FOREIGN KEY `FK_Reference_32`;
ALTER TABLE `sys_type_rules`
	DROP FOREIGN KEY `FK_Reference_23`;
ALTER TABLE `oa_certificate`
	DROP FOREIGN KEY `FK_Reference_31`;
ALTER TABLE `oa_class_teacher`
	DROP FOREIGN KEY `FK_Reference_22`;
ALTER TABLE `oa_student_class`
	DROP FOREIGN KEY `FK_Reference_29`;
ALTER TABLE `oa_dictionary`
	DROP FOREIGN KEY `FK_Reference_18`;
ALTER TABLE `oa_dictionary_value`
	DROP FOREIGN KEY `FK_Reference_19`;
ALTER TABLE `oa_class`
	DROP FOREIGN KEY `FK_Reference_grade_class`;
ALTER TABLE `oa_student_grade`
	DROP FOREIGN KEY `FK_Reference_27`;
ALTER TABLE `oa_teacher_info`
	DROP FOREIGN KEY `FK_Reference_6`;
ALTER TABLE `oa_teacher_info`
	DROP FOREIGN KEY `FK_Reference_8`;
ALTER TABLE `oa_contact`
	DROP FOREIGN KEY `FK_Reference_student_contact`;
ALTER TABLE `oa_student_class`
	DROP FOREIGN KEY `FK_Reference_28`;
ALTER TABLE `oa_student_grade`
	DROP FOREIGN KEY `FK_Reference_26`;
ALTER TABLE `oa_teacher_info`
	DROP FOREIGN KEY `FK_Reference_9`;
ALTER TABLE `oa_certificate`
	DROP FOREIGN KEY `FK_Reference_30`;
ALTER TABLE `oa_class_teacher`
	DROP FOREIGN KEY `FK_Reference_21`;
ALTER TABLE `security_user`
	DROP FOREIGN KEY `FK_Reference_35`;
ALTER TABLE `security_module`
	DROP FOREIGN KEY `FK6510844BB3395F9`;
ALTER TABLE `security_permission`
	DROP FOREIGN KEY `FKBA7A9C2E334A08F7`;
ALTER TABLE `oa_teacher_info`
	DROP FOREIGN KEY `FK_Reference_14`;
ALTER TABLE `security_organization`
	DROP FOREIGN KEY `FK1DBDA7D2FCC01B00`;
ALTER TABLE `security_organization_role`
	DROP FOREIGN KEY `FK557CA4C3D069FDD7`;
ALTER TABLE `security_user`
	DROP FOREIGN KEY `FKD607B56A453A1286`;
ALTER TABLE `security_role_permission`
	DROP FOREIGN KEY `FK679E223926E70397`;
ALTER TABLE `security_organization_role`
	DROP FOREIGN KEY `FK557CA4C3C592DFF7`;
ALTER TABLE `security_role_permission`
	DROP FOREIGN KEY `FK679E2239C592DFF7`;
ALTER TABLE `security_user_role`
	DROP FOREIGN KEY `FK6DD3562BC592DFF7`;
ALTER TABLE `security_user_role`
	DROP FOREIGN KEY `FK6DD3562B6ABDA3D7`;
DROP TABLE `cms_article`;
DROP TABLE `cms_article_teacher`;
DROP TABLE `cms_channel`;
DROP TABLE `oa_appraisal`;
DROP TABLE `oa_certificate`;
DROP TABLE `oa_certificate_type`;
DROP TABLE `oa_class`;
DROP TABLE `oa_class_teacher`;
DROP TABLE `oa_contact`;
DROP TABLE `oa_dictionary`;
DROP TABLE `oa_dictionary_value`;
DROP TABLE `oa_goods_apply`;
DROP TABLE `oa_grade`;
DROP TABLE `oa_leave_permit`;
DROP TABLE `oa_organizational_structure`;
DROP TABLE `oa_position`;
DROP TABLE `oa_student`;
DROP TABLE `oa_student_class`;
DROP TABLE `oa_student_grade`;
DROP TABLE `oa_subject`;
DROP TABLE `oa_teacher_info`;
DROP TABLE `security_log_entity`;
DROP TABLE `security_module`;
DROP TABLE `security_organization`;
DROP TABLE `security_organization_role`;
DROP TABLE `security_permission`;
DROP TABLE `security_role`;
DROP TABLE `security_role_permission`;
DROP TABLE `security_user`;
DROP TABLE `security_user_role`;
DROP TABLE `ss_task`;
DROP TABLE `sys_attachment`;
DROP TABLE `sys_type_rules`;
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
ALTER TABLE `cms_article_teacher`
	ADD CONSTRAINT `FK_Reference_33`
	FOREIGN KEY(`article_id`)
	REFERENCES `cms_article`(`id`);
ALTER TABLE `cms_article`
	ADD CONSTRAINT `FK_Reference_32`
	FOREIGN KEY(`channel_id`)
	REFERENCES `cms_channel`(`id`);
ALTER TABLE `sys_type_rules`
	ADD CONSTRAINT `FK_Reference_23`
	FOREIGN KEY(`applay_id`)
	REFERENCES `oa_appraisal`(`id`);
ALTER TABLE `oa_certificate`
	ADD CONSTRAINT `FK_Reference_31`
	FOREIGN KEY(`type_id`)
	REFERENCES `oa_certificate_type`(`id`);
ALTER TABLE `oa_class_teacher`
	ADD CONSTRAINT `FK_Reference_22`
	FOREIGN KEY(`class_id`)
	REFERENCES `oa_class`(`id`);
ALTER TABLE `oa_student_class`
	ADD CONSTRAINT `FK_Reference_29`
	FOREIGN KEY(`class_id`)
	REFERENCES `oa_class`(`id`);
ALTER TABLE `oa_dictionary`
	ADD CONSTRAINT `FK_Reference_18`
	FOREIGN KEY(`parent_id`)
	REFERENCES `oa_dictionary`(`id`);
ALTER TABLE `oa_dictionary_value`
	ADD CONSTRAINT `FK_Reference_19`
	FOREIGN KEY(`dictionary_id`)
	REFERENCES `oa_dictionary`(`id`);
ALTER TABLE `oa_class`
	ADD CONSTRAINT `FK_Reference_grade_class`
	FOREIGN KEY(`grade_id`)
	REFERENCES `oa_grade`(`id`);
ALTER TABLE `oa_student_grade`
	ADD CONSTRAINT `FK_Reference_27`
	FOREIGN KEY(`grade_id`)
	REFERENCES `oa_grade`(`id`);
ALTER TABLE `oa_teacher_info`
	ADD CONSTRAINT `FK_Reference_6`
	FOREIGN KEY(`grade_id`)
	REFERENCES `oa_grade`(`id`);
ALTER TABLE `oa_teacher_info`
	ADD CONSTRAINT `FK_Reference_8`
	FOREIGN KEY(`position_id`)
	REFERENCES `oa_position`(`id`);
ALTER TABLE `oa_contact`
	ADD CONSTRAINT `FK_Reference_student_contact`
	FOREIGN KEY(`student_id`)
	REFERENCES `oa_student`(`id`);
ALTER TABLE `oa_student_class`
	ADD CONSTRAINT `FK_Reference_28`
	FOREIGN KEY(`student_id`)
	REFERENCES `oa_student`(`id`);
ALTER TABLE `oa_student_grade`
	ADD CONSTRAINT `FK_Reference_26`
	FOREIGN KEY(`student_id`)
	REFERENCES `oa_student`(`id`);
ALTER TABLE `oa_teacher_info`
	ADD CONSTRAINT `FK_Reference_9`
	FOREIGN KEY(`subject_id`)
	REFERENCES `oa_subject`(`id`);
ALTER TABLE `oa_certificate`
	ADD CONSTRAINT `FK_Reference_30`
	FOREIGN KEY(`teacher_id`)
	REFERENCES `oa_teacher_info`(`id`);
ALTER TABLE `oa_class_teacher`
	ADD CONSTRAINT `FK_Reference_21`
	FOREIGN KEY(`teacher_id`)
	REFERENCES `oa_teacher_info`(`id`);
ALTER TABLE `security_user`
	ADD CONSTRAINT `FK_Reference_35`
	FOREIGN KEY(`teacher_id`)
	REFERENCES `oa_teacher_info`(`id`);
ALTER TABLE `security_module`
	ADD CONSTRAINT `FK6510844BB3395F9`
	FOREIGN KEY(`parent_id`)
	REFERENCES `security_module`(`id`);
ALTER TABLE `security_permission`
	ADD CONSTRAINT `FKBA7A9C2E334A08F7`
	FOREIGN KEY(`module_id`)
	REFERENCES `security_module`(`id`);
ALTER TABLE `oa_teacher_info`
	ADD CONSTRAINT `FK_Reference_14`
	FOREIGN KEY(`org_id`)
	REFERENCES `security_organization`(`id`);
ALTER TABLE `security_organization`
	ADD CONSTRAINT `FK1DBDA7D2FCC01B00`
	FOREIGN KEY(`parent_id`)
	REFERENCES `security_organization`(`id`);
ALTER TABLE `security_organization_role`
	ADD CONSTRAINT `FK557CA4C3D069FDD7`
	FOREIGN KEY(`organization_id`)
	REFERENCES `security_organization`(`id`);
ALTER TABLE `security_user`
	ADD CONSTRAINT `FKD607B56A453A1286`
	FOREIGN KEY(`org_id`)
	REFERENCES `security_organization`(`id`);
ALTER TABLE `security_role_permission`
	ADD CONSTRAINT `FK679E223926E70397`
	FOREIGN KEY(`permission_id`)
	REFERENCES `security_permission`(`id`);
ALTER TABLE `security_organization_role`
	ADD CONSTRAINT `FK557CA4C3C592DFF7`
	FOREIGN KEY(`role_id`)
	REFERENCES `security_role`(`id`);
ALTER TABLE `security_role_permission`
	ADD CONSTRAINT `FK679E2239C592DFF7`
	FOREIGN KEY(`role_id`)
	REFERENCES `security_role`(`id`);
ALTER TABLE `security_user_role`
	ADD CONSTRAINT `FK6DD3562BC592DFF7`
	FOREIGN KEY(`role_id`)
	REFERENCES `security_role`(`id`);
ALTER TABLE `security_user_role`
	ADD CONSTRAINT `FK6DD3562B6ABDA3D7`
	FOREIGN KEY(`user_id`)
	REFERENCES `security_user`(`id`);
