<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%@ include file="/WEB-INF/views/include.inc.jsp" %>
<script type="text/javascript">
    <!--
    // top
    jQuery(document).ready(function () {

        $("#newTeachClass").click(function (event) {
            var $fieldset = $("#newTeachClassInput");

            var $name = $("input[name=_name]", $fieldset);
            var $shortName = $("input[name=_shortName]", $fieldset);
            var $description = $("input[name=_description]", $fieldset);

            // 验证
            if (!$name.valid() && !$shortName.valid()) {
                return false;
            }

            if (!$description.valid()) {
                return false;
            }

            var $toNewTeachClass = $("div.toNewTeachClass");
            // 判断是否有定义权限
            var maxId = 0;
            if ($("input:last", $toNewTeachClass).length > 0) {
                maxId = parseInt($("input:last", $toNewTeachClass).attr("rel")) + 1;
            }

            $toNewTeachClass.append($name.val() + '(' + $shortName.val() + ')' + '<input type="checkbox" name="permissions[' + maxId + '].shortName" value="' + $shortName.val() + '" checked="checked" rel="' + maxId + '"/>&nbsp;&nbsp;');
            $toNewTeachClass.append('<input type="hidden" name="permissions[' + maxId + '].name" value="' + $name.val() + '" rel="' + maxId + '"/>');
            $toNewTeachClass.append('<input type="hidden" name="permissions[' + maxId + '].description" value="' + $description.val() + '" rel="' + maxId + '"/>');

            $name.val("");
            $shortName.val("");
            $description.val("");

            event.preventDefault();
            event.stopPropagation();
        });

        $("#permissionForm").submit(function (event) {
            event.preventDefault();
            event.stopPropagation();

            var $newPermissonInput = $("#newTeachClassInput");
            $newPermissonInput.remove();
            if (!$(this).valid()) {
                $("#permissionFormContent").append($newPermissonInput);
                return false;
            }

            return validateCallback(this, dialogReloadRel2Module);
        });
    });

    function returnClose(obj) {
        $.bringBackSuggest(obj);
        $("#treeHeadTeacher_close", $(".formBar")).click();
    }

    //-->
</script>
<div class="pageContent">
    <form id="permissionForm" method="post" action="${contextPath }/management/eduoa/teacher/createTeachClass"
          class="required-validate pageForm" onsubmit="">
        <input type="hidden" name="parent.id" value="${parentModuleId }"/>

        <div id="teacherClassFormContent" class="pageFormContent" layoutH="58">
            <fieldset>
                <legend>任课班级列表</legend>
                <div id="toNewTeachClass">

                </div>
            </fieldset>
            <fieldset id="newTeachClassInput">
                <legend>任课班级新增</legend>
                <p>
                    <label>任课班级：</label>
                    <input type="hidden" name="teacherClass.classId" />
                    <input type="text" class="required" name="teacherClass.className" readonly="true" />
                    <a class="btnLook" target="dialog" width="530" height="450"
                       lookupGroup="teacherClass" mask="true"
                       href="${contextPath }/management/eduoa/teacher/tree_grade"
                       title="选择">选择</a>
                </p>

                <p>
                    <label>开始时间：</label>
                    <input type="text" name="_startTime" class="date required" size="16" maxlength="16"/>
                    <span class="info">&nbsp;&nbsp;任课开始时间</span>
                </p>

                <p>
                    <label>结束时间：</label>
                    <input type="text" name="_endTime" class="date required" size="16" maxlength="16" />
                    <span class="info">&nbsp;&nbsp;任课结束时间</span>
                </p>

                <div class="button" id="newTeachClass">
                    <div class="buttonContent">
                        <button type="submit">新增</button>
                    </div>
                </div>
            </fieldset>
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