CREATE TABLE security_role  ( 
	id         	bigint(20) AUTO_INCREMENT NOT NULL,
	description	varchar(255) NULL,
	name       	varchar(32) NOT NULL 
	);
INSERT INTO security_role(id, description, name)
  VALUES(3, '', '����Ա');
INSERT INTO security_role(id, description, name)
  VALUES(4, NULL, '������Ա');
INSERT INTO security_role(id, description, name)
  VALUES(5, NULL, 'Ӫ����Ա');
INSERT INTO security_role(id, description, name)
  VALUES(7, NULL, '����ʵ����ɫ');
INSERT INTO security_role(id, description, name)
  VALUES(8, '�����ǲ��Խ�ɫ2', 'test');
