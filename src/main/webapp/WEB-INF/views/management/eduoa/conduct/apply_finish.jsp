<%@ page language="java" contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include.inc.jsp"%>

<keta:paginationForm action="${contextPath }/management/eduoa/conduct/applyFinish" page="${page }">
	<input type="hidden" name="keywords" value="${keywords}"/>
</keta:paginationForm>

<form method="post" action="${contextPath }/management/eduoa/conduct/applyFinish" onsubmit="return navTabSearch(this)">
	<div class="pageHeader">
		<div class="searchBar">
			<ul class="searchContent">
				<li>
					<label>物品名称：</label>
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
            <shiro:hasPermission name="PurchaseApplyFinish:add">
                <li><a class="add" target="navTab" href="${contextPath }/management/eduoa/conduct/create/{slt_uid}"><span>添加采购</span></a></li>
            </shiro:hasPermission>
        </ul>
    </div>
	
	<table class="table" layoutH="138" width="100%">
		<thead>
			<tr>
				<th width="22"><input type="checkbox" group="ids" class="checkboxCtrl"></th>
                <th width="130">申请时间</th>
                <th width="130">申请人</th>
                <th width="130">申请部门</th>
                <th width="100">审批领导</th>
                <th>物品名称</th>
                <th width="100">单位</th>
                <th width="130">数量</th>
                <th width="130">审批状态</th>
                <th width="130">审批时间</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="item" items="${purchaseApplies}">
			<tr target="slt_uid" rel="${item.id}">
				<td><input name="ids" value="${item.id}" type="checkbox"></td>
                <td><fmt:formatDate value="${item.createTime}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                <td>${item.applyTeacherName}</td>
                <td>${item.applyOrganizationName}</td>
                <td>${item.leaderName}</td>
                <td>${item.goodsName}</td>
                <td>${item.goodsUnit}</td>
                <td>${item.goodsCount}</td>
                <td>${item.applyStatueCn}</td>
                <td><fmt:formatDate value="${item.applyTime}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
			</tr>
			</c:forEach>
		</tbody>
	</table>
	<!-- 分页 -->
	<keta:pagination page="${page }"/>
</div>