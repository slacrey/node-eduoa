CREATE TABLE [security_permission]  ( 
	[id]         	bigint(20) AUTO_INCREMENT NOT NULL,
	[description]	varchar(255) NULL,
	[name]       	varchar(32) NOT NULL,
	[short_name] 	varchar(16) NOT NULL,
	[module_id]  	bigint(20) NULL 
	)
GO
INSERT INTO [security_permission]([id], [description], [name], [short_name], [module_id])
  VALUES(25, '', '增', 'save', 2)
GO
INSERT INTO [security_permission]([id], [description], [name], [short_name], [module_id])
  VALUES(26, '', '删', 'delete', 2)
GO
INSERT INTO [security_permission]([id], [description], [name], [short_name], [module_id])
  VALUES(27, '', '查', 'view', 2)
GO
INSERT INTO [security_permission]([id], [description], [name], [short_name], [module_id])
  VALUES(28, '', '改', 'edit', 2)
GO
INSERT INTO [security_permission]([id], [description], [name], [short_name], [module_id])
  VALUES(31, '', '查', 'view', 10)
GO
INSERT INTO [security_permission]([id], [description], [name], [short_name], [module_id])
  VALUES(37, '', '增', 'save', 3)
GO
INSERT INTO [security_permission]([id], [description], [name], [short_name], [module_id])
  VALUES(38, '', '删', 'delete', 3)
GO
INSERT INTO [security_permission]([id], [description], [name], [short_name], [module_id])
  VALUES(39, '', '查', 'view', 3)
GO
INSERT INTO [security_permission]([id], [description], [name], [short_name], [module_id])
  VALUES(40, '', '改', 'edit', 3)
GO
INSERT INTO [security_permission]([id], [description], [name], [short_name], [module_id])
  VALUES(45, '', '增', 'save', 4)
GO
INSERT INTO [security_permission]([id], [description], [name], [short_name], [module_id])
  VALUES(46, '', '删', 'delete', 4)
GO
INSERT INTO [security_permission]([id], [description], [name], [short_name], [module_id])
  VALUES(47, '', '查', 'view', 4)
GO
INSERT INTO [security_permission]([id], [description], [name], [short_name], [module_id])
  VALUES(48, '', '改', 'edit', 4)
GO
INSERT INTO [security_permission]([id], [description], [name], [short_name], [module_id])
  VALUES(53, '', '增', 'save', 5)
GO
INSERT INTO [security_permission]([id], [description], [name], [short_name], [module_id])
  VALUES(54, '', '删', 'delete', 5)
GO
INSERT INTO [security_permission]([id], [description], [name], [short_name], [module_id])
  VALUES(55, '', '查', 'view', 5)
GO
INSERT INTO [security_permission]([id], [description], [name], [short_name], [module_id])
  VALUES(56, '', '改', 'edit', 5)
GO
INSERT INTO [security_permission]([id], [description], [name], [short_name], [module_id])
  VALUES(57, '', '增', 'save', 18)
GO
INSERT INTO [security_permission]([id], [description], [name], [short_name], [module_id])
  VALUES(58, '', '删', 'delete', 18)
GO
INSERT INTO [security_permission]([id], [description], [name], [short_name], [module_id])
  VALUES(59, '', '查', 'view', 18)
GO
INSERT INTO [security_permission]([id], [description], [name], [short_name], [module_id])
  VALUES(60, '', '改', 'edit', 18)
GO
INSERT INTO [security_permission]([id], [description], [name], [short_name], [module_id])
  VALUES(61, '', '查', 'view', 24)
GO
INSERT INTO [security_permission]([id], [description], [name], [short_name], [module_id])
  VALUES(62, '', '改', 'edit', 24)
GO
INSERT INTO [security_permission]([id], [description], [name], [short_name], [module_id])
  VALUES(76, '重置密码、更新状态', '重置', 'reset', 3)
GO
INSERT INTO [security_permission]([id], [description], [name], [short_name], [module_id])
  VALUES(77, '分配、撤销角色', '授权', 'assign', 3)
GO
INSERT INTO [security_permission]([id], [description], [name], [short_name], [module_id])
  VALUES(78, '分配、撤销角色', '授权', 'assign', 18)
GO
INSERT INTO [security_permission]([id], [description], [name], [short_name], [module_id])
  VALUES(100, NULL, '增', 'save', 52)
GO
INSERT INTO [security_permission]([id], [description], [name], [short_name], [module_id])
  VALUES(101, NULL, '删', 'delete', 52)
GO
INSERT INTO [security_permission]([id], [description], [name], [short_name], [module_id])
  VALUES(102, NULL, '查', 'view', 52)
GO
INSERT INTO [security_permission]([id], [description], [name], [short_name], [module_id])
  VALUES(103, NULL, '改', 'edit', 52)
GO
INSERT INTO [security_permission]([id], [description], [name], [short_name], [module_id])
  VALUES(104, NULL, '增', 'save', 53)
GO
INSERT INTO [security_permission]([id], [description], [name], [short_name], [module_id])
  VALUES(105, NULL, '删', 'delete', 53)
GO
INSERT INTO [security_permission]([id], [description], [name], [short_name], [module_id])
  VALUES(106, NULL, '查', 'view', 53)
GO
INSERT INTO [security_permission]([id], [description], [name], [short_name], [module_id])
  VALUES(107, NULL, '改', 'edit', 53)
GO
INSERT INTO [security_permission]([id], [description], [name], [short_name], [module_id])
  VALUES(108, NULL, '增', 'save', 54)
GO
INSERT INTO [security_permission]([id], [description], [name], [short_name], [module_id])
  VALUES(109, NULL, '删', 'delete', 54)
GO
INSERT INTO [security_permission]([id], [description], [name], [short_name], [module_id])
  VALUES(110, NULL, '查', 'view', 54)
GO
INSERT INTO [security_permission]([id], [description], [name], [short_name], [module_id])
  VALUES(111, NULL, '改', 'edit', 54)
GO
INSERT INTO [security_permission]([id], [description], [name], [short_name], [module_id])
  VALUES(124, '', '晒', 'sai', 52)
GO
INSERT INTO [security_permission]([id], [description], [name], [short_name], [module_id])
  VALUES(125, '', '清除', 'clear', 52)
GO
INSERT INTO [security_permission]([id], [description], [name], [short_name], [module_id])
  VALUES(126, '', '增', 'save', 14)
GO
INSERT INTO [security_permission]([id], [description], [name], [short_name], [module_id])
  VALUES(127, '', '删', 'delete', 14)
GO
INSERT INTO [security_permission]([id], [description], [name], [short_name], [module_id])
  VALUES(128, '', '查', 'view', 14)
GO
INSERT INTO [security_permission]([id], [description], [name], [short_name], [module_id])
  VALUES(129, '', '改', 'edit', 14)
GO
INSERT INTO [security_permission]([id], [description], [name], [short_name], [module_id])
  VALUES(130, '', '看', 'look', 14)
GO
INSERT INTO [security_permission]([id], [description], [name], [short_name], [module_id])
  VALUES(131, NULL, '增', 'save', 58)
GO
INSERT INTO [security_permission]([id], [description], [name], [short_name], [module_id])
  VALUES(132, NULL, '删', 'delete', 58)
GO
INSERT INTO [security_permission]([id], [description], [name], [short_name], [module_id])
  VALUES(133, NULL, '查', 'view', 58)
GO
INSERT INTO [security_permission]([id], [description], [name], [short_name], [module_id])
  VALUES(134, NULL, '改', 'edit', 58)
GO
INSERT INTO [security_permission]([id], [description], [name], [short_name], [module_id])
  VALUES(135, NULL, '增', 'save', 59)
GO
INSERT INTO [security_permission]([id], [description], [name], [short_name], [module_id])
  VALUES(136, NULL, '删', 'delete', 59)
GO
INSERT INTO [security_permission]([id], [description], [name], [short_name], [module_id])
  VALUES(137, NULL, '查', 'view', 59)
GO
INSERT INTO [security_permission]([id], [description], [name], [short_name], [module_id])
  VALUES(138, NULL, '改', 'edit', 59)
GO
INSERT INTO [security_permission]([id], [description], [name], [short_name], [module_id])
  VALUES(159, '', '增', 'save', 38)
GO
INSERT INTO [security_permission]([id], [description], [name], [short_name], [module_id])
  VALUES(160, '', '删', 'delete', 38)
GO
INSERT INTO [security_permission]([id], [description], [name], [short_name], [module_id])
  VALUES(161, '', '查', 'view', 38)
GO
INSERT INTO [security_permission]([id], [description], [name], [short_name], [module_id])
  VALUES(162, '', '改', 'edit', 38)
GO
INSERT INTO [security_permission]([id], [description], [name], [short_name], [module_id])
  VALUES(171, NULL, '增', 'save', 63)
GO
INSERT INTO [security_permission]([id], [description], [name], [short_name], [module_id])
  VALUES(172, NULL, '删', 'delete', 63)
GO
INSERT INTO [security_permission]([id], [description], [name], [short_name], [module_id])
  VALUES(173, NULL, '查', 'view', 63)
GO
INSERT INTO [security_permission]([id], [description], [name], [short_name], [module_id])
  VALUES(174, NULL, '改', 'edit', 63)
GO
INSERT INTO [security_permission]([id], [description], [name], [short_name], [module_id])
  VALUES(175, NULL, '增', 'save', 64)
GO
INSERT INTO [security_permission]([id], [description], [name], [short_name], [module_id])
  VALUES(176, NULL, '删', 'delete', 64)
GO
INSERT INTO [security_permission]([id], [description], [name], [short_name], [module_id])
  VALUES(177, NULL, '查', 'view', 64)
GO
INSERT INTO [security_permission]([id], [description], [name], [short_name], [module_id])
  VALUES(178, NULL, '改', 'edit', 64)
GO
INSERT INTO [security_permission]([id], [description], [name], [short_name], [module_id])
  VALUES(179, NULL, '增', 'save', 65)
GO
INSERT INTO [security_permission]([id], [description], [name], [short_name], [module_id])
  VALUES(180, NULL, '删', 'delete', 65)
GO
INSERT INTO [security_permission]([id], [description], [name], [short_name], [module_id])
  VALUES(181, NULL, '查', 'view', 65)
GO
INSERT INTO [security_permission]([id], [description], [name], [short_name], [module_id])
  VALUES(182, NULL, '改', 'edit', 65)
GO
INSERT INTO [security_permission]([id], [description], [name], [short_name], [module_id])
  VALUES(183, NULL, '增', 'save', 66)
GO
INSERT INTO [security_permission]([id], [description], [name], [short_name], [module_id])
  VALUES(184, NULL, '删', 'delete', 66)
GO
INSERT INTO [security_permission]([id], [description], [name], [short_name], [module_id])
  VALUES(185, NULL, '查', 'view', 66)
GO
INSERT INTO [security_permission]([id], [description], [name], [short_name], [module_id])
  VALUES(186, NULL, '改', 'edit', 66)
GO
INSERT INTO [security_permission]([id], [description], [name], [short_name], [module_id])
  VALUES(187, NULL, '增', 'save', 67)
GO
INSERT INTO [security_permission]([id], [description], [name], [short_name], [module_id])
  VALUES(188, NULL, '查', 'view', 67)
GO
INSERT INTO [security_permission]([id], [description], [name], [short_name], [module_id])
  VALUES(189, NULL, '增', 'save', 68)
GO
INSERT INTO [security_permission]([id], [description], [name], [short_name], [module_id])
  VALUES(190, NULL, '删', 'delete', 68)
GO
INSERT INTO [security_permission]([id], [description], [name], [short_name], [module_id])
  VALUES(191, NULL, '查', 'view', 68)
GO
INSERT INTO [security_permission]([id], [description], [name], [short_name], [module_id])
  VALUES(192, NULL, '改', 'edit', 68)
GO
INSERT INTO [security_permission]([id], [description], [name], [short_name], [module_id])
  VALUES(193, NULL, '增', 'save', 69)
GO
INSERT INTO [security_permission]([id], [description], [name], [short_name], [module_id])
  VALUES(194, NULL, '删', 'delete', 69)
GO
INSERT INTO [security_permission]([id], [description], [name], [short_name], [module_id])
  VALUES(195, NULL, '查', 'view', 69)
GO
INSERT INTO [security_permission]([id], [description], [name], [short_name], [module_id])
  VALUES(196, NULL, '改', 'edit', 69)
GO
INSERT INTO [security_permission]([id], [description], [name], [short_name], [module_id])
  VALUES(197, NULL, '增', 'save', 70)
GO
INSERT INTO [security_permission]([id], [description], [name], [short_name], [module_id])
  VALUES(198, NULL, '删', 'delete', 70)
GO
INSERT INTO [security_permission]([id], [description], [name], [short_name], [module_id])
  VALUES(199, NULL, '查', 'view', 70)
GO
INSERT INTO [security_permission]([id], [description], [name], [short_name], [module_id])
  VALUES(200, NULL, '改', 'edit', 70)
GO
INSERT INTO [security_permission]([id], [description], [name], [short_name], [module_id])
  VALUES(205, NULL, '增', 'save', 72)
GO
INSERT INTO [security_permission]([id], [description], [name], [short_name], [module_id])
  VALUES(206, NULL, '删', 'delete', 72)
GO
INSERT INTO [security_permission]([id], [description], [name], [short_name], [module_id])
  VALUES(207, NULL, '查', 'view', 72)
GO
INSERT INTO [security_permission]([id], [description], [name], [short_name], [module_id])
  VALUES(208, NULL, '改', 'edit', 72)
GO
INSERT INTO [security_permission]([id], [description], [name], [short_name], [module_id])
  VALUES(209, '', '任课班级', 'teachClass', 72)
GO
INSERT INTO [security_permission]([id], [description], [name], [short_name], [module_id])
  VALUES(210, '', '带领班级', 'guideClass', 72)
GO
