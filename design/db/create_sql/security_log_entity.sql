CREATE TABLE [security_log_entity]  ( 
	[id]         	bigint(20) AUTO_INCREMENT NOT NULL,
	[create_time]	datetime NULL,
	[ip_address] 	varchar(16) NULL,
	[log_level]  	varchar(16) NULL,
	[message]    	varchar(255) NULL,
	[username]   	varchar(32) NULL 
	)
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(15, '2013-05-26 15:21:49.0', '127.0.0.1', 'TRACE', '添加模块日志管理成功！', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(16, '2013-05-26 15:22:01.0', '127.0.0.1', 'TRACE', '登录成功。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(17, '2013-05-26 15:22:40.0', '127.0.0.1', 'TRACE', '登录成功。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(18, '2013-05-26 17:21:24.0', '127.0.0.1', 'TRACE', '删除日志id=[Ljava.lang.Long;@6ffeb成功。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(19, '2013-05-26 17:24:00.0', '127.0.0.1', 'TRACE', '添加用户{0}成功。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(20, '2013-05-26 17:27:13.0', '127.0.0.1', 'TRACE', '删除日志id=[Ljava.lang.Long;@263003成功。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(21, '2013-05-26 17:27:46.0', '127.0.0.1', 'TRACE', '删除日志id=[Ljava.lang.Long;@3c0196成功。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(22, '2013-05-26 17:29:34.0', '127.0.0.1', 'TRACE', '添加用户{0}成功。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(23, '2013-05-26 17:29:54.0', '127.0.0.1', 'TRACE', '删除用户id=[Ljava.lang.Long;@103b1e4成功。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(24, '2013-05-26 17:54:53.0', '127.0.0.1', 'TRACE', '登录成功。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(25, '2013-05-26 18:04:52.0', '127.0.0.1', 'TRACE', '修改古蔺供电1组织成功', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(26, '2013-05-26 18:07:53.0', '127.0.0.1', 'TRACE', '登录成功。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(27, '2013-05-26 18:12:20.0', '127.0.0.1', 'TRACE', '修改新模块2模块成功', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(28, '2013-05-26 18:15:35.0', '127.0.0.1', 'TRACE', '修改新模块1模块成功', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(29, '2013-05-26 18:16:26.0', '127.0.0.1', 'TRACE', '修改古蔺供电2组织成功', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(30, '2013-05-26 18:36:38.0', '127.0.0.1', 'TRACE', '登录成功。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(31, '2013-05-26 18:36:55.0', '127.0.0.1', 'TRACE', '修改古蔺供电1组织成功', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(32, '2013-05-26 18:37:14.0', '127.0.0.1', 'TRACE', '登录成功。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(33, '2013-05-26 18:39:07.0', '127.0.0.1', 'TRACE', '修改古蔺供电5组织成功', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(34, '2013-05-26 18:39:40.0', '127.0.0.1', 'TRACE', '登录成功。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(35, '2013-05-26 18:39:55.0', '127.0.0.1', 'TRACE', '修改古蔺供电6组织成功', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(36, '2013-05-26 18:40:35.0', '127.0.0.1', 'TRACE', '修改古蔺供电7组织成功', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(37, '2013-05-26 18:45:20.0', '127.0.0.1', 'TRACE', '修改古蔺供电8组织成功', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(38, '2013-05-26 18:46:53.0', '127.0.0.1', 'TRACE', '修改古蔺供电9组织成功', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(39, '2013-05-26 18:48:12.0', '127.0.0.1', 'TRACE', '修改古蔺供电1组织成功', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(40, '2013-05-26 18:52:22.0', '127.0.0.1', 'TRACE', '修改古蔺供电u组织成功', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(41, '2013-05-26 18:53:56.0', '127.0.0.1', 'TRACE', '登录成功。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(42, '2013-05-26 18:54:19.0', '127.0.0.1', 'TRACE', '修改古蔺供电o组织成功', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(43, '2013-05-26 18:55:34.0', '127.0.0.1', 'TRACE', '修改古蔺供电m组织成功', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(44, '2013-05-26 18:56:12.0', '127.0.0.1', 'TRACE', '修改古蔺供电ml组织成功', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(45, '2013-05-26 19:27:22.0', '127.0.0.1', 'TRACE', '修改组织管理模块成功', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(46, '2013-05-26 19:27:34.0', '127.0.0.1', 'TRACE', '登录成功。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(47, '2013-05-26 19:53:47.0', '127.0.0.1', 'TRACE', '修改古蔺供电ml7组织成功', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(48, '2013-05-26 19:54:44.0', '127.0.0.1', 'TRACE', '登录成功。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(49, '2013-05-26 19:54:56.0', '127.0.0.1', 'TRACE', '修改古蔺供电ml78组织成功', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(50, '2013-05-26 19:55:43.0', '127.0.0.1', 'TRACE', '修改古蔺供电m组织成功', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(51, '2013-05-26 19:56:26.0', '127.0.0.1', 'TRACE', '修改古蔺供电8组织成功', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(52, '2013-05-26 20:02:29.0', '127.0.0.1', 'TRACE', '修改古蔺供电8组织成功', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(53, '2013-05-26 20:05:31.0', '127.0.0.1', 'TRACE', '修改古蔺供电89组织成功', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(54, '2013-05-26 20:05:43.0', '127.0.0.1', 'TRACE', '修改古蔺供电6组织成功', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(55, '2013-05-26 20:05:54.0', '127.0.0.1', 'TRACE', '修改古蔺供电66组织成功', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(56, '2013-05-26 20:07:09.0', '127.0.0.1', 'TRACE', '修改古蔺供电66组织成功', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(57, '2013-05-26 20:07:17.0', '127.0.0.1', 'TRACE', '修改古蔺供电645组织成功', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(58, '2013-05-26 20:07:42.0', '127.0.0.1', 'TRACE', '修改古蔺供电0组织成功', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(59, '2013-05-26 20:10:13.0', '127.0.0.1', 'TRACE', '修改古蔺供电09组织成功', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(60, '2013-05-26 20:10:23.0', '127.0.0.1', 'TRACE', '修改古蔺供电0934组织成功', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(61, '2013-05-26 20:13:59.0', '127.0.0.1', 'TRACE', '修改古蔺供电05组织成功', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(62, '2013-05-26 20:14:33.0', '127.0.0.1', 'TRACE', '修改古蔺供电05组织成功', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(63, '2013-05-26 20:15:03.0', '127.0.0.1', 'TRACE', '修改古蔺供电999组织成功', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(64, '2013-05-26 20:16:10.0', '127.0.0.1', 'TRACE', '修改古蔺供电9996组织成功', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(65, '2013-05-26 20:17:24.0', '127.0.0.1', 'TRACE', '修改古蔺供电9组织成功', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(66, '2013-05-26 20:18:33.0', '127.0.0.1', 'TRACE', '修改新模块13模块成功', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(67, '2013-05-26 20:19:56.0', '127.0.0.1', 'TRACE', '修改古蔺供电91组织成功', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(68, '2013-05-26 20:21:00.0', '127.0.0.1', 'TRACE', '修改古蔺供电912组织成功', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(69, '2013-05-26 20:24:20.0', '127.0.0.1', 'TRACE', '修改古蔺供电9128组织成功', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(70, '2013-05-26 20:33:55.0', '127.0.0.1', 'TRACE', '登录成功。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(71, '2013-05-26 20:34:14.0', '127.0.0.1', 'TRACE', '修改新模块14模块成功', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(72, '2013-05-26 20:34:43.0', '127.0.0.1', 'TRACE', '修改新模块141模块成功', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(73, '2013-05-26 20:35:12.0', '127.0.0.1', 'TRACE', '修改新模块1416模块成功', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(74, '2013-05-26 20:35:58.0', '127.0.0.1', 'TRACE', '修改新模块14162模块成功', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(75, '2013-05-26 20:36:31.0', '127.0.0.1', 'TRACE', '修改新模块141620模块成功', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(76, '2013-05-26 20:36:46.0', '127.0.0.1', 'TRACE', '修改新模块1416208模块成功', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(77, '2013-05-26 20:37:49.0', '127.0.0.1', 'TRACE', '修改新模块141621111模块成功', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(78, '2013-05-26 20:39:20.0', '127.0.0.1', 'TRACE', '修改新模块1416214模块成功', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(79, '2013-05-26 20:39:56.0', '127.0.0.1', 'TRACE', '修改新模块模块成功', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(80, '2013-05-26 20:44:06.0', '127.0.0.1', 'TRACE', '模块id=57,删除模块成功！', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(81, '2013-05-26 20:44:46.0', '127.0.0.1', 'TRACE', '模块id=57,删除模块成功！', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(82, '2013-05-26 20:47:21.0', '127.0.0.1', 'TRACE', '模块id=57,删除模块成功！', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(83, '2013-05-26 20:48:24.0', '127.0.0.1', 'TRACE', '模块id=57,删除模块成功！', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(84, '2013-05-26 20:58:27.0', '127.0.0.1', 'TRACE', '模块id=57,删除模块成功！', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(85, '2013-05-26 21:00:33.0', '127.0.0.1', 'TRACE', '模块id=57,删除模块成功！', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(86, '2013-05-26 21:19:11.0', '127.0.0.1', 'TRACE', '模块id=57,删除模块成功！', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(87, '2013-05-26 21:36:42.0', '127.0.0.1', 'TRACE', '模块id=57,删除模块成功！', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(88, '2013-05-27 10:05:24.0', '127.0.0.1', 'TRACE', '登录成功。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(89, '2013-05-27 10:05:45.0', '127.0.0.1', 'TRACE', '模块id=57,删除模块成功！', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(90, '2013-05-27 10:14:06.0', '127.0.0.1', 'TRACE', '模块id=57,删除模块成功！', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(91, '2013-05-27 10:23:08.0', '127.0.0.1', 'TRACE', '模块id=57,删除模块成功！', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(92, '2013-05-27 10:48:45.0', '127.0.0.1', 'TRACE', '{0}', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(93, '2013-05-27 10:49:36.0', '127.0.0.1', 'TRACE', '添加模块123123成功！', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(94, '2013-05-27 10:50:22.0', '127.0.0.1', 'TRACE', '模块id=60,删除模块成功！', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(95, '2013-05-27 10:58:06.0', '127.0.0.1', 'TRACE', '添加组织vv成功！', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(96, '2013-05-27 10:59:18.0', '127.0.0.1', 'TRACE', '添加组织121成功！', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(97, '2013-05-27 11:14:38.0', '127.0.0.1', 'TRACE', '登录成功。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(98, '2013-05-27 11:14:52.0', '127.0.0.1', 'TRACE', '组织id=13,删除组织成功！', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(99, '2013-05-27 11:16:18.0', '127.0.0.1', 'TRACE', '组织id=13,删除组织成功！', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(100, '2013-05-27 11:17:16.0', '127.0.0.1', 'TRACE', '组织id=12,删除组织成功！', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(101, '2013-05-27 11:17:26.0', '127.0.0.1', 'TRACE', '添加组织1212成功！', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(102, '2013-05-27 11:17:33.0', '127.0.0.1', 'TRACE', '修改古蔺供电组织成功', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(103, '2013-05-27 11:17:55.0', '127.0.0.1', 'TRACE', '添加模块11成功！', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(104, '2013-05-27 11:18:02.0', '127.0.0.1', 'TRACE', '修改116模块成功', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(105, '2013-05-27 11:18:07.0', '127.0.0.1', 'TRACE', '模块id=61,删除模块成功！', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(106, '2013-05-27 11:24:14.0', '127.0.0.1', 'TRACE', '登录成功。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(107, '2013-05-27 11:24:27.0', '127.0.0.1', 'TRACE', '组织id=14,删除组织成功！', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(108, '2013-05-27 17:05:03.0', '127.0.0.1', 'TRACE', '{0}登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(109, '2013-05-27 17:18:42.0', '127.0.0.1', 'TRACE', '{0}登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(110, '2013-05-27 17:20:34.0', '127.0.0.1', 'TRACE', '{0}登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(111, '2013-05-27 17:21:55.0', '127.0.0.1', 'TRACE', '{0}登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(112, '2013-05-27 17:22:57.0', '127.0.0.1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(113, '2013-05-28 09:18:31.0', '127.0.0.1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(114, '2013-05-28 09:19:02.0', '127.0.0.1', 'TRACE', '修改用户{0}信息。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(115, '2013-05-28 09:22:20.0', '127.0.0.1', 'TRACE', '修改用户{0}信息。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(116, '2013-05-28 09:23:45.0', '127.0.0.1', 'TRACE', '修改用户gl信息。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(117, '2013-05-28 09:53:29.0', '127.0.0.1', 'TRACE', '会话超时， 该用户重新登录系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(118, '2013-05-28 09:54:03.0', '127.0.0.1', 'TRACE', '添加了用户now。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(119, '2013-05-28 09:54:22.0', '127.0.0.1', 'TRACE', '修改用户now信息。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(120, '2013-05-28 09:54:34.0', '127.0.0.1', 'TRACE', '用户now，重置密码成功，默认为123456！', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(121, '2013-05-28 09:54:45.0', '127.0.0.1', 'TRACE', '用户now，更新状态成功，当前为不可用', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(122, '2013-05-28 09:54:54.0', '127.0.0.1', 'TRACE', '用户now，更新状态成功，当前为可用', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(123, '2013-05-28 09:55:04.0', '127.0.0.1', 'TRACE', '分配null用户的null角色。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(124, '2013-05-28 09:56:59.0', '127.0.0.1', 'TRACE', '分配null用户的null角色。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(125, '2013-05-28 09:57:10.0', '127.0.0.1', 'TRACE', '撤销now用户的管理员角色。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(126, '2013-05-28 09:57:36.0', '127.0.0.1', 'TRACE', '删除用户[ceshi, now]。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(127, '2013-05-28 09:58:29.0', '127.0.0.1', 'TRACE', 'admin修改了密码。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(128, '2013-05-28 09:59:10.0', '127.0.0.1', 'TRACE', 'admin修改了密码。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(129, '2013-05-28 09:59:33.0', '127.0.0.1', 'TRACE', 'admin修改了详细信息。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(130, '2013-05-28 10:44:26.0', '127.0.0.1', 'TRACE', '会话超时， 该用户重新登录系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(131, '2013-05-28 10:44:39.0', '127.0.0.1', 'TRACE', '添加了nn角色。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(132, '2013-05-28 10:44:50.0', '127.0.0.1', 'TRACE', '修改了nn2角色的信息。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(133, '2013-05-28 10:45:05.0', '127.0.0.1', 'TRACE', '删除了nn2角色。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(134, '2013-05-28 10:46:17.0', '127.0.0.1', 'TRACE', '添加了ewrwerew模块。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(135, '2013-05-28 10:46:29.0', '127.0.0.1', 'TRACE', '修改了ewrwerew2模块的信息。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(136, '2013-05-28 10:46:34.0', '127.0.0.1', 'TRACE', '删除了ewrwerew2模块。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(137, '2013-05-28 10:49:03.0', '127.0.0.1', 'TRACE', '添加了rwrew模块。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(138, '2013-05-28 10:49:06.0', '127.0.0.1', 'TRACE', '删除了rwrew模块。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(139, '2013-05-28 10:49:27.0', '127.0.0.1', 'TRACE', '添加了1212sad组织。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(140, '2013-05-28 10:49:33.0', '127.0.0.1', 'TRACE', '修改了1212sadsdas组织的信息。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(141, '2013-05-28 10:49:40.0', '127.0.0.1', 'TRACE', '向null组织分配了null的角色。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(142, '2013-05-28 10:49:44.0', '127.0.0.1', 'TRACE', '撤销了1212sadsdas组织的管理员角色。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(143, '2013-05-28 10:52:49.0', '127.0.0.1', 'TRACE', '向null组织分配了null的角色。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(144, '2013-05-28 10:53:58.0', '127.0.0.1', 'TRACE', '向null组织分配了null的角色。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(145, '2013-05-28 10:55:28.0', '127.0.0.1', 'TRACE', '向null组织分配了null的角色。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(146, '2013-05-28 10:56:33.0', '127.0.0.1', 'TRACE', '向null用户分配了null的角色。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(147, '2013-05-28 11:00:30.0', '127.0.0.1', 'TRACE', '向1212sadsdas组织分配了任务实例角色的角色。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(148, '2013-05-28 11:00:48.0', '127.0.0.1', 'TRACE', '撤销了1212sadsdas组织的任务实例角色角色。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(149, '2013-05-28 11:00:58.0', '127.0.0.1', 'TRACE', '删除了1212sadsdas组织。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(150, '2013-05-28 11:02:30.0', '127.0.0.1', 'TRACE', '删除了模块测试4模块。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(151, '2013-05-28 11:16:04.0', '127.0.0.1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(152, '2013-05-28 11:16:41.0', '127.0.0.1', 'TRACE', '删除了模块测试3模块。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(153, '2013-05-28 11:22:23.0', '127.0.0.1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(154, '2013-05-28 11:22:43.0', '127.0.0.1', 'TRACE', '添加了vv组织。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(155, '2013-05-28 11:22:58.0', '127.0.0.1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(156, '2013-05-28 11:23:18.0', '127.0.0.1', 'TRACE', '添加了gg组织。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(157, '2013-05-28 11:23:25.0', '127.0.0.1', 'TRACE', '删除了gg组织。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(158, '2013-05-28 11:23:34.0', '127.0.0.1', 'TRACE', '修改了vv2组织的信息。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(159, '2013-05-28 11:23:51.0', '127.0.0.1', 'TRACE', '添加了2222模块。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(160, '2013-05-28 11:24:01.0', '127.0.0.1', 'TRACE', '修改了1212模块的信息。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(161, '2013-05-28 11:24:08.0', '127.0.0.1', 'TRACE', '删除了1212模块。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(162, '2013-05-28 11:24:19.0', '127.0.0.1', 'TRACE', '删除了vv2组织。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(163, '2013-05-28 11:24:24.0', '127.0.0.1', 'TRACE', '进行了缓存清理。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(164, '2013-05-28 11:24:39.0', '127.0.0.1', 'TRACE', '删除了2条日志。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(165, '2013-05-28 13:10:28.0', '127.0.0.1', 'TRACE', '会话超时， 该用户重新登录系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(166, '2013-05-28 13:10:39.0', '127.0.0.1', 'INFO', '添加了ee任务，LogMessageObject的isWritten为true。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(167, '2013-05-28 14:09:21.0', '127.0.0.1', 'TRACE', '会话超时， 该用户重新登录系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(168, '2013-05-28 14:10:06.0', '127.0.0.1', 'TRACE', 'Log的override用法实例，override为true，会忽略掉level。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(169, '2013-05-28 14:32:44.0', '127.0.0.1', 'TRACE', '会话超时， 该用户重新登录系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(170, '2013-05-28 14:33:41.0', '127.0.0.1', 'INFO', '添加了1111任务，LogMessageObject的isWritten为true。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(171, '2013-05-28 14:34:07.0', '127.0.0.1', 'TRACE', 'Log的override用法实例，override为true，会忽略掉level。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(172, '2013-05-28 14:35:46.0', '127.0.0.1', 'INFO', '添加了bbbb任务，LogMessageObject的isWritten为true。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(173, '2013-05-28 14:35:54.0', '127.0.0.1', 'TRACE', 'Log的override用法实例，override为true，会忽略掉level。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(174, '2013-05-28 14:42:52.0', '127.0.0.1', 'TRACE', '会话超时， 该用户重新登录系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(175, '2013-05-28 14:43:03.0', '127.0.0.1', 'INFO', '添加了ee2任务，LogMessageObject的isWritten为true。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(176, '2013-05-28 15:01:01.0', '127.0.0.1', 'TRACE', '会话超时， 该用户重新登录系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(177, '2013-05-28 15:01:13.0', '127.0.0.1', 'TRACE', 'Log的override用法实例，override为true，会忽略掉level。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(178, '2013-05-28 15:02:09.0', '127.0.0.1', 'INFO', '添加了123123任务，LogMessageObject的isWritten为true。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(179, '2013-05-28 15:02:14.0', '127.0.0.1', 'TRACE', 'Log的override用法实例，override为true，会忽略掉level。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(180, '2013-05-28 15:05:08.0', '127.0.0.1', 'INFO', '添加了1212任务，LogMessageObject的isWritten为true。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(181, '2013-05-28 16:14:39.0', '127.0.0.1', 'TRACE', '会话超时， 该用户重新登录系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(182, '2013-05-28 16:15:38.0', '127.0.0.1', 'TRACE', '修改了测试模块模块的信息。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(183, '2013-05-29 09:12:47.0', '127.0.0.1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(184, '2013-05-29 17:31:36.0', '127.0.0.1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(185, '2013-05-29 17:31:50.0', '127.0.0.1', 'TRACE', '添加了12121组织。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(186, '2013-05-31 09:12:41.0', '127.0.0.1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(187, '2013-05-31 11:02:12.0', '127.0.0.1', 'TRACE', '会话超时， 该用户重新登录系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(188, '2013-05-31 11:42:10.0', '127.0.0.1', 'TRACE', '会话超时， 该用户重新登录系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(189, '2013-05-31 11:56:34.0', '127.0.0.1', 'TRACE', '会话超时， 该用户重新登录系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(190, '2013-05-31 12:00:58.0', '127.0.0.1', 'TRACE', '会话超时， 该用户重新登录系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(191, '2013-05-31 12:08:42.0', '127.0.0.1', 'TRACE', '修改了新模块模块的信息。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(192, '2013-05-31 12:09:12.0', '127.0.0.1', 'TRACE', '修改了121215组织的信息。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(193, '2013-05-31 12:10:40.0', '127.0.0.1', 'TRACE', '修改了新模块模块的信息。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(194, '2013-05-31 12:13:28.0', '127.0.0.1', 'TRACE', '修改了多级模块测试模块的信息。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(195, '2013-05-31 12:23:09.0', '127.0.0.1', 'TRACE', '会话超时， 该用户重新登录系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(196, '2013-05-31 12:25:46.0', '127.0.0.1', 'TRACE', '修改了121215组织的信息。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(197, '2013-06-02 17:43:48.0', '127.0.0.1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(198, '2013-06-03 09:41:22.0', '127.0.0.1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(199, '2013-06-03 09:42:07.0', '127.0.0.1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(200, '2013-06-03 09:42:36.0', '127.0.0.1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(201, '2013-06-03 09:42:50.0', '127.0.0.1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(202, '2013-06-03 09:43:18.0', '127.0.0.1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(203, '2013-06-03 09:43:43.0', '127.0.0.1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(204, '2013-06-03 09:44:16.0', '127.0.0.1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(205, '2013-06-03 09:53:40.0', '127.0.0.1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(206, '2013-06-03 09:53:58.0', '127.0.0.1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(207, '2013-06-03 09:55:04.0', '127.0.0.1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(208, '2013-06-03 09:55:23.0', '127.0.0.1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(209, '2013-06-03 09:55:38.0', '127.0.0.1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(210, '2013-06-03 09:55:52.0', '127.0.0.1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(211, '2013-06-03 09:55:59.0', '127.0.0.1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(212, '2013-06-03 10:00:48.0', '127.0.0.1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(213, '2013-06-03 10:02:25.0', '127.0.0.1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(214, '2013-06-03 11:05:45.0', '127.0.0.1', 'TRACE', '会话超时， 该用户重新登录系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(215, '2013-06-03 11:05:50.0', '127.0.0.1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(216, '2013-06-03 11:12:54.0', '127.0.0.1', 'TRACE', 'cya用户重置密码成功，默认为123456！', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(217, '2013-06-03 11:17:14.0', '127.0.0.1', 'TRACE', 'admin修改了详细信息。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(218, '2013-06-03 11:21:06.0', '127.0.0.1', 'TRACE', 'admin修改了密码。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(219, '2013-06-03 11:27:41.0', '127.0.0.1', 'TRACE', '修改了cya用户的信息。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(220, '2013-06-03 11:36:40.0', '127.0.0.1', 'TRACE', '添加了kblog用户。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(221, '2013-06-03 11:48:02.0', '127.0.0.1', 'TRACE', '向kblog用户分配了管理员的角色。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(222, '2013-06-03 11:48:10.0', '127.0.0.1', 'TRACE', '向kblog用户分配了营销人员的角色。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(223, '2013-06-03 11:52:39.0', '127.0.0.1', 'TRACE', '撤销了kblog用户的营销人员角色。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(224, '2013-06-03 11:56:18.0', '127.0.0.1', 'TRACE', 'cya用户重置密码成功，默认为123456！', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(225, '2013-06-03 14:25:27.0', '127.0.0.1', 'TRACE', '会话超时， 该用户重新登录系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(226, '2013-06-03 14:32:22.0', '127.0.0.1', 'TRACE', '修改了cya用户的信息。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(227, '2013-06-03 14:32:54.0', '127.0.0.1', 'TRACE', '删除了[kblog]用户。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(228, '2013-06-03 14:33:02.0', '127.0.0.1', 'TRACE', 'task2用户重置密码成功，默认为123456！', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(229, '2013-06-03 14:33:07.0', '127.0.0.1', 'TRACE', 'task2用户更新状态成功，当前为不可用', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(230, '2013-06-03 16:32:52.0', '127.0.0.1', 'TRACE', '会话超时， 该用户重新登录系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(231, '2013-06-03 17:01:38.0', '127.0.0.1', 'TRACE', '添加了hh角色。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(232, '2013-06-04 09:17:44.0', '127.0.0.1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(233, '2013-06-04 09:54:50.0', '127.0.0.1', 'TRACE', '会话超时， 该用户重新登录系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(234, '2013-06-04 10:20:30.0', '127.0.0.1', 'TRACE', '添加了gg模块。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(235, '2013-06-04 10:28:22.0', '127.0.0.1', 'TRACE', '修改了ggk模块的信息。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(236, '2013-06-04 10:42:07.0', '127.0.0.1', 'TRACE', '修改了ggk模块的信息。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(237, '2013-06-04 10:42:37.0', '127.0.0.1', 'TRACE', '删除了ggk模块。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(238, '2013-06-04 11:19:49.0', '127.0.0.1', 'TRACE', '添加了gg组织。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(239, '2013-06-04 11:24:18.0', '127.0.0.1', 'TRACE', '修改了gg2组织的信息。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(240, '2013-06-04 11:29:02.0', '127.0.0.1', 'TRACE', '向gg2组织分配了管理员的角色。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(241, '2013-06-04 11:29:05.0', '127.0.0.1', 'TRACE', '向gg2组织分配了营销人员的角色。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(242, '2013-06-04 11:33:53.0', '127.0.0.1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(243, '2013-06-04 11:35:40.0', '127.0.0.1', 'TRACE', '撤销了gg2组织的营销人员角色。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(244, '2013-06-04 11:36:57.0', '127.0.0.1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(245, '2013-06-04 11:39:12.0', '127.0.0.1', 'TRACE', '会话超时， 该用户重新登录系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(246, '2013-06-04 11:55:03.0', '127.0.0.1', 'TRACE', '添加了tt角色。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(247, '2013-06-04 15:08:17.0', '127.0.0.1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(248, '2013-06-04 15:14:04.0', '127.0.0.1', 'TRACE', '会话超时， 该用户重新登录系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(249, '2013-06-04 16:30:57.0', '127.0.0.1', 'TRACE', '会话超时， 该用户重新登录系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(250, '2013-06-04 16:40:22.0', '127.0.0.1', 'TRACE', '添加了tt2角色。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(251, '2013-06-04 17:06:50.0', '127.0.0.1', 'TRACE', '修改了tt2角色的信息。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(252, '2013-06-04 17:14:03.0', '127.0.0.1', 'TRACE', '删除了tt2角色。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(253, '2013-06-04 17:22:15.0', '127.0.0.1', 'TRACE', '修改了yaan用户的信息。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(254, '2013-06-04 17:22:36.0', '127.0.0.1', 'TRACE', '添加了opnmzxcvb用户。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(255, '2013-06-04 17:23:06.0', '127.0.0.1', 'TRACE', 'opnmzxcvb用户重置密码成功，默认为123456！', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(256, '2013-06-04 17:23:12.0', '127.0.0.1', 'TRACE', 'opnmzxcvb用户更新状态成功，当前为不可用', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(257, '2013-06-05 08:56:04.0', '127.0.0.1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(258, '2013-06-05 09:00:42.0', '127.0.0.1', 'TRACE', '添加了gg用户。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(259, '2013-06-05 09:01:14.0', '127.0.0.1', 'TRACE', '修改了gg用户的信息。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(260, '2013-06-05 09:02:26.0', '127.0.0.1', 'TRACE', '向gg用户分配了tt的角色。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(261, '2013-06-05 09:02:30.0', '127.0.0.1', 'TRACE', '撤销了gg用户的tt角色。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(262, '2013-06-05 09:19:12.0', '127.0.0.1', 'TRACE', '添加了人人组织。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(263, '2013-06-05 09:20:35.0', '127.0.0.1', 'TRACE', '修改了人人2组织的信息。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(264, '2013-06-05 09:20:45.0', '127.0.0.1', 'TRACE', '修改了人人2组织的信息。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(265, '2013-06-05 09:21:07.0', '127.0.0.1', 'TRACE', '向121215组织分配了管理员的角色。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(266, '2013-06-05 09:21:13.0', '127.0.0.1', 'TRACE', '撤销了121215组织的管理员角色。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(267, '2013-06-05 09:22:16.0', '127.0.0.1', 'TRACE', '删除了人人2组织。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(268, '2013-06-05 09:27:20.0', '127.0.0.1', 'TRACE', '添加了bb模块。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(269, '2013-06-05 09:27:43.0', '127.0.0.1', 'TRACE', '修改了bb模块的信息。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(270, '2013-06-05 09:27:59.0', '127.0.0.1', 'TRACE', '删除了bb模块。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(271, '2013-06-05 09:29:07.0', '127.0.0.1', 'TRACE', '进行了缓存清理。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(272, '2013-06-05 09:29:24.0', '127.0.0.1', 'TRACE', '删除了2条日志。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(273, '2013-06-05 09:42:12.0', '127.0.0.1', 'INFO', '添加了基于SimpleJdbcDaoSupport通用分页任务，LogMessageObject的isWritten为true。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(274, '2013-06-05 09:45:26.0', '127.0.0.1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(275, '2013-06-05 09:46:54.0', '127.0.0.1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(276, '2013-06-05 09:47:41.0', '127.0.0.1', 'TRACE', 'Log的override用法实例，override为true，会忽略掉level。删除了[基于SimpleJdbcDaoSupport通用分页]任务。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(277, '2013-06-05 09:55:26.0', '127.0.0.1', 'TRACE', '会话超时， 该用户重新登录系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(278, '2013-06-05 09:56:12.0', '127.0.0.1', 'TRACE', '删除了1212组织。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(279, '2013-06-05 09:57:43.0', '127.0.0.1', 'TRACE', '会话超时， 该用户重新登录系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(280, '2013-06-05 09:58:28.0', '127.0.0.1', 'TRACE', '删除了116模块。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(281, '2013-06-05 10:00:08.0', '127.0.0.1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(282, '2013-06-05 10:08:11.0', '127.0.0.1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(283, '2013-06-05 10:08:17.0', '127.0.0.1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(284, '2013-06-05 10:10:10.0', '127.0.0.1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(285, '2013-06-05 10:12:17.0', '127.0.0.1', 'TRACE', '修改了新模块2模块的信息。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(286, '2013-06-05 10:12:46.0', '127.0.0.1', 'TRACE', '修改了新模块26模块的信息。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(287, '2013-06-05 10:31:25.0', '127.0.0.1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(288, '2013-06-05 10:32:40.0', '127.0.0.1', 'INFO', '添加了的粉丝任务，LogMessageObject的isWritten为true。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(289, '2013-06-05 10:32:46.0', '127.0.0.1', 'TRACE', 'Log的override用法实例，override为true，会忽略掉level。删除了[1212, 的粉丝]任务。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(290, '2013-06-05 10:44:14.0', '127.0.0.1', 'TRACE', '修改了vv3组织的信息。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(291, '2013-06-05 10:44:31.0', '127.0.0.1', 'TRACE', '向vv3组织分配了管理员的角色。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(292, '2013-06-05 10:44:36.0', '127.0.0.1', 'TRACE', '撤销了vv3组织的管理员角色。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(293, '2013-06-05 10:44:40.0', '127.0.0.1', 'TRACE', '向vv3组织分配了tt的角色。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(294, '2013-06-05 10:46:07.0', '127.0.0.1', 'TRACE', '删除了tt角色。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(295, '2013-07-04 22:28:51.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(296, '2013-07-04 22:51:17.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(297, '2013-07-05 21:05:07.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(298, '2013-07-05 21:28:19.0', '0:0:0:0:0:0:0:1', 'TRACE', '添加了高一年级组织。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(299, '2013-07-05 21:28:30.0', '0:0:0:0:0:0:0:1', 'TRACE', '删除了121组织。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(300, '2013-07-05 21:28:35.0', '0:0:0:0:0:0:0:1', 'TRACE', '删除了vv3组织。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(301, '2013-07-05 21:28:54.0', '0:0:0:0:0:0:0:1', 'TRACE', '添加了高二年级组织。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(302, '2013-07-05 21:29:10.0', '0:0:0:0:0:0:0:1', 'TRACE', '添加了高三年级组织。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(303, '2013-07-05 21:29:29.0', '0:0:0:0:0:0:0:1', 'TRACE', '撤销了gg2组织的管理员角色。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(304, '2013-07-05 21:29:32.0', '0:0:0:0:0:0:0:1', 'TRACE', '删除了gg2组织。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(305, '2013-07-05 21:29:37.0', '0:0:0:0:0:0:0:1', 'TRACE', '删除了121215组织。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(306, '2013-07-05 21:29:46.0', '0:0:0:0:0:0:0:1', 'TRACE', '删除了{0}组织。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(307, '2013-07-05 21:30:08.0', '0:0:0:0:0:0:0:1', 'TRACE', '删除了[task, task2, ww, gl, gly, cw, cc, yaan, lushan, cya, manage, opnmzxcvb, gg]用户。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(308, '2013-07-05 21:30:19.0', '0:0:0:0:0:0:0:1', 'TRACE', '删除了测试组织权限组织。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(309, '2013-07-05 21:30:24.0', '0:0:0:0:0:0:0:1', 'TRACE', '删除了古蔺供电组织。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(310, '2013-07-05 21:30:27.0', '0:0:0:0:0:0:0:1', 'TRACE', '删除了叙永供电组织。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(311, '2013-07-05 21:30:30.0', '0:0:0:0:0:0:0:1', 'TRACE', '删除了玉宇电力组织。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(312, '2013-07-05 21:30:34.0', '0:0:0:0:0:0:0:1', 'TRACE', '删除了和益电力组织。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(313, '2013-07-05 21:30:37.0', '0:0:0:0:0:0:0:1', 'TRACE', '删除了纳溪供电组织。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(314, '2013-07-05 21:30:40.0', '0:0:0:0:0:0:0:1', 'TRACE', '删除了泸县供电组织。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(315, '2013-07-05 21:30:43.0', '0:0:0:0:0:0:0:1', 'TRACE', '删除了江阳供电组织。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(316, '2013-07-05 21:30:46.0', '0:0:0:0:0:0:0:1', 'TRACE', '删除了龙马潭供电组织。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(317, '2013-07-05 21:30:59.0', '0:0:0:0:0:0:0:1', 'TRACE', '删除了{0}组织。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(318, '2013-07-05 21:31:23.0', '0:0:0:0:0:0:0:1', 'TRACE', '修改了教务处组织的信息。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(319, '2013-07-05 21:31:32.0', '0:0:0:0:0:0:0:1', 'TRACE', '添加了政教处组织。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(320, '2013-07-05 21:31:40.0', '0:0:0:0:0:0:0:1', 'TRACE', '添加了办公室组织。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(321, '2013-07-05 21:31:47.0', '0:0:0:0:0:0:0:1', 'TRACE', '添加了三联办组织。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(322, '2013-07-05 21:31:56.0', '0:0:0:0:0:0:0:1', 'TRACE', '添加了后勤组织。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(323, '2013-07-05 21:32:18.0', '0:0:0:0:0:0:0:1', 'TRACE', '添加了香河县第一中学组织。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(324, '2013-07-05 21:32:45.0', '0:0:0:0:0:0:0:1', 'TRACE', '添加了高一年级组织。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(325, '2013-07-05 21:32:53.0', '0:0:0:0:0:0:0:1', 'TRACE', '添加了高二年级组织。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(326, '2013-07-05 21:33:01.0', '0:0:0:0:0:0:0:1', 'TRACE', '添加了高三年级组织。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(327, '2013-07-05 21:33:11.0', '0:0:0:0:0:0:0:1', 'TRACE', '添加了教务处组织。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(328, '2013-07-05 21:33:18.0', '0:0:0:0:0:0:0:1', 'TRACE', '添加了政教处组织。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(329, '2013-07-05 21:33:25.0', '0:0:0:0:0:0:0:1', 'TRACE', '添加了办公室组织。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(330, '2013-07-05 21:33:40.0', '0:0:0:0:0:0:0:1', 'TRACE', '添加了三联办组织。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(331, '2013-07-05 21:33:46.0', '0:0:0:0:0:0:0:1', 'TRACE', '添加了后勤组织。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(332, '2013-07-05 21:33:55.0', '0:0:0:0:0:0:0:1', 'TRACE', '添加了财务室组织。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(333, '2013-07-05 21:34:03.0', '0:0:0:0:0:0:0:1', 'TRACE', '添加了实验室组织。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(334, '2013-07-05 21:34:09.0', '0:0:0:0:0:0:0:1', 'TRACE', '添加了图书馆组织。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(335, '2013-07-05 21:34:16.0', '0:0:0:0:0:0:0:1', 'TRACE', '添加了团委组织。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(336, '2013-07-05 21:34:22.0', '0:0:0:0:0:0:0:1', 'TRACE', '添加了资料室组织。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(337, '2013-07-05 21:34:38.0', '0:0:0:0:0:0:0:1', 'TRACE', '修改了admin用户的信息。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(338, '2013-07-05 21:34:45.0', '0:0:0:0:0:0:0:1', 'TRACE', '删除了教务处组织。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(339, '2013-07-05 21:35:08.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(340, '2013-07-05 21:35:25.0', '0:0:0:0:0:0:0:1', 'TRACE', '删除了高一年级组织。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(341, '2013-07-05 21:35:28.0', '0:0:0:0:0:0:0:1', 'TRACE', '删除了高二年级组织。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(342, '2013-07-05 21:35:32.0', '0:0:0:0:0:0:0:1', 'TRACE', '删除了高三年级组织。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(343, '2013-07-05 21:35:36.0', '0:0:0:0:0:0:0:1', 'TRACE', '删除了政教处组织。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(344, '2013-07-05 21:35:39.0', '0:0:0:0:0:0:0:1', 'TRACE', '删除了办公室组织。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(345, '2013-07-05 21:35:43.0', '0:0:0:0:0:0:0:1', 'TRACE', '删除了三联办组织。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(346, '2013-07-05 21:39:22.0', '0:0:0:0:0:0:0:1', 'TRACE', '删除了后勤组织。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(347, '2013-07-05 23:04:10.0', '0:0:0:0:0:0:0:1', 'TRACE', '会话超时， 该用户重新登录系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(348, '2013-07-05 23:04:57.0', '0:0:0:0:0:0:0:1', 'TRACE', '删除了5条日志。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(349, '2013-07-05 23:04:59.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(350, '2013-07-05 23:06:15.0', '0:0:0:0:0:0:0:1', 'TRACE', '修改了系统管理模块的信息。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(351, '2013-07-05 23:06:21.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(352, '2013-07-05 23:07:21.0', '0:0:0:0:0:0:0:1', 'TRACE', '修改了安全管理模块的信息。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(353, '2013-07-05 23:07:49.0', '0:0:0:0:0:0:0:1', 'TRACE', '添加了系统管理模块。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(354, '2013-07-05 23:07:54.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(355, '2013-07-05 23:08:07.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(356, '2013-07-05 23:08:08.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(357, '2013-07-05 23:08:18.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(358, '2013-07-05 23:08:34.0', '0:0:0:0:0:0:0:1', 'TRACE', '修改了123123模块的信息。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(359, '2013-07-05 23:08:39.0', '0:0:0:0:0:0:0:1', 'TRACE', '删除了123123模块。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(360, '2013-07-05 23:08:47.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(361, '2013-07-05 23:09:05.0', '0:0:0:0:0:0:0:1', 'TRACE', '删除了系统管理模块。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(362, '2013-07-05 23:09:41.0', '0:0:0:0:0:0:0:1', 'TRACE', '添加了系统管理模块。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(363, '2013-07-05 23:09:57.0', '0:0:0:0:0:0:0:1', 'TRACE', '修改了管理员角色的信息。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(364, '2013-07-05 23:10:02.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(365, '2013-07-06 11:57:16.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(366, '2013-07-06 12:30:09.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(367, '2013-07-06 12:31:54.0', '0:0:0:0:0:0:0:1', 'TRACE', '添加了职务管理模块。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(368, '2013-07-06 12:31:59.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(369, '2013-07-06 12:32:16.0', '0:0:0:0:0:0:0:1', 'TRACE', '向admin用户分配了管理员的角色。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(370, '2013-07-06 12:32:41.0', '0:0:0:0:0:0:0:1', 'TRACE', '修改了管理员角色的信息。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(371, '2013-07-06 12:32:44.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(372, '2013-07-06 12:34:42.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(373, '2013-07-06 12:41:39.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(374, '2013-07-06 12:42:59.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(375, '2013-07-06 12:44:10.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(376, '2013-07-06 12:45:13.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(377, '2013-07-06 12:45:58.0', '0:0:0:0:0:0:0:1', 'TRACE', '删除了[qwe]职务。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(378, '2013-07-06 12:51:09.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(379, '2013-07-06 12:53:22.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(380, '2013-07-06 12:55:32.0', '0:0:0:0:0:0:0:1', 'TRACE', '删除了[123123]职务。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(381, '2013-07-06 13:04:55.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(382, '2013-07-06 13:05:29.0', '0:0:0:0:0:0:0:1', 'TRACE', '添加了sda职务。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(383, '2013-07-06 13:05:47.0', '0:0:0:0:0:0:0:1', 'TRACE', '修改了sda22职务。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(384, '2013-07-06 13:06:34.0', '0:0:0:0:0:0:0:1', 'TRACE', '删除了[sda22]职务。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(385, '2013-07-06 13:40:16.0', '0:0:0:0:0:0:0:1', 'TRACE', '会话超时， 该用户重新登录系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(386, '2013-07-06 13:54:04.0', '0:0:0:0:0:0:0:1', 'TRACE', '添加了校长职务。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(387, '2013-07-06 13:54:10.0', '0:0:0:0:0:0:0:1', 'TRACE', '删除了[qwe, 123, 2312]职务。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(388, '2013-07-06 13:54:22.0', '0:0:0:0:0:0:0:1', 'TRACE', '添加了副校长职务。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(389, '2013-07-06 14:00:57.0', '0:0:0:0:0:0:0:1', 'TRACE', '添加了年级主任职务。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(390, '2013-07-06 14:01:05.0', '0:0:0:0:0:0:0:1', 'TRACE', '添加了年级教学主任职务。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(391, '2013-07-06 14:01:18.0', '0:0:0:0:0:0:0:1', 'TRACE', '添加了年级纪律主任职务。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(392, '2013-07-06 14:01:24.0', '0:0:0:0:0:0:0:1', 'TRACE', '添加了年级组长职务。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(393, '2013-07-06 14:01:34.0', '0:0:0:0:0:0:0:1', 'TRACE', '添加了备科组长职务。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(394, '2013-07-06 14:01:41.0', '0:0:0:0:0:0:0:1', 'TRACE', '添加了学科教研组长职务。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(395, '2013-07-06 14:01:49.0', '0:0:0:0:0:0:0:1', 'TRACE', '添加了教务处主任职务。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(396, '2013-07-06 14:01:56.0', '0:0:0:0:0:0:0:1', 'TRACE', '添加了政教处主任职务。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(397, '2013-07-06 14:02:04.0', '0:0:0:0:0:0:0:1', 'TRACE', '添加了办公室主任职务。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(398, '2013-07-06 15:23:27.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(399, '2013-07-06 15:24:07.0', '0:0:0:0:0:0:0:1', 'TRACE', '添加了年级管理模块。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(400, '2013-07-06 15:24:16.0', '0:0:0:0:0:0:0:1', 'TRACE', '修改了管理员角色的信息。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(401, '2013-07-06 15:24:20.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(402, '2013-07-06 15:39:28.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(403, '2013-07-06 15:42:33.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(404, '2013-07-06 15:54:52.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(405, '2013-07-06 15:56:15.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(406, '2013-07-06 16:04:05.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(407, '2013-07-06 16:04:35.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(408, '2013-07-06 16:24:16.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(409, '2013-07-06 16:24:35.0', '0:0:0:0:0:0:0:1', 'TRACE', '添加了213年级。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(410, '2013-07-06 16:25:38.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(411, '2013-07-06 16:25:50.0', '0:0:0:0:0:0:0:1', 'TRACE', '添加了123年级。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(412, '2013-07-06 16:47:21.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(413, '2013-07-06 17:17:16.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(414, '2013-07-06 17:17:28.0', '0:0:0:0:0:0:0:1', 'TRACE', '添加了1231年级。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(415, '2013-07-06 17:25:12.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(416, '2013-07-06 17:49:51.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(417, '2013-07-06 17:50:31.0', '0:0:0:0:0:0:0:1', 'TRACE', '添加了123年级。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(418, '2013-07-06 18:03:33.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(419, '2013-07-06 18:03:53.0', '0:0:0:0:0:0:0:1', 'TRACE', '添加了qwe年级。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(420, '2013-07-06 18:14:24.0', '0:0:0:0:0:0:0:1', 'TRACE', '添加了sd年级。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(421, '2013-07-06 18:17:49.0', '0:0:0:0:0:0:0:1', 'TRACE', '删除了[123, qwe, sd]年级。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(422, '2013-07-06 18:17:55.0', '0:0:0:0:0:0:0:1', 'TRACE', '添加了qwe年级。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(423, '2013-07-06 18:18:53.0', '0:0:0:0:0:0:0:1', 'TRACE', '添加了123年级。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(424, '2013-07-06 18:19:01.0', '0:0:0:0:0:0:0:1', 'TRACE', '修改了123年级。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(425, '2013-07-06 18:19:16.0', '0:0:0:0:0:0:0:1', 'TRACE', '修改了sdasdsa年级。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(426, '2013-07-06 18:39:20.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(427, '2013-07-06 20:47:31.0', '0:0:0:0:0:0:0:1', 'TRACE', '会话超时， 该用户重新登录系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(428, '2013-07-06 20:50:49.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(429, '2013-07-06 23:08:45.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(430, '2013-07-06 23:09:59.0', '0:0:0:0:0:0:0:1', 'TRACE', '添加了班级管理模块。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(431, '2013-07-06 23:10:08.0', '0:0:0:0:0:0:0:1', 'TRACE', '修改了管理员角色的信息。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(432, '2013-07-06 23:10:11.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(433, '2013-07-06 23:34:24.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(434, '2013-07-06 23:35:07.0', '0:0:0:0:0:0:0:1', 'TRACE', '添加了123年级。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(435, '2013-07-06 23:45:54.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(436, '2013-07-06 23:46:09.0', '0:0:0:0:0:0:0:1', 'TRACE', '添加了2222班级。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(437, '2013-07-06 23:47:00.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(438, '2013-07-06 23:50:01.0', '0:0:0:0:0:0:0:1', 'TRACE', '添加了1班班级。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(439, '2013-07-06 23:50:17.0', '0:0:0:0:0:0:0:1', 'TRACE', '添加了23班级。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(440, '2013-07-07 08:33:42.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(441, '2013-07-07 08:34:08.0', '0:0:0:0:0:0:0:1', 'TRACE', '添加了语文组组织。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(442, '2013-07-07 08:34:17.0', '0:0:0:0:0:0:0:1', 'TRACE', '添加了化学组组织。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(443, '2013-07-07 08:34:31.0', '0:0:0:0:0:0:0:1', 'TRACE', '添加了英语组组织。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(444, '2013-07-07 08:34:41.0', '0:0:0:0:0:0:0:1', 'TRACE', '添加了物理组组织。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(445, '2013-07-07 08:34:50.0', '0:0:0:0:0:0:0:1', 'TRACE', '添加了政治组组织。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(446, '2013-07-07 08:35:04.0', '0:0:0:0:0:0:0:1', 'TRACE', '添加了生物组组织。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(447, '2013-07-07 08:35:15.0', '0:0:0:0:0:0:0:1', 'TRACE', '添加了语文组组织。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(448, '2013-07-07 08:35:26.0', '0:0:0:0:0:0:0:1', 'TRACE', '添加了数学组组织。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(449, '2013-07-07 08:35:34.0', '0:0:0:0:0:0:0:1', 'TRACE', '添加了英语组组织。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(450, '2013-07-07 08:35:44.0', '0:0:0:0:0:0:0:1', 'TRACE', '添加了物理组组织。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(451, '2013-07-07 08:35:51.0', '0:0:0:0:0:0:0:1', 'TRACE', '添加了化学组组织。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(452, '2013-07-07 08:35:59.0', '0:0:0:0:0:0:0:1', 'TRACE', '添加了生物组组织。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(453, '2013-07-07 08:38:33.0', '0:0:0:0:0:0:0:1', 'TRACE', '修改了系统管理模块的信息。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(454, '2013-07-07 08:39:11.0', '0:0:0:0:0:0:0:1', 'TRACE', '删除了系统管理模块。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(455, '2013-07-07 08:40:30.0', '0:0:0:0:0:0:0:1', 'TRACE', '添加了人员组成分工模块。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(456, '2013-07-07 09:22:56.0', '0:0:0:0:0:0:0:1', 'TRACE', '会话超时， 该用户重新登录系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(457, '2013-07-07 09:33:38.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(458, '2013-07-07 13:06:32.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(459, '2013-07-07 13:07:43.0', '0:0:0:0:0:0:0:1', 'TRACE', '添加了组织结构模块。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(460, '2013-07-07 13:07:57.0', '0:0:0:0:0:0:0:1', 'TRACE', '修改了管理员角色的信息。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(461, '2013-07-07 13:08:00.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(462, '2013-07-07 13:16:04.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(463, '2013-07-07 13:18:29.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(464, '2013-07-07 13:21:36.0', '0:0:0:0:0:0:0:1', 'INFO', '添加了{0}文件。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(465, '2013-07-07 13:23:03.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(466, '2013-07-07 13:24:01.0', '0:0:0:0:0:0:0:1', 'INFO', '添加了{0}文件。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(467, '2013-07-07 13:25:16.0', '0:0:0:0:0:0:0:1', 'INFO', '添加了21321文件。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(468, '2013-07-07 13:37:20.0', '0:0:0:0:0:0:0:1', 'INFO', '添加了hhh文件。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(469, '2013-07-07 13:41:17.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(470, '2013-07-07 13:41:46.0', '0:0:0:0:0:0:0:1', 'INFO', '添加了kjkj文件。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(471, '2013-07-07 13:45:15.0', '0:0:0:0:0:0:0:1', 'INFO', '添加了娃儿文件。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(472, '2013-07-07 13:45:57.0', '0:0:0:0:0:0:0:1', 'TRACE', '添加了9班级。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(473, '2013-07-07 13:48:26.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(474, '2013-07-07 13:52:54.0', '0:0:0:0:0:0:0:1', 'INFO', '添加了4434文件。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(475, '2013-07-07 13:54:18.0', '0:0:0:0:0:0:0:1', 'INFO', '添加了12312222文件。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(476, '2013-07-07 14:07:09.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(477, '2013-07-07 14:07:25.0', '0:0:0:0:0:0:0:1', 'INFO', '添加了12323123文件。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(478, '2013-07-07 14:13:44.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(479, '2013-07-07 14:14:05.0', '0:0:0:0:0:0:0:1', 'INFO', '添加了12321文件。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(480, '2013-07-07 14:14:50.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(481, '2013-07-07 14:15:09.0', '0:0:0:0:0:0:0:1', 'INFO', '添加了213123文件。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(482, '2013-07-07 14:16:49.0', '0:0:0:0:0:0:0:1', 'TRACE', '添加了qweq班级。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(483, '2013-07-07 14:17:51.0', '0:0:0:0:0:0:0:1', 'TRACE', '添加了qwe年级。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(484, '2013-07-07 14:18:42.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(485, '2013-07-07 14:18:43.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(486, '2013-07-07 14:18:44.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(487, '2013-07-07 14:18:56.0', '0:0:0:0:0:0:0:1', 'INFO', '添加了2sd文件。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(488, '2013-07-07 14:19:10.0', '0:0:0:0:0:0:0:1', 'INFO', '添加了2sd22文件。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(489, '2013-07-07 14:19:41.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(490, '2013-07-07 14:19:41.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(491, '2013-07-07 14:19:41.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(492, '2013-07-07 14:19:41.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(493, '2013-07-07 14:19:55.0', '0:0:0:0:0:0:0:1', 'INFO', '添加了erer文件。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(494, '2013-07-07 14:20:52.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(495, '2013-07-07 14:21:17.0', '0:0:0:0:0:0:0:1', 'INFO', '添加了eqwe文件。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(496, '2013-07-07 14:21:59.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(497, '2013-07-07 14:22:00.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(498, '2013-07-07 14:22:26.0', '0:0:0:0:0:0:0:1', 'TRACE', '添加了wqe年级。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(499, '2013-07-07 14:22:45.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(500, '2013-07-07 14:22:56.0', '0:0:0:0:0:0:0:1', 'TRACE', '添加了332年级。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(501, '2013-07-07 14:23:15.0', '0:0:0:0:0:0:0:1', 'INFO', '添加了234文件。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(502, '2013-07-07 14:24:28.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(503, '2013-07-07 14:24:39.0', '0:0:0:0:0:0:0:1', 'INFO', '添加了ffff文件。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(504, '2013-07-07 14:26:19.0', '0:0:0:0:0:0:0:1', 'INFO', '添加了gggg文件。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(505, '2013-07-07 14:30:28.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(506, '2013-07-07 14:43:00.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(507, '2013-07-07 14:44:43.0', '0:0:0:0:0:0:0:1', 'TRACE', '添加了{0}模块。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(508, '2013-07-07 14:45:09.0', '0:0:0:0:0:0:0:1', 'TRACE', '添加了组织机构查看模块。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(509, '2013-07-07 14:45:26.0', '0:0:0:0:0:0:0:1', 'TRACE', '修改了管理员角色的信息。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(510, '2013-07-07 14:45:28.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(511, '2013-07-07 14:45:56.0', '0:0:0:0:0:0:0:1', 'TRACE', '修改了组织机构查看模块的信息。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(512, '2013-07-07 14:46:00.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(513, '2013-07-07 14:46:52.0', '0:0:0:0:0:0:0:1', 'INFO', '添加了组织机构文件。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(514, '2013-07-07 15:45:45.0', '0:0:0:0:0:0:0:1', 'TRACE', '添加了科目管理模块。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(515, '2013-07-07 15:45:53.0', '0:0:0:0:0:0:0:1', 'TRACE', '修改了管理员角色的信息。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(516, '2013-07-07 15:45:59.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(517, '2013-07-07 15:55:27.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(518, '2013-07-07 15:55:38.0', '0:0:0:0:0:0:0:1', 'TRACE', '添加了qew科目。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(519, '2013-07-07 15:55:43.0', '0:0:0:0:0:0:0:1', 'TRACE', '修改了qew年级。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(520, '2013-07-07 15:55:48.0', '0:0:0:0:0:0:0:1', 'TRACE', '修改了qew年级。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(521, '2013-07-07 15:56:40.0', '0:0:0:0:0:0:0:1', 'TRACE', '修改了qew22年级。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(522, '2013-07-07 15:57:11.0', '0:0:0:0:0:0:0:1', 'TRACE', '删除了{0}年级。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(523, '2013-07-07 15:57:21.0', '0:0:0:0:0:0:0:1', 'TRACE', '删除了{0}年级。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(524, '2013-07-07 15:58:22.0', '0:0:0:0:0:0:0:1', 'TRACE', '删除了[qew, qew22]年级。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(525, '2013-07-07 15:58:25.0', '0:0:0:0:0:0:0:1', 'TRACE', '删除了[qew]年级。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(526, '2013-07-07 15:58:47.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(527, '2013-07-07 15:58:52.0', '0:0:0:0:0:0:0:1', 'TRACE', '添加了123科目。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(528, '2013-07-07 15:59:00.0', '0:0:0:0:0:0:0:1', 'TRACE', '修改了null科目。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(529, '2013-07-07 15:59:14.0', '0:0:0:0:0:0:0:1', 'TRACE', '修改了null科目。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(530, '2013-07-07 15:59:31.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(531, '2013-07-07 15:59:38.0', '0:0:0:0:0:0:0:1', 'TRACE', '修改了2222科目。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(532, '2013-07-07 15:59:52.0', '0:0:0:0:0:0:0:1', 'TRACE', '删除了[2222]科目。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(533, '2013-07-07 15:59:58.0', '0:0:0:0:0:0:0:1', 'TRACE', '删除了[qew]科目。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(534, '2013-07-07 16:00:05.0', '0:0:0:0:0:0:0:1', 'TRACE', '添加了语文科目。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(535, '2013-07-07 16:00:10.0', '0:0:0:0:0:0:0:1', 'TRACE', '添加了数学科目。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(536, '2013-07-07 16:00:17.0', '0:0:0:0:0:0:0:1', 'TRACE', '添加了英语科目。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(537, '2013-07-07 16:00:22.0', '0:0:0:0:0:0:0:1', 'TRACE', '添加了物理科目。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(538, '2013-07-07 16:00:26.0', '0:0:0:0:0:0:0:1', 'TRACE', '添加了化学科目。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(539, '2013-07-07 16:00:33.0', '0:0:0:0:0:0:0:1', 'TRACE', '添加了生物科目。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(540, '2013-07-07 16:45:27.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(541, '2013-07-07 16:46:14.0', '0:0:0:0:0:0:0:1', 'TRACE', '添加了职称证书模块。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(542, '2013-07-07 16:46:22.0', '0:0:0:0:0:0:0:1', 'TRACE', '修改了管理员角色的信息。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(543, '2013-07-07 16:46:54.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(544, '2013-07-07 16:47:49.0', '0:0:0:0:0:0:0:1', 'TRACE', '添加了123职称证书。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(545, '2013-07-07 16:49:07.0', '0:0:0:0:0:0:0:1', 'TRACE', '添加了3232职称证书。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(546, '2013-07-07 16:49:16.0', '0:0:0:0:0:0:0:1', 'TRACE', '修改了3232职称证书。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(547, '2013-07-07 16:49:22.0', '0:0:0:0:0:0:0:1', 'TRACE', '删除了[3232]职称证书。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(548, '2013-07-07 17:25:19.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(549, '2013-07-07 17:27:37.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(550, '2013-07-07 17:28:02.0', '0:0:0:0:0:0:0:1', 'TRACE', '添加了人员管理模块。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(551, '2013-07-07 17:28:11.0', '0:0:0:0:0:0:0:1', 'TRACE', '修改了管理员角色的信息。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(552, '2013-07-07 17:28:14.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(553, '2013-07-07 17:29:42.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(554, '2013-07-07 17:34:44.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(555, '2013-07-07 17:35:24.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(556, '2013-07-07 17:35:24.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(557, '2013-07-07 17:35:24.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(558, '2013-07-07 17:35:24.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(559, '2013-07-07 17:35:24.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(560, '2013-07-07 17:35:24.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(561, '2013-07-07 17:35:25.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(562, '2013-07-07 17:36:14.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(563, '2013-07-07 17:38:23.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(564, '2013-07-07 17:39:47.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(565, '2013-07-07 17:40:21.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(566, '2013-07-07 17:40:24.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(567, '2013-07-07 17:40:48.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(568, '2013-07-07 17:43:40.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(569, '2013-07-07 17:44:29.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(570, '2013-07-07 17:45:24.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(571, '2013-07-07 17:45:35.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(572, '2013-07-07 17:46:21.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(573, '2013-07-07 17:47:35.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(574, '2013-07-07 17:48:02.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(575, '2013-07-07 17:48:32.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(576, '2013-07-07 17:52:29.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(577, '2013-07-07 17:56:01.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(578, '2013-07-07 17:59:21.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(579, '2013-07-07 18:00:30.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(580, '2013-07-07 18:10:54.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(581, '2013-07-07 18:11:36.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(582, '2013-07-07 18:13:47.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(583, '2013-07-07 18:35:09.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(584, '2013-07-07 18:37:16.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(585, '2013-07-07 18:38:51.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(586, '2013-07-07 18:42:38.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(587, '2013-07-07 19:11:51.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(588, '2013-07-07 19:13:00.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(589, '2013-07-07 22:23:09.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(590, '2013-07-07 23:11:41.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(591, '2013-07-07 23:15:20.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(592, '2013-07-07 23:16:23.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(593, '2013-07-07 23:17:31.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(594, '2013-07-07 23:18:30.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(595, '2013-07-07 23:18:31.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(596, '2013-07-07 23:19:09.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(597, '2013-07-07 23:21:16.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(598, '2013-07-07 23:23:30.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(599, '2013-07-07 23:24:55.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(600, '2013-07-07 23:25:35.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(601, '2013-07-07 23:27:48.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(602, '2013-07-07 23:28:16.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(603, '2013-07-07 23:29:15.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(604, '2013-07-07 23:44:28.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(605, '2013-07-07 23:45:25.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(606, '2013-07-07 23:46:09.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(607, '2013-07-07 23:47:32.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(608, '2013-07-07 23:48:13.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(609, '2013-07-07 23:51:09.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(610, '2013-07-07 23:51:56.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(611, '2013-07-07 23:55:15.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(612, '2013-07-07 23:56:15.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(613, '2013-07-07 23:58:29.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(614, '2013-07-08 00:00:08.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(615, '2013-07-08 00:00:50.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(616, '2013-07-08 00:02:17.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(617, '2013-07-08 21:03:05.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(618, '2013-07-08 21:15:04.0', '0:0:0:0:0:0:0:1', 'TRACE', '删除了hh角色。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(619, '2013-07-08 21:18:10.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(620, '2013-07-08 21:19:37.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(621, '2013-07-08 21:19:55.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(622, '2013-07-08 21:20:29.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(623, '2013-07-08 21:22:33.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(624, '2013-07-08 21:41:43.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(625, '2013-07-08 21:42:45.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(626, '2013-07-08 21:44:45.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(627, '2013-07-08 21:45:58.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(628, '2013-07-08 21:47:36.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(629, '2013-07-08 21:59:12.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(630, '2013-07-08 21:59:35.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(631, '2013-07-09 22:14:38.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(632, '2013-07-09 22:24:45.0', '0:0:0:0:0:0:0:1', 'TRACE', '删除了人员管理模块。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(633, '2013-07-09 22:29:17.0', '0:0:0:0:0:0:0:1', 'TRACE', '添加了人员管理模块。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(634, '2013-07-09 22:29:47.0', '0:0:0:0:0:0:0:1', 'TRACE', '修改了管理员角色的信息。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(635, '2013-07-09 22:32:35.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(636, '2013-07-09 22:49:48.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(637, '2013-07-09 22:53:03.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(638, '2013-07-09 22:59:46.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(639, '2013-07-09 23:01:13.0', '0:0:0:0:0:0:0:1', 'TRACE', '添加了{0}教师信息。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(640, '2013-07-09 23:02:42.0', '0:0:0:0:0:0:0:1', 'TRACE', '添加了张慧华教师信息。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(641, '2013-07-09 23:04:41.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(642, '2013-07-09 23:05:59.0', '0:0:0:0:0:0:0:1', 'TRACE', '添加了林锋教师信息。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(643, '2013-07-10 20:50:31.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(644, '2013-07-10 21:26:49.0', '0:0:0:0:0:0:0:1', 'TRACE', '会话超时， 该用户重新登录系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(645, '2013-07-10 21:29:27.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(646, '2013-07-10 21:56:15.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(647, '2013-07-10 22:02:21.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(648, '2013-07-10 22:04:20.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(649, '2013-07-10 22:14:43.0', '0:0:0:0:0:0:0:1', 'TRACE', '修改了张慧华教师信息。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(650, '2013-07-10 22:15:02.0', '0:0:0:0:0:0:0:1', 'TRACE', '修改了张慧华教师信息。', 'admin')
GO
INSERT INTO [security_log_entity]([id], [create_time], [ip_address], [log_level], [message], [username])
  VALUES(651, '2013-07-10 23:24:05.0', '0:0:0:0:0:0:0:1', 'TRACE', 'admin登录了系统。', 'admin')
GO
