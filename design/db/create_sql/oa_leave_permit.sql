CREATE TABLE oa_leave_permit  ( 
	id                	bigint(20) NOT NULL,
	leader_id         	bigint(20) COMMENT '审批人ID'  NULL,
	leader_name       	varchar(30) COMMENT '审批人名称'  NULL,
	leader_position   	varchar(30) COMMENT '审批人职位'  NULL,
	reason            	varchar(200) COMMENT '请假事由'  NULL,
	remark            	varchar(255) COMMENT '备注'  NULL,
	start_time        	datetime COMMENT '请假开始时间'  NULL,
	end_time          	datetime COMMENT '销假时间'  NULL,
	apply_time        	datetime COMMENT '申请时间'  NULL,
	apply_teacher_id  	bigint(20) COMMENT '申请人编号'  NULL,
	apply_teacher_name	varchar(30) COMMENT '申请人姓名'  NULL,
	create_time       	datetime COMMENT '创建时间'  NULL,
	statue            	int(11) COMMENT '0：未提交；1：已提交；'  NULL,
	apply_statue      	int(11) COMMENT '审批状态（1：通过；0：驳回）'  NULL 
	)
COMMENT = '请销假' ;
