<%@ page language="java" contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include.inc.jsp"%>

<keta:paginationForm action="${contextPath }/management/eduoa/attendance/list" page="${page }">
	<input type="hidden" name="keywords" value="${keywords}"/>
</keta:paginationForm>

<form method="post" action="${contextPath }/management/eduoa/attendance/list" onsubmit="return navTabSearch(this)">
	<div class="pageHeader">
		<div class="searchBar">
            <ul class="searchContent">

            </ul>
            <div class="subBar">

            </div>
		</div>
	</div>
</form>

<div class="pageContent">

	<div class="panelBar"></div>
	
	<table class="table" layoutH="138" width="100%">
		<thead>
			<tr>
				<th width="200">日期</th>
				<th>姓名</th>
				<th width="100">上午上班</th>
				<th width="100">上午下班</th>
				<th width="100">下午上班</th>
				<th width="100">下午下班</th>
				<th width="100">晚上上班</th>
				<th width="100">晚上下班</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="item" items="${registrationAttendances}">
			<tr target="slt_uid" rel="${item.id}">
				<td>${item.attendanceDate}</td>
				<td>${item.teacherName}</td>
				<td>
                    <c:if test="${item.morningStartDisplay == 1}">
                        <a href="${contextPath }/management/eduoa/attendance/list/${item.id}">签到</a>
                    </c:if>
                </td>
				<td>
                    <c:if test="${item.morningEndDisplay == 1}">
                        <a href="${contextPath }/management/eduoa/attendance/list/${item.id}">签退</a>
                    </c:if>
				</td>
				<td>
                    <c:if test="${item.afternoonStartDisplay == 1}">
                        <a href="${contextPath }/management/eduoa/attendance/list/${item.id}">签到</a>
                    </c:if>
				</td>
                <td>
                    <c:if test="${item.afternoonEndDisplay == 1}">
                        <a href="${contextPath }/management/eduoa/attendance/list/${item.id}">签退</a>
                    </c:if>
                </td>
                <td>
                    <c:if test="${item.nightStartDisplay == 1}">
                        <a href="${contextPath }/management/eduoa/attendance/list/${item.id}">签到</a>
                    </c:if>
                </td>
                <td>
                    <c:if test="${item.nightEndDisplay == 1}">
                        <a href="${contextPath }/management/eduoa/attendance/list/${item.id}">签退</a>
                    </c:if>
                </td>
			</tr>
			</c:forEach>
		</tbody>
	</table>
	<!-- 分页 -->
	<keta:pagination page="${page }"/>
</div>