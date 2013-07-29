<%@ tag language="java" pageEncoding="UTF-8" trimDirectiveWhitespaces="true" body-content="empty" %>
<%@ attribute name="child" type="com.node.system.entity.main.Module" required="true"%>
<%@ attribute name="urlPrefix" type="java.lang.String"%>
<%@ attribute name="target" type="java.lang.String"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="keta" tagdir="/WEB-INF/tags" %>

<c:if test="${urlPrefix == null}" >
	<c:set var="urlPrefix" value="${request.contextPath}"/>
</c:if>
<c:if test="${target == null}" >
	<c:set var="target" value="navTab"/>
</c:if>

<c:if test="${not empty child.children }">
   	<ul>
   		<c:forEach var="c" items="${child.children }">
			<li>
                <c:if test="${not empty c.children}" var="child">
                    <a href="#" class="disabled-alink" rel="${c.sn}_${c.id}">${c.name}</a>
                    <keta:menuAccordion child="${c }" urlPrefix="${urlPrefix }" target="${target}"/>
                </c:if>
                <c:if test="${!child}">
                    <a href="${urlPrefix}${c.url}" target="${target}" rel="${c.sn}_${c.id}">${c.name}</a>
                </c:if>
           </li>   		
   		</c:forEach>
	</ul>
</c:if>