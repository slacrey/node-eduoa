CREATE TABLE [cms_article_teacher]  ( 
	[id]           	bigint(20) AUTO_INCREMENT NOT NULL,
	[article_id]   	bigint(20) NULL,
	[teacher_name] 	varchar(10) NULL,
	[photo_url]    	varchar(100) NULL,
	[attachment_id]	bigint(20) NULL 
	)
GO
