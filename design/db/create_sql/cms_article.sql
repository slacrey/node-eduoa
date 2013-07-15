CREATE TABLE cms_article  ( 
	id              	bigint(20) AUTO_INCREMENT NOT NULL,
	channel_id      	bigint(20) NULL,
	article_class_id	bigint(20) NULL,
	title           	varchar(50) NULL,
	summary         	varchar(50) NULL,
	content         	text NULL,
	hits            	int(11) NULL,
	create_time     	datetime NULL,
	create_user_id  	bigint(20) NULL,
	update_time     	datetime NULL,
	update_user_id  	bigint(20) NULL,
	article_state   	int(11) NULL 
	);
