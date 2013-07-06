package com.node.eduoa.entity;

import com.node.system.entity.IdEntity;

import javax.persistence.*;
import java.util.Date;
import java.util.Collection;

/**
 * Created with IntelliJ IDEA.
 * User: linfeng at Administrator
 * Date: 13-7-6
 * Time: 上午9:57
 * To change this template use File | Settings | File Templates.
 */
@javax.persistence.Table(name = "oa_student", schema = "", catalog = "node_eduoa")
@Entity
public class OaStudent extends IdEntity {

    private static final long serialVersionUID = 8252084003837390544L;
    @javax.persistence.Column(name = "student_name")
    private String studentName;
    @javax.persistence.Column(name = "id_number")
    private String idNumber;
    @javax.persistence.Column(name = "gender")
    private Integer gender;
    @javax.persistence.Column(name = "student_number")
    private String studentNumber;

    @Temporal(TemporalType.TIMESTAMP)
    @javax.persistence.Column(name = "birthday")
    private Date birthday;

    @Temporal(TemporalType.TIMESTAMP)
    @javax.persistence.Column(name = "create_time")
    private Date createTime;

    @Temporal(TemporalType.TIMESTAMP)
    @javax.persistence.Column(name = "update_time")
    private Date updateTime;
    @javax.persistence.Column(name = "operator_id")
    private Long operatorId;
    @OneToMany(mappedBy = "oaStudentByStudentId")
    private Collection<OaContact> oaContactsById;
    @OneToMany(mappedBy = "oaStudentByStudentId")
    private Collection<OaStudentClass> oaStudentClassesById;
    @OneToMany(mappedBy = "oaStudentByStudentId")
    private Collection<OaStudentGrade> oaStudentGradesById;

    public String getStudentName() {
        return studentName;
    }

    public void setStudentName(String studentName) {
        this.studentName = studentName;
    }

    public String getIdNumber() {
        return idNumber;
    }

    public void setIdNumber(String idNumber) {
        this.idNumber = idNumber;
    }

    public Integer getGender() {
        return gender;
    }

    public void setGender(Integer gender) {
        this.gender = gender;
    }

    public String getStudentNumber() {
        return studentNumber;
    }

    public void setStudentNumber(String studentNumber) {
        this.studentNumber = studentNumber;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    public Long getOperatorId() {
        return operatorId;
    }

    public void setOperatorId(Long operatorId) {
        this.operatorId = operatorId;
    }

    public Collection<OaContact> getOaContactsById() {
        return oaContactsById;
    }

    public void setOaContactsById(Collection<OaContact> oaContactsById) {
        this.oaContactsById = oaContactsById;
    }

    public Collection<OaStudentClass> getOaStudentClassesById() {
        return oaStudentClassesById;
    }

    public void setOaStudentClassesById(Collection<OaStudentClass> oaStudentClassesById) {
        this.oaStudentClassesById = oaStudentClassesById;
    }

    public Collection<OaStudentGrade> getOaStudentGradesById() {
        return oaStudentGradesById;
    }

    public void setOaStudentGradesById(Collection<OaStudentGrade> oaStudentGradesById) {
        this.oaStudentGradesById = oaStudentGradesById;
    }

}
