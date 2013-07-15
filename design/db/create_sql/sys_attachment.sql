CREATE TABLE sys_attachment  ( 
	id             	bigint(20) AUTO_INCREMENT NOT NULL,
	file_name      	varchar(100) NULL,
	file_ext       	varchar(100) NULL,
	file_size      	int(10) NULL,
	service_file   	varchar(200) NULL,
	create_time    	datetime NULL,
	user_id        	bigint(20) NULL,
	attachment_type	int(11) NULL,
	url_path       	varchar(255) NULL 
	);
INSERT INTO sys_attachment(id, file_name, file_ext, file_size, service_file, create_time, user_id, attachment_type, url_path)
  VALUES(17, 'logo.png', 'png', 36592, 'D:\\work\\space\\github_space\\eduoa_space\\node-eduoa\\src\\main\\webapp\\upload\\structure\\2013-7\\7\\1373179612104.png', '2013-07-07 14:46:52.0', 1, 1, '/upload/structure/2013-7/7/1373179612104.png');
