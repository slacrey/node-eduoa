package com.node.eduoa.entity;

import com.node.system.entity.IdEntity;

import javax.persistence.Column;
import java.util.Date;

/**
 *
 * User: linfeng
 * Date: 13-7-20
 * Time: 下午4:42
 * To change this template use File | Settings | File Templates.
 */
public class OaRegistrationAttendance extends IdEntity {

    private static final long serialVersionUID = 7116375295309848920L;

    @Column(name = "attendance_date")
    private Date attendanceDate;//考勤日期
    @Column(name = "teacher_id")
    private Long teacherId;
    @Column(name = "teacher_name")
    private String teacherName;

    @Column(name = "organization_id")
    private Long organizationId;

    @Column(name = "organization_name")
    private String organizationName;

    @Column(name = "morning_start")
    private Integer morningStart;

    @Column(name = "morning_end")
    private Integer morningEnd;

    @Column(name = "afternoon_start")
    private Integer afternoonStart;

    @Column(name = "afternoon_end")
    private Integer afternoonEnd;

    @Column(name = "night_start")
    private Integer nightStart;

    @Column(name = "night_end")
    private Integer nightEnd;

    @Column(name = "create_time")
    private Date createTime;

    public Date getAttendanceDate() {
        return attendanceDate;
    }

    public void setAttendanceDate(Date attendanceDate) {
        this.attendanceDate = attendanceDate;
    }

    public Long getTeacherId() {
        return teacherId;
    }

    public void setTeacherId(Long teacherId) {
        this.teacherId = teacherId;
    }

    public String getTeacherName() {
        return teacherName;
    }

    public void setTeacherName(String teacherName) {
        this.teacherName = teacherName;
    }

    public Long getOrganizationId() {
        return organizationId;
    }

    public void setOrganizationId(Long organizationId) {
        this.organizationId = organizationId;
    }

    public String getOrganizationName() {
        return organizationName;
    }

    public void setOrganizationName(String organizationName) {
        this.organizationName = organizationName;
    }

    public Integer getMorningStart() {
        return morningStart;
    }

    public void setMorningStart(Integer morningStart) {
        this.morningStart = morningStart;
    }

    public Integer getMorningEnd() {
        return morningEnd;
    }

    public void setMorningEnd(Integer morningEnd) {
        this.morningEnd = morningEnd;
    }

    public Integer getAfternoonStart() {
        return afternoonStart;
    }

    public void setAfternoonStart(Integer afternoonStart) {
        this.afternoonStart = afternoonStart;
    }

    public Integer getAfternoonEnd() {
        return afternoonEnd;
    }

    public void setAfternoonEnd(Integer afternoonEnd) {
        this.afternoonEnd = afternoonEnd;
    }

    public Integer getNightStart() {
        return nightStart;
    }

    public void setNightStart(Integer nightStart) {
        this.nightStart = nightStart;
    }

    public Integer getNightEnd() {
        return nightEnd;
    }

    public void setNightEnd(Integer nightEnd) {
        this.nightEnd = nightEnd;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }
}
