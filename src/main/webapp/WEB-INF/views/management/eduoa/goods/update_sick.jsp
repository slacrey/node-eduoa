<%@ page language="java" contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true"
         pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/views/include.inc.jsp" %>
<div class="pageContent">
    <form id="leaveForm" method="post" action="${contextPath }/management/eduoa/goods/sick"
          class="required-validate pageForm" onsubmit="return validateCallback(this, dialogReloadNavTab);">
        <input type="hidden" name="goodsApply.id" value="${goodsApply.id}"/>

        <div class="pageFormContent" style="height: 228px; overflow: auto;" layouth="56">
            <p>
                <label>申请人：</label>
                <input type="text" name="goodsApply.applyTeacherName"
                       value="${goodsApply.applyTeacherName}" readonly="true" class="required" size="32" maxlength="20"/>
            </p>

            <p>
                <label>领取时间：</label>
                <input type="text" name="goodsApply.sickTime" dateFmt="yyyy-MM-dd HH:mm:ss" class="required date" size="30"/>
                <a class="inputDateButton" href="javascript:;">选择</a>
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
                            <button type="button" id="button_close" class="close">关闭</button>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
    </form>
</div>