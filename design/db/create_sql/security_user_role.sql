CREATE TABLE [security_user_role]  ( 
	[id]      	bigint(20) AUTO_INCREMENT NOT NULL,
	[priority]	int(11) NOT NULL,
	[role_id] 	bigint(20) NULL,
	[user_id] 	bigint(20) NULL 
	)
GO
INSERT INTO [security_user_role]([id], [priority], [role_id], [user_id])
  VALUES(1, 99, 3, 1)
GO
