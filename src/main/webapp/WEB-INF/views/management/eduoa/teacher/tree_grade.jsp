<%@page import="com.node.system.entity.main.Organization"%>
<%@ page import="com.node.eduoa.entity.OaGrade" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ include file="/WEB-INF/views/include.inc.jsp"%>
<%!
	public String tree(OaGrade grade, String basePath) {
		if (grade.getChildren().isEmpty()) {
			return "";
		}
		StringBuffer buffer = new StringBuffer();
		buffer.append("<ul>" + "\n");
		for(OaGrade o : grade.getChildren()) {
            buffer.append("<li><a href=\"javascript:\" tname=\""+o.getGradeName()+"\" tvalue=\""+o.getId()+"\" >"
                    + o.getGradeName() + "</a>" + "\n");
			buffer.append(tree(o, basePath));
			buffer.append("</li>" + "\n");
		}
		buffer.append("</ul>" + "\n");
		return buffer.toString();
	}
%>
<%
    OaGrade gradeParent = (OaGrade)request.getAttribute("grade");
%>
<div class="pageContent">
    <div class="pageFormContent" layoutH="58">
        <ul class="tree treeCheck expand" oncheck="treeCheckBack">
            <li>
                <a href="javascript:">${grade.gradeName }</a> <%=tree(gradeParent, request.getContextPath())%>
            </li>
        </ul>
    </div>

    <div class="formBar">
        <ul>
            <li><div class="button"><div class="buttonContent"><button id="treeGrade_close" class="close" type="button">关闭</button></div></div></li>
        </ul>
        <ul>
            <li><div class="button"><div class="buttonContent"><button id="treeGrade_clean" type="button">清空</button></div></div></li>
        </ul>
        <ul>
            <li><div class="button"><div class="buttonContent"><button id="treeGrade_select" type="button">选择</button></div></div></li>
        </ul>
    </div>
    <script type="text/javascript">
        var result = '', ids='', names = '';
        $("#treeGrade_clean").on("click", function(){
            $.bringBackSuggest({classIds:'', classNames:''});
            $("#treeGrade_close").trigger("click");
        });
        $("#treeGrade_select").on("click", function(){
            if (result == '') {
                $.bringBackSuggest({classIds:'', classNames:''});
            } else {
                $.bringBackSuggest(result);
            }
            $("#treeGrade_close").trigger("click");
        });
        function treeCheckBack() {
            var json = arguments[0];
            $(json.items).each(function(i){
                ids += this.value + ',';
                names += this.name + ',';
            });
            result = {classIds:ids, classNames:names};
        }
    </script>
</div>