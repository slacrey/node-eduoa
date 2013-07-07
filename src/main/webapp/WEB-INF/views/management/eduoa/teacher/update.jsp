<%@ page language="java" contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include.inc.jsp"%>    
<div class="pageContent">
<form method="post" action="${contextPath }/management/eduoa/teacher/update" class="required-validate pageForm" onsubmit="return validateCallback(this, dialogReloadNavTab);">
	<input type="hidden" name="id" value="${teacherInfo.id}"/>
    <div class="pageFormContent" layoutH="56">

        <p>
            <label>员工序号：</label>
            <input name="teacherNumber" type="text" size="30" value="${teacherInfo.teacherNumber}" readonly="readonly"/>
        </p>

        <p>
            <label>姓名：</label>
            <input name="teacherName" class="required" type="text" size="30" value="${teacherInfo.teacherName}" alt="请输入客户名称"/>
        </p>

        <p>
            <label>身份证号码：</label>
            <input name="idNumber" class="required" type="text" value="${teacherInfo.idNumber}" size="30" maxlength="18" alt="请输入身份证号码"/>
        </p>

        <p>
            <label>性别：</label>
            <select name="gender" class="combox">
                <c:forEach items="${genderEnum}" var="item" >
                    <option ${teacherInfo.gender == item.index ? 'selected="selected"':''}
                        value="${item.index}">${item.text}</option>
                </c:forEach>
            </select>
        </p>

        <p>
            <label>出生日期：</label>
            <input type="text" name="birthday" pattern="yyyy-MM-dd" value="${teacherInfo.birthday}" class="date" size="30"/><a class="inputDateButton"
                                                                          href="javascript:;">选择</a>
        </p>

        <p>
            <label>手机号：</label>
            <input type="text" name="phone" value="${teacherInfo.phone}" size="30"/>
        </p>

        <p>
            <label>电子邮箱：</label>
            <input type="text" name="email" class="email" value="${teacherInfo.email}" size="30"/>
        </p>

        <div class="divider"></div>

        <p>
            <label>年级：</label>
            <select name="oaGradeByGradeId.id" class="combox">
                <c:forEach items="${grades}" var="item" >
                    <option ${item.id == teacherInfo.oaGradeByGradeId.id ? 'selected="selected"' : ''}
                            value="${item.id}">${item.gradeName}</option>
                </c:forEach>
            </select>
        </p>
        <p>
            <label>工作岗位：</label>
            <input type="hidden" value="${teacherInfo.securityOrganizationByOrgId.id}"
                   name="securityOrganizationByOrgId.id"/>
            <input type="text" class="required" name="securityOrganizationByOrgId.name"
                   value="${teacherInfo.securityOrganizationByOrgId.name}"/>
            <a class="btnLook" width="530" height="450" href="${contextPath }/management/eduoa/teacher/tree"
               lookupGroup="securityOrganizationByOrgId" title="选择">选择</a>
        </p>
        <p>
            <label>职务：</label>
            <select name="oaPositionByPositionId.id" class="combox">
                <c:forEach items="${positions}" var="item" >
                    <option ${teacherInfo.oaPositionByPositionId.id == item.id ? 'selected="selected"' : ''}
                            value="${item.id}">${item.positionName}</option>
                </c:forEach>
            </select>
        </p>
        <p>
            <label>学科：</label>
            <select name="oaSubjectBySubjectId.id" class="combox">
                <option value="">不教授</option>
                <c:forEach var="item" items="${subjects}">
                    <option ${teacherInfo.oaSubjectBySubjectId.id == item.id ? 'selected="selected"' : ''}
                            value="${item.id}">${item.subjectName}</option>
                </c:forEach>
            </select>
        </p>
        <p>
            <label>任课班级：</label>
            <input type="hidden" name="classIds" value=""/>
            <input type="text" class="required" name="classNames" value=""/>
            <a class="btnLook" width="530" height="450" href="${contextPath }/management/eduoa/teacher/tree_grade"
               title="选择">选择</a>
        </p>

        <div class="divider"></div>

        <p>
            <label>政治面貌：</label>
            <select name="politicalLandscape" class="combox">
                <c:forEach items="${politicalLandscapeEnum}" var="item" >
                    <option ${teacherInfo.politicalLandscape == item.id ? 'selected="selected"' : ''}
                            value="${item.index}">${item.text}</option>
                </c:forEach>
            </select>
        </p>

        <p>
            <label>参加工作时间：</label>
            <input type="text" name="workingTime" pattern="yyyy-MM-dd"
                   value="${teacherInfo.workingTime}" class="date" size="30"/><a class="inputDateButton"
                                                                             href="javascript:;">选择</a>
        </p>
        <p>
            <label>进入学校时间：</label>
            <input type="text" name="joinTime" pattern="yyyy-MM-dd"
                   value="${teacherInfo.joinTime}" class="date" size="30"/><a class="inputDateButton"
                                                                          href="javascript:;">选择</a>
        </p>
        <p>
            <label>原始学历：</label>
            <select name="originalEducation" class="combox" >
                <c:forEach items="${educations}" var="item" >
                    <option ${teacherInfo.originalEducation == item.index ? 'selected="selected"' : ''}
                            value="${item.index}">${item.text}</option>
                </c:forEach>
            </select>
        </p>
        <p>
            <label>原始学历取得时间：</label>
            <input type="text" name="originalEducationTime" pattern="yyyy-MM-dd"
                   value="${teacherInfo.originalEducationTime}" class="date" size="30"/><a class="inputDateButton"
                                                                                       href="javascript:;">选择</a>
        </p>
        <p>
            <label>最新学历：</label>
            <select name="newEducation" class="combox" >
                <c:forEach items="${educations}" var="item" >
                    <option ${teacherInfo.newEducation == item.index ? 'selected="selected"' : ''}
                            value="${item.index}">${item.text}</option>
                </c:forEach>
            </select>
        </p>
        <p>
            <label>最新学历取得时间：</label>
            <input type="text" name="newEducationTime" pattern="yyyy-MM-dd"
                   value="${teacherInfo.newEducationTime}" class="date" size="30"/><a class="inputDateButton"
                                                                                  href="javascript:;">选择</a>
        </p>
        <p>
            <label>职称：</label>
            <select name="certificatesType" class="combox" >
                <c:forEach items="${certificateTypes}" var="item" >
                    <option ${teacherInfo.certificatesType == item.id ? 'selected="selected"':''}
                            value="${item.id}">${item.typeName}</option>
                </c:forEach>
            </select>
        </p>
        <p>
            <label>职称评定时间：</label>
            <input type="text" name="certificatesTime" pattern="yyyy-MM-dd"
                   value="${teacherInfo.certificatesTime}" class="date" size="30"/><a class="inputDateButton"
                                                                                  href="javascript:;">选择</a>
        </p>
        <p>
            <label>编制情况：</label>
            <select name="establishment" class="combox" >
                <c:forEach items="${establishments}" var="item" >
                    <option ${teacherInfo.establishment == item.index ? 'selected="selected"' : ''} value="${item.index}">${item.text}</option>
                </c:forEach>
            </select>
        </p>
    </div>
	
	<div class="formBar">
		<ul>
			<li><div class="button"><div class="buttonContent"><button type="submit">确定</button></div></div></li>
			<li><div class="button"><div class="buttonContent"><button type="button" class="close">关闭</button></div></div></li>
		</ul>
	</div>
</form>
</div>