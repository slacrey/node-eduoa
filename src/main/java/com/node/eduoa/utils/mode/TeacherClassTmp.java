package com.node.eduoa.utils.mode;

import java.io.Serializable;

/**
 *
 * User: linfeng at Administrator
 * Date: 13-7-9
 * Time: 下午8:43
 * To change this template use File | Settings | File Templates.
 */
public class TeacherClassTmp implements Serializable {

    private String classIds;
    private String classNames;

    public String getClassIds() {
        return classIds;
    }

    public void setClassIds(String classIds) {
        this.classIds = classIds;
    }

    public String getClassNames() {
        return classNames;
    }

    public void setClassNames(String classNames) {
        this.classNames = classNames;
    }
}
