<%@ page language="java" contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true"
         pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/views/include.inc.jsp" %>
<div class="pageContent">
    <form method="post" action="${contextPath }/management/eduoa/leavepermit/create" class="required-validate pageForm"
          onsubmit="return validateCallback(this, dialogReloadNavTab);">
        <div class="pageFormContent" layoutH="58">
            <p>
                <label>申请时间：</label>
                <input type="text" name="applyTime" dateFmt="yyyy-MM-dd HH:mm:ss" class="required date" size="30"/><a class="inputDateButton"
                                                                                        href="javascript:;">选择</a>
            </p>
            <p>
                <label>申请人：</label>
                <input type="hidden" name="applyTeacherId" value="${user.id}" size="32" maxlength="32"/>
                <input type="text" name="applyTeacherName" value="${user.realname}" readonly="true" class="required" size="32" maxlength="20"/>
            </p>

            <p>
                <label>请假开始时间：</label>
                <input type="text" name="startTime" class="required date" size="30"/><a class="inputDateButton"
                                                                                        href="javascript:;">选择</a>
            </p>
            <p>
                <label>请假结束时间：</label>
                <input type="text" name="endTime" class="required date" size="30"/><a class="inputDateButton"
                                                                                      href="javascript:;">选择</a>
            </p>
            <p>
                <label>事由：</label>
                <input type="text" name="reason" class="required" size="32" maxlength="200"/>
            </p>
            <p>
                <label>审批人：</label>
                <input type="hidden" name="leaderId" size="32" maxlength="32"/>
                <input type="hidden" name="leaderPosition" size="32" maxlength="32"/>
                <input type="text" name="leaderName" class="required" size="32" maxlength="20"/>
                <a class="btnLook" target="dialog" width="530" mask="true" height="450"
                   href="${contextPath }/management/eduoa/teacher/leader"
                   lookupGroup="securityOrganizationByOrgId" title="选择">选择</a>
            </p>

            <p>
                <label>备注：</label>
                <textarea name="remark" cols="28" rows="3" maxlength="255"></textarea>
            </p>
        </div>

        <div class="formBar">
            <ul>
                <li>
                    <div class="button">
                        <div class="buttonContent">
                            <button type="submit">提交</button>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="button">
                        <div class="buttonContent">
                            <button type="submit">保存</button>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="button">
                        <div class="buttonContent">
                            <button type="button" class="close">关闭</button>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
    </form>
</div>