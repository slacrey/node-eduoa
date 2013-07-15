CREATE TABLE security_user  ( 
	id         	bigint(20) AUTO_INCREMENT NOT NULL,
	create_time	datetime NULL,
	email      	varchar(128) NULL,
	password   	varchar(64) NOT NULL,
	phone      	varchar(32) NULL,
	realname   	varchar(32) NOT NULL,
	salt       	varchar(32) NOT NULL,
	status     	varchar(16) NOT NULL,
	username   	varchar(32) NOT NULL,
	org_id     	bigint(20) NULL,
	teacher_id 	bigint(20) NULL 
	);
INSERT INTO security_user(id, create_time, email, password, phone, realname, salt, status, username, org_id, teacher_id)
  VALUES(1, '2012-08-03 14:58:38.0', 'scstlinfeng@gmail.com', '7a8f27edd04296d1a2f484cca71c6834a87356b6', '18001120497', 'аж╥Ф', '9754469b0353a6a7', 'enabled', 'admin', 24, NULL);
