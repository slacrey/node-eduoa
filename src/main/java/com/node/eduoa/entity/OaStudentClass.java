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
@javax.persistence.Table(name = "oa_student_class", schema = "", catalog = "node_eduoa")
@Entity
public class OaStudentClass extends IdEntity {

    private static final long serialVersionUID = 4859515590347236233L;

    @ManyToOne
    @javax.persistence.JoinColumn(name = "class_id", referencedColumnName = "id", nullable = false)
    private OaClass oaClassByClassId;
    @ManyToOne
    @javax.persistence.JoinColumn(name = "student_id", referencedColumnName = "id", nullable = false)
    private OaStudent oaStudentByStudentId;


    public OaClass getOaClassByClassId() {
        return oaClassByClassId;
    }

    public void setOaClassByClassId(OaClass oaClassByClassId) {
        this.oaClassByClassId = oaClassByClassId;
    }

    public OaStudent getOaStudentByStudentId() {
        return oaStudentByStudentId;
    }

    public void setOaStudentByStudentId(OaStudent oaStudentByStudentId) {
        this.oaStudentByStudentId = oaStudentByStudentId;
    }
}
