<%@ page language="java" contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true"
         pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/views/include.inc.jsp" %>
<script>
    $(document).ready(function(){
        if ($.validator) {
            $.validator.addMethod("getStudent", function(value, element, params) {
                try{
                    return eval('(' + params + ')');
                }catch(e){
                    return false;
                }
            }, "不存在该学号的学生！");
        }
    });

    function doInitStudent(element) {
        var student_no = $(element).val();
        $.ajax({
            url:'${contextPath }/management/eduoa/score/student/'+student_no,
            async : false,
            dataType : 'json',
            error : DWZ.ajaxError,
            type: 'POST',
            cache: false,
            success: function(json){
                DWZ.ajaxDone(json);

            }
        });
        var purchaseConduct_goodsUnitPrice = $("#purchaseConduct_goodsUnitPrice").val();
        var purchaseConduct_goodsCount = $("#purchaseConduct_goodsCount").val();
        var priceSum = parseFloat(purchaseConduct_goodsUnitPrice) * parseFloat(purchaseConduct_goodsCount);
        $("#purchaseConduct_priceSum").val(priceSum);
        return true;
    }

</script>
<div class="pageContent">
    <form method="post" action="${contextPath }/management/eduoa/score/create" class="required-validate pageForm"
          onsubmit="return validateCallback(this, dialogReloadNavTab);">
        <div class="pageFormContent" layoutH="58">
            <p>
                <label>时间：</label>
                <input type="text" name="score.examDate" class="required date" size="30"/><a class="inputDateButton"
                                                                                        href="javascript:;">选择</a>
            </p>

            <p>
                <label>学号：</label>
                <input type="text" name="score.studentNumber" getStudent="doInitStudent(this)"  size="30"/>
            </p>

            <p>
                <label>考号：</label>
                <input type="text" name="score.examNo" size="30"/>
            </p>

            <p>
                <label>学生姓名：</label>
                <input type="hidden" name="classModel.classId" />
                <input type="text" class="required" name="classModel.className" readonly="true" />
                <a class="btnLook" target="dialog" width="500" height="400"
                   lookupGroup="classModel" mask="true"
                   href="${contextPath }/management/eduoa/student/tree_grade"
                   title="选择">选择</a>
            </p>

            <p>
                <label>考试批次：</label>
                <select name="score.examType" class="combox">
                    <c:forEach items="${examsEnums}" var="item" >
                        <option value="${item.index}">${item.text}</option>
                    </c:forEach>
                </select>
            </p>

            <p>
                <label>年级：</label>
                <select name="score.gradeId" class="combox">
                    <option value="">无归属年级</option>
                    <c:forEach items="${grades}" var="item" >
                        <option value="${item.id}">${item.gradeName}</option>
                    </c:forEach>
                </select>
            </p>

            <p>
                <label>班级：</label>
                <input type="hidden" name="classModel.classId" />
                <input type="text" class="required" name="classModel.className" readonly="true" />
                <a class="btnLook" target="dialog" width="500" height="400"
                   lookupGroup="classModel" mask="true"
                   href="${contextPath }/management/eduoa/student/tree_grade"
                   title="选择">选择</a>
            </p>

            <p>
                <label>学科：</label>
                <select name="score.subjectId" class="combox">
                    <c:forEach var="item" items="${subjects}">
                        <option value="${item.id}">${item.subjectName}</option>
                    </c:forEach>
                </select>
            </p>

            <p>
                <label>成绩：</label>
                <input type="text" name="score.score" size="30"/>
            </p>

            <div class="divider"></div>
            <dl class="nowrap">
                <dt>备注：</dt>
                <dd><textarea cols="90" rows="5" name="score.remark"></textarea></dd>
            </dl>

        </div>

        <div class="formBar">
            <ul>
                <li>
                    <div class="button">
                        <div class="buttonContent">
                            <button type="submit">确定</button>
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