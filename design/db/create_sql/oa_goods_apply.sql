CREATE TABLE oa_goods_apply  ( 
	id                     	bigint(20) NOT NULL,
	leader_id              	bigint(20) COMMENT '审批人ID'  NULL,
	leader_name            	varchar(30) COMMENT '审批人名称'  NULL,
	leader_position        	varchar(30) COMMENT '审批人职位'  NULL,
	goods_id               	bigint(20) COMMENT '物品ID'  NULL,
	goods_name             	varchar(50) COMMENT '物品名称'  NULL,
	goods_unit             	varchar(50) COMMENT '物品单位'  NULL,
	apply_teacher_id       	bigint(20) COMMENT '申请人编号'  NULL,
	apply_teacher_name     	varchar(30) COMMENT '申请人姓名'  NULL,
	apply_organization_id  	bigint(20) COMMENT '申请部门ID'  NULL,
	apply_organization_name	varchar(30) COMMENT '申请部门名称'  NULL,
	create_time            	datetime NULL,
	apply_time             	datetime NULL,
	apply_statue           	int(11) COMMENT '审批状态（0：未审批；1：已通过；2：未通过）'  NULL,
	statue                 	int(11) COMMENT '提交状态（0：未提交；1：已提交）'  NULL 
	)
COMMENT = '物品申领' ;
