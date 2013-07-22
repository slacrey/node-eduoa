<%@ page language="java" contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include.inc.jsp"%>

<keta:paginationForm action="${contextPath }/management/eduoa/attendance/list" page="${page }">
	<input type="hidden" name="keywords" value="${keywords}"/>
</keta:paginationForm>

<form method="post" action="${contextPath }/management/eduoa/attendance/list" onsubmit="return navTabSearch(this)">
	<div class="pageHeader">
		<div class="searchBar">

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
			<c:forEach var="item" items="${positions}">
			<tr target="slt_uid" rel="${item.id}">
				<td><fmt:formatDate value="${item.attendanceDate}" pattern="yyyy-MM-dd"/></td>
				<td>${item.teacherName}</td>
				<td>${item.teacherName}</td>
				<td>${item.teacherName}</td>
				<td>${item.teacherName}</td>
			</tr>
			</c:forEach>
		</tbody>
	</table>
	<!-- 分页 -->
	<keta:pagination page="${page }"/>
</div>