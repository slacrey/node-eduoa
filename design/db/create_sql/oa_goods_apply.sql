CREATE TABLE oa_goods_apply  ( 
	id                     	bigint(20) NOT NULL,
	leader_id              	bigint(20) COMMENT '������ID'  NULL,
	leader_name            	varchar(30) COMMENT '����������'  NULL,
	leader_position        	varchar(30) COMMENT '������ְλ'  NULL,
	goods_id               	bigint(20) COMMENT '��ƷID'  NULL,
	goods_name             	varchar(50) COMMENT '��Ʒ����'  NULL,
	goods_unit             	varchar(50) COMMENT '��Ʒ��λ'  NULL,
	apply_teacher_id       	bigint(20) COMMENT '�����˱��'  NULL,
	apply_teacher_name     	varchar(30) COMMENT '����������'  NULL,
	apply_organization_id  	bigint(20) COMMENT '���벿��ID'  NULL,
	apply_organization_name	varchar(30) COMMENT '���벿������'  NULL,
	create_time            	datetime NULL,
	apply_time             	datetime NULL,
	apply_statue           	int(11) COMMENT '����״̬��0��δ������1����ͨ����2��δͨ����'  NULL,
	statue                 	int(11) COMMENT '�ύ״̬��0��δ�ύ��1�����ύ��'  NULL 
	)
COMMENT = '��Ʒ����' ;
