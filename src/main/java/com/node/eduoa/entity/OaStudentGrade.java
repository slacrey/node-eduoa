package com.node.eduoa.entity;

import com.node.system.entity.IdEntity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

/**
 * Created with IntelliJ IDEA.
 * User: linfeng at Administrator
 * Date: 13-7-6
 * Time: 上午9:57
 * To change this template use File | Settings | File Templates.
 */
@javax.persistence.Table(name = "oa_student_grade", schema = "", catalog = "node_eduoa")
@Entity
public class OaStudentGrade extends IdEntity {

    private static final long serialVersionUID = 536487947039848805L;
    @ManyToOne
    @javax.persistence.JoinColumn(name = "grade_id", referencedColumnName = "id", nullable = false)
    private OaGrade oaGradeByGradeId;
    @ManyToOne
    @javax.persistence.JoinColumn(name = "student_id", referencedColumnName = "id", nullable = false)
    private OaStudent oaStudentByStudentId;

    public OaGrade getOaGradeByGradeId() {
        return oaGradeByGradeId;
    }

    public void setOaGradeByGradeId(OaGrade oaGradeByGradeId) {
        this.oaGradeByGradeId = oaGradeByGradeId;
    }

    public OaStudent getOaStudentByStudentId() {
        return oaStudentByStudentId;
    }

    public void setOaStudentByStudentId(OaStudent oaStudentByStudentId) {
        this.oaStudentByStudentId = oaStudentByStudentId;
    }
}
