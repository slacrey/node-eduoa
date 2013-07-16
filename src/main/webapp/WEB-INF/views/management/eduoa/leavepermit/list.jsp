<%@ page language="java" contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include.inc.jsp"%>

<keta:paginationForm action="${contextPath }/management/eduoa/leavepermit/list" page="${page }">
	<input type="hidden" name="keywords" value="${keywords}"/>
</keta:paginationForm>

<form method="post" action="${contextPath }/management/eduoa/leavepermit/list" onsubmit="return navTabSearch(this)">
	<div class="pageHeader">
		<div class="searchBar">
			<ul class="searchContent">
				<li>
					<label>年级名称：</label>
					<input type="text" name="keywords" value="${keywords}"/>
				</li>
			</ul>
			<div class="subBar">
				<ul>						
					<li><div class="button"><div class="buttonContent"><button type="submit">搜索</button></div></div></li>
				</ul>
			</div>
		</div>
	</div>
</form>

<div class="pageContent">

	<div class="panelBar">
		<ul class="toolBar">
			<shiro:hasPermission name="LeaveDraft:view">
                <li><a class="edit" target="selectedTodo" mask="true" width="530" height="350" href="${contextPath }/management/eduoa/leavepermit/submit/{slt_uid}"><span>提交申请</span></a></li>
			</shiro:hasPermission>		
			<shiro:hasPermission name="Grade:save">
				<li><a class="add" target="dialog" mask="true" width="530" height="350" href="${contextPath }/management/eduoa/leavepermit/create"><span>添加年级</span></a></li>
			</shiro:hasPermission>
			<shiro:hasPermission name="Grade:edit">
				<li><a class="edit" target="dialog" mask="true" width="530" height="350" href="${contextPath }/management/eduoa/leavepermit/update/{slt_uid}"><span>编辑年级</span></a></li>
			</shiro:hasPermission>
			<shiro:hasPermission name="Grade:delete">
				<li><a class="delete" target="selectedTodo" rel="ids" href="${contextPath }/management/eduoa/leavepermit/delete" title="确认要删除选定年级?"><span>删除年级</span></a></li>
			</shiro:hasPermission>
		</ul>
	</div>
	
	<table class="table" layoutH="138" width="100%">
		<thead>
			<tr>
				<th width="22"><input type="checkbox" group="ids" class="checkboxCtrl"></th>
				<th>事由</th>
				<th width="100">请假开始时间</th>
				<th width="100">请假结束时间</th>
				<th width="100">审批领导</th>
				<th width="130">申请时间</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="item" items="${leavePermits}">
			<tr target="slt_uid" rel="${item.id}">
				<td><input name="ids" value="${item.id}" type="checkbox"></td>
				<td>${item.reason}</td>
				<td><fmt:formatDate value="${item.startTime}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
				<td><fmt:formatDate value="${item.endTime}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                <td>${item.leaderName}</td>
				<td><fmt:formatDate value="${item.applyTime}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
			</tr>
			</c:forEach>
		</tbody>
	</table>
	<!-- 分页 -->
	<keta:pagination page="${page }"/>
</div>