CREATE TABLE oa_contact  ( 
	id          	bigint(20) AUTO_INCREMENT NOT NULL,
	student_id  	bigint(20) NULL,
	nexus       	varchar(20) NULL,
	contact_name	varchar(50) NULL,
	job         	varchar(50) NULL,
	phone       	varchar(20) NULL,
	qq          	varchar(20) NULL,
	email       	varchar(20) NULL,
	address     	varchar(200) NULL,
	home_phone  	varchar(20) NULL,
	office_phone	varchar(20) NULL,
	create_time 	datetime NULL,
	update_time 	datetime NULL 
	);
INSERT INTO oa_contact(id, student_id, nexus, contact_name, job, phone, qq, email, address, home_phone, office_phone, create_time, update_time)
  VALUES(3, 11, '34523432', '234324', '234324', '23432432', NULL, NULL, NULL, NULL, NULL, '2013-07-14 00:00:00.0', '2013-07-14 18:57:55.0');
INSERT INTO oa_contact(id, student_id, nexus, contact_name, job, phone, qq, email, address, home_phone, office_phone, create_time, update_time)
  VALUES(4, 12, '123123', '123123', '', '1231231', NULL, NULL, NULL, NULL, NULL, '2013-07-14 18:48:14.0', NULL);
