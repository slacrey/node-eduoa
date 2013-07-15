CREATE TABLE oa_leave_permit  ( 
	id                	bigint(20) NOT NULL,
	leader_id         	bigint(20) COMMENT '������ID'  NULL,
	leader_name       	varchar(30) COMMENT '����������'  NULL,
	leader_position   	varchar(30) COMMENT '������ְλ'  NULL,
	reason            	varchar(200) COMMENT '�������'  NULL,
	remark            	varchar(255) COMMENT '��ע'  NULL,
	start_time        	datetime COMMENT '��ٿ�ʼʱ��'  NULL,
	end_time          	datetime COMMENT '����ʱ��'  NULL,
	apply_time        	datetime COMMENT '����ʱ��'  NULL,
	apply_teacher_id  	bigint(20) COMMENT '�����˱��'  NULL,
	apply_teacher_name	varchar(30) COMMENT '����������'  NULL,
	create_time       	datetime COMMENT '����ʱ��'  NULL,
	statue            	int(11) COMMENT '0��δ�ύ��1�����ύ��'  NULL,
	apply_statue      	int(11) COMMENT '����״̬��1��ͨ����0�����أ�'  NULL 
	)
COMMENT = '������' ;
