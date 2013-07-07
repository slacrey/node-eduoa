package com.node.eduoa.dao;

import com.node.eduoa.entity.OaTeacherInfo;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

/**
 * 教师信息dao
 * User: linfeng at Administrator
 * Date: 13-7-7
 * Time: 下午2:48
 * To change this template use File | Settings | File Templates.
 */
public interface TeacherInfoDao extends JpaRepository<OaTeacherInfo, Long>, JpaSpecificationExecutor<OaTeacherInfo> {

}
