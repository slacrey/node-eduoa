package com.node.eduoa.controller;

import com.node.eduoa.entity.*;
import com.node.eduoa.enums.AttachmentTypeEnum;
import com.node.eduoa.enums.SemesterEnum;
import com.node.eduoa.service.*;
import com.node.eduoa.utils.FilenameUtils;
import com.node.system.log.Log;
import com.node.system.log.LogLevel;
import com.node.system.log.LogMessageObject;
import com.node.system.log.impl.LogUitl;
import com.node.system.util.dwz.AjaxObject;
import com.node.system.util.dwz.Page;
import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.validation.Validator;
import java.io.File;
import java.io.IOException;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * 组织结构
 * User: linfeng at Administrator
 * Date: 13-7-7
 * Time: 上午10:17
 * To change this template use File | Settings | File Templates.
 */
@Controller
@RequestMapping("/management/eduoa/teachingplan")
public class TeachingPlanController extends BaseFormController {


    @Qualifier("organizationalStructureServiceImpl")
    @Autowired
    private OrganizationalStructureService organizationalStructureService;
    @Qualifier("teachingPlanServiceImpl")
    @Autowired
    private TeachingPlanService teachingPlanService;
    @Qualifier("gradeServiceImpl")
    @Autowired
    private GradeService gradeService;
    @Qualifier("subjectServiceImpl")
    @Autowired
    private SubjectService subjectService;

    @Qualifier("attachmentServiceImpl")
    @Autowired
    private AttachmentService attachmentService;


    @Autowired
    private Validator validator;

    private static final String CREATE = "management/eduoa/teachingplan/create";
    private static final String VIEW = "management/eduoa/teachingplan/view";
    private static final String LIST = "management/eduoa/teachingplan/list";


    @RequiresPermissions("TeachingPlanView:view")
    @RequestMapping(value="/view", method={RequestMethod.GET})
    public String view(Map<String, Object> map) {
        OaOrganizationalStructure structure = organizationalStructureService.findNewStructure();
        if (structure != null) {
            map.put("structure", structure);
            SysAttachment attachment = attachmentService.get(structure.getAttachmentId());
            map.put("attachment", attachment);
        }

        return VIEW;
    }

    @RequiresPermissions("TeachingPlan:save")
    @RequestMapping(value = "/create", method = RequestMethod.GET)
    public String preCreate(Map<String, Object> map) {
        Calendar calendar = Calendar.getInstance();
        map.put("grades", gradeService.findAllByYear(calendar.get(Calendar.YEAR)));
        map.put("subjects", subjectService.findAll());
        map.put("user", currentUser.getUser().getTeacherInfo());
        return CREATE;
    }

    /**
     * LogMessageObject的write用法实例。
     */
    @Log(message = "添加了{0}文件。", level = LogLevel.INFO)
    @RequiresPermissions("TeachingPlan:save")
    @RequestMapping(value = "/create", method = RequestMethod.POST)
    public @ResponseBody String create(@RequestParam("planTitle") String planTitle, @RequestParam("gradeId") Long gradeId,
                                       @RequestParam("subjectId") Long subjectId, @RequestParam("userId") Long userId,
                                       @RequestParam("userName") String userName, @RequestParam("uploadFile") MultipartFile multipartFile) {

        String path = getServletContext().getRealPath("/upload");
        String webPath = "/upload";

        if(multipartFile.isEmpty()){
            return AjaxObject.newError("文件没有选择！").toString();
        }else{
            Calendar calendar = Calendar.getInstance();
            String distDir = "/teaching_plan/" + calendar.get(Calendar.YEAR) + "-" + (calendar.get(Calendar.MONTH)+1)
                    + "/" + calendar.get(Calendar.DAY_OF_MONTH) + "/";

            File distDirFile = new File(path + distDir);
            if (!distDirFile.exists()) {
                distDirFile.mkdirs();
            }

            String fileExt = FilenameUtils.getExtension(multipartFile.getOriginalFilename());
            String fileName = distDir + calendar.getTimeInMillis() + "." + fileExt;
            File file = new File(path+fileName);

            try {
                multipartFile.transferTo(file);
            } catch (IOException e) {
                e.printStackTrace();
                return AjaxObject.newError("上传文件失败，请联系管理员！").setCallbackType("").toString();
            }

            SysAttachment sysAttachment = initAttachment(file, multipartFile.getOriginalFilename(), fileExt, webPath + fileName);
            attachmentService.save(sysAttachment);


            OaTeachingPlan teachingPlan = initTeachingPlan(planTitle, gradeId,
                    subjectId, userId, userName, sysAttachment);
            teachingPlanService.save(teachingPlan);

            LogUitl.putArgs(LogMessageObject.newWrite().setObjects(new Object[]{planTitle}));
            return AjaxObject.newOk("文件添加成功！").setCallbackType("").setForwardUrl(CREATE).toString();
        }

    }

    @RequiresPermissions("TeachingPlan:view")
    @RequestMapping(value="/list", method={RequestMethod.GET, RequestMethod.POST})
    public String list(Page page, String keywords, Map<String, Object> map) {
        List<OaTeachingPlan> teachingPlans = null;
        if (StringUtils.isNotBlank(keywords)) {
            teachingPlans = teachingPlanService.findByPlanTitleContaining(keywords, page);
        } else {
            teachingPlans = teachingPlanService.findAll(page);
        }
        SemesterEnum[] semesterEnums = SemesterEnum.values();
        map.put("semesterEnums", semesterEnums);

        map.put("page", page);
        map.put("teachingPlans", teachingPlans);
        map.put("keywords", keywords);

        return LIST;
    }


    private SysAttachment initAttachment(File file, String fileName, String fileExt, String urlPath) {
        SysAttachment attachment = new SysAttachment();
        attachment.setFileName(fileName);
        attachment.setFileExt(fileExt);
        attachment.setFileSize(file.length());
        attachment.setServiceFile(file.getPath());
        attachment.setCreateTime(new Date());
        attachment.setAttachmentType(AttachmentTypeEnum.OrgStructure.getIndex());
        attachment.setUserId(currentUser.getId());
        attachment.setUrlPath(urlPath);
        return attachment;
    }

    private OaTeachingPlan initTeachingPlan(String planTitle, Long gradeId,
                                            Long subjectId, Long userId, String userName, SysAttachment attachment) {
        Date currentDate = new Date();
        OaTeachingPlan teachingPlan = new OaTeachingPlan();
        teachingPlan.setAttachmentId(attachment.getId());
        teachingPlan.setAttachmentTitle(attachment.getFileName());
        teachingPlan.setPlanTitle(planTitle);
        teachingPlan.setCreateTime(currentDate);
        teachingPlan.setCreateTimeLong(currentDate.getTime());

        OaGrade grade = gradeService.get(gradeId);
        if (grade != null) {
            teachingPlan.setGradeId(grade.getId());
            teachingPlan.setGradeName(grade.getGradeName());
        }
        OaSubject subject = subjectService.get(subjectId);
        if (subject != null) {
            teachingPlan.setSubjectId(subjectId);
            teachingPlan.setSubjectName(subject.getSubjectName());
        }
        teachingPlan.setTeacherId(userId);
        teachingPlan.setTeacherName(userName);

        return teachingPlan;
    }


}
