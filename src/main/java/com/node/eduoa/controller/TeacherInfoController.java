/**
 * <pre>
 * Copyright:		Copyright(C) 2011-2012, node.com
 * Filename:		com.node.system.controller.OrganizationController.java
 * Class:			OrganizationController
 * Date:			2012-8-27
 * Author:			<a href="mailto:node@gmail.com">node</a>
 * Version          1.1.0
 * Description:		
 *
 * </pre>
 **/

package com.node.eduoa.controller;

import com.google.common.collect.Lists;
import com.node.eduoa.dao.TeacherInfoDao;
import com.node.eduoa.entity.*;
import com.node.eduoa.enums.*;
import com.node.eduoa.service.*;
import com.node.eduoa.service.impl.*;
import com.node.eduoa.utils.mode.TeacherClassTmp;
import com.node.system.entity.main.LogEntity;
import com.node.system.entity.main.Organization;
import com.node.system.log.Log;
import com.node.system.log.LogLevel;
import com.node.system.log.LogMessageObject;
import com.node.system.log.impl.LogUitl;
import com.node.system.service.OrganizationService;
import com.node.system.service.impl.OrganizationServiceImpl;
import com.node.system.util.dwz.AjaxObject;
import com.node.system.util.dwz.Page;
import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springside.modules.beanvalidator.BeanValidators;
import org.springside.modules.persistence.SearchFilter;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import javax.validation.Validator;
import java.util.*;

/**
 * 教师信息
 * User: linfeng at Administrator
 * Date: 13-7-7
 * Time: 上午10:17
 * To change this template use File | Settings | File Templates.
 */
@Controller
@RequestMapping("/management/eduoa/teacher")
public class TeacherInfoController extends BaseFormController {

    @Qualifier("teacherInfoServiceImpl")
    @Autowired
    private TeacherInfoService teacherInfoService;
    @Qualifier("positionServiceImpl")
    @Autowired
    private PositionService positionService;
    @Qualifier("subjectServiceImpl")
    @Autowired
    private SubjectService subjectService;
    @Qualifier("organizationServiceImpl")
    @Autowired
    private OrganizationService organizationService;
    @Qualifier("gradeServiceImpl")
    @Autowired
    private GradeService gradeService;
    @Qualifier("certificateTypeServiceImpl")
    @Autowired
    private CertificateTypeService certificateTypeService;
    @Qualifier("classTeacherServiceImpl")
    @Autowired
    private ClassTeacherService classTeacherService;
    @Qualifier("classServiceImpl")
    @Autowired
    private ClassService classService;

    @Autowired
    private Validator validator;

    private static final String CREATE = "management/eduoa/teacher/create";
    private static final String UPDATE = "management/eduoa/teacher/update";
    private static final String LIST = "management/eduoa/teacher/list";
    private static final String VIEW = "management/eduoa/teacher/view";
    private static final String TREE = "management/eduoa/teacher/treeLookup";
    private static final String TREE_GRADE = "management/eduoa/teacher/tree_grade";
    private static final String TREE_HEAD_TEACHER = "management/eduoa/teacher/tree_head_teacher";
    private static final String TEACH_CLASS = "management/eduoa/teacher/teach_class";

    @RequiresPermissions("TeacherInfo:view")
    @RequestMapping(value = "/tree", method = {RequestMethod.GET, RequestMethod.POST})
    public String tree(Map<String, Object> map) {
        Organization organization = organizationService.getTree();

        map.put("organization", organization);
        return TREE;
    }

    @RequiresPermissions("TeacherInfo:view")
    @RequestMapping(value = "/tree_head_teacher", method = {RequestMethod.GET, RequestMethod.POST})
    public String treeHeadTeacher(Map<String, Object> map) {
        Calendar calendar = Calendar.getInstance();
        List<OaGrade> grades = gradeService.findAllByYear(calendar.get(Calendar.YEAR));
        OaGrade grade = new OaGrade();
        grade.setGradeName("根年级");
        grade.setId(-1L);
        grade.setChildren(grades);
        map.put("grade", grade);
        return TREE_HEAD_TEACHER;
    }

    @RequiresPermissions("TeacherInfo:view")
    @RequestMapping(value="/tree_grade", method={RequestMethod.GET, RequestMethod.POST})
    public String treeGrade(Map<String, Object> map) {
        Calendar calendar = Calendar.getInstance();
        List<OaGrade> grades = gradeService.findAllByYear(calendar.get(Calendar.YEAR));
        OaGrade grade = new OaGrade();
        grade.setGradeName("根年级");
        grade.setId(-1L);
        grade.setChildren(grades);
        map.put("grade", grade);
        return TREE_GRADE;
    }

    @RequiresPermissions("TeacherInfo:save")
    @RequestMapping(value = "/create", method = RequestMethod.GET)
    public String preCreate(Map<String, Object> map) {
        map.put("genderEnum", GenderEnum.values());
        map.put("politicalLandscapeEnum", PoliticalLandscapeEnum.values());
        Calendar calendar = Calendar.getInstance();
        map.put("grades", gradeService.findAllByYear(calendar.get(Calendar.YEAR)));
        map.put("positions", positionService.findAll());
        map.put("subjects", subjectService.findAll());
        map.put("educations", EducationEnum.values());
        map.put("certificateTypes", certificateTypeService.findAll());
        map.put("establishments", EstablishmentEnum.values());
        map.put("isTeachers", TeacherEnum.values());
        map.put("headTeacher", HeadTeacherEnum.values());

        return CREATE;
    }

    /**
     * LogMessageObject的write用法实例。
     */
    @Log(message = "添加了{0}教师信息。", level = LogLevel.TRACE, override = true)
    @RequiresPermissions("TeacherInfo:save")
    @RequestMapping(value = "/create", method = RequestMethod.POST)
    public
    @ResponseBody
    String create(OaTeacherInfo teacherInfo) {
        if (teacherInfo.getOaPositionByPositionId() != null
                && teacherInfo.getOaPositionByPositionId().getId() != null) {
            OaPosition position = positionService.get(teacherInfo.getOaPositionByPositionId().getId());
            teacherInfo.setOaPositionByPositionId(position);
        } else {
            teacherInfo.setOaPositionByPositionId(null);
        }
        if (teacherInfo.getSecurityOrganizationByOrgId() != null
                && teacherInfo.getSecurityOrganizationByOrgId().getId() != null) {
            Organization organization = organizationService.get(teacherInfo.getSecurityOrganizationByOrgId().getId());
            teacherInfo.setSecurityOrganizationByOrgId(organization);
        } else {
            teacherInfo.setSecurityOrganizationByOrgId(null);
        }


        BeanValidators.validateWithException(validator, teacherInfo);
//        List<OaClassTeacher> classTeachers = new ArrayList<OaClassTeacher>();
//        if (headClass != null) {
//            OaClassTeacher classTeacher = new OaClassTeacher(1);
//            if (!"".equals(headClass.getClassIds())) {
//                OaClass oaClass = classService.get(Long.valueOf(headClass.getClassIds()));
//                classTeacher.setOaClassByClassId(oaClass);
//                classTeachers.add(classTeacher);
//            }
//        }
//        if (teacherClass != null) {
//            String classIds = teacherClass.getClassIds();
//            String[] classIdArray = classIds.split(",");
//            List<Long> classLongIds = new ArrayList<Long>();
//            for (String classId: classIdArray) {
//                classLongIds.add(Long.valueOf(classId));
//            }
//            if (!classLongIds.isEmpty()) {
//                List<OaClass> classList = classService.findByClassIds(classLongIds);
//                if (classList != null && !classList.isEmpty()) {
//                    for (OaClass oaClass: classList) {
//                        OaClassTeacher classTeacher = new OaClassTeacher(0);
//                        classTeacher.setOaClassByClassId(oaClass);
//                        classTeachers.add(classTeacher);
//                    }
//                }
//            }
//        }
        try {
            teacherInfoService.save(teacherInfo);
//            if (!classTeachers.isEmpty()) {
//                for (OaClassTeacher classTeacher: classTeachers) {
//                    classTeacher.setOaTeacherInfoByTeacherId(teacherInfo);
//                    classTeacherService.save(classTeacher);
//                }
//            }

        } catch (Exception e) {
            return AjaxObject.newError(e.getMessage()).setCallbackType("").toString();
        }

        // 加入一个LogMessageObject，该对象的isWritten为true，会记录日志。
        LogUitl.putArgs(LogMessageObject.newWrite().setObjects(new Object[]{teacherInfo.getTeacherName()}));
        return AjaxObject.newOk("教师信息添加成功！").toString();
    }

    /**
     * LogMessageObject的ignore用法实例，ignore不会记录日志。
     */
    @Log(message = "你永远不会看见该日志，LogMessageObject的isWritten为false。", level = LogLevel.TRACE)
    @RequiresPermissions("TeacherInfo:edit")
    @RequestMapping(value = "/update/{id}", method = RequestMethod.GET)
    public String preUpdate(@PathVariable Long id, Map<String, Object> map) {
        OaTeacherInfo teacherInfo = teacherInfoService.get(id);

        map.put("teacherInfo", teacherInfo);
        map.put("genderEnum", GenderEnum.values());
        map.put("politicalLandscapeEnum", PoliticalLandscapeEnum.values());
        Calendar calendar = Calendar.getInstance();
        map.put("grades", gradeService.findAllByYear(calendar.get(Calendar.YEAR)));
        map.put("positions", positionService.findAll());
        map.put("subjects", subjectService.findAll());
        map.put("educations", EducationEnum.values());
        map.put("certificateTypes", certificateTypeService.findAll());
        map.put("establishments", EstablishmentEnum.values());
        map.put("isTeachers", TeacherEnum.values());
        map.put("headTeacher", HeadTeacherEnum.values());

        // 加入一个LogMessageObject，该对象的isWritten为false，不会记录日志。
        LogUitl.putArgs(LogMessageObject.newIgnore());
        return UPDATE;
    }

    @Log(message = "修改了{0}教师信息。", level = LogLevel.TRACE, override = true)
    @RequiresPermissions("TeacherInfo:edit")
    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public
    @ResponseBody
    String update(OaTeacherInfo teacherInfo) {

        if (teacherInfo.getOaPositionByPositionId() != null
                && teacherInfo.getOaPositionByPositionId().getId() != null) {
            OaPosition position = positionService.get(teacherInfo.getOaPositionByPositionId().getId());
            teacherInfo.setOaPositionByPositionId(position);
        } else {
            teacherInfo.setOaPositionByPositionId(null);
        }
        if (teacherInfo.getSecurityOrganizationByOrgId() != null
                && teacherInfo.getSecurityOrganizationByOrgId().getId() != null) {
            Organization organization = organizationService.get(teacherInfo.getSecurityOrganizationByOrgId().getId());
            teacherInfo.setSecurityOrganizationByOrgId(organization);
        } else {
            teacherInfo.setSecurityOrganizationByOrgId(null);
        }

        BeanValidators.validateWithException(validator, teacherInfo);
        teacherInfoService.update(teacherInfo);

        LogUitl.putArgs(LogMessageObject.newWrite().setObjects(new Object[]{teacherInfo.getTeacherName()}));
        return AjaxObject.newOk("教师信息修改成功！").toString();
    }


    @Log(message = "删除了{0}教师信息。", level = LogLevel.TRACE, override = true)
    @RequiresPermissions("TeacherInfo:delete")
    @RequestMapping(value = "/delete/{id}", method = RequestMethod.POST)
    public
    @ResponseBody
    String delete(@PathVariable Long id) {
        OaTeacherInfo teacherInfo = teacherInfoService.get(id);
        teacherInfoService.delete(id);
        LogUitl.putArgs(LogMessageObject.newWrite().setObjects(new Object[]{teacherInfo.getTeacherName()}));
        return AjaxObject.newOk("教师信息删除成功！").setCallbackType("").toString();
    }


    /**
     * Log的override用法实例
     * 假如override为true，会忽略掉level
     * <p/>
     * 批量删除展示
     */
    @Log(message = "删除了{0}教师信息。", level = LogLevel.TRACE, override = true)
    @RequiresPermissions("TeacherInfo:delete")
    @RequestMapping(value = "/delete", method = RequestMethod.POST)
    public
    @ResponseBody
    String deleteMany(Long[] ids) {
        String[] titles = new String[ids.length];
        for (int i = 0; i < ids.length; i++) {
            OaTeacherInfo teacherInfo = teacherInfoService.get(ids[i]);
            teacherInfoService.delete(teacherInfo.getId());

            titles[i] = teacherInfo.getTeacherName();
        }

        LogUitl.putArgs(LogMessageObject.newWrite().setObjects(new Object[]{Arrays.toString(titles)}));
        return AjaxObject.newOk("教师信息删除成功！").setCallbackType("").toString();
    }

    @RequiresPermissions("TeacherInfo:view")
    @RequestMapping(value = "/list", method = {RequestMethod.GET, RequestMethod.POST})
    public String list(Page page, OaTeacherInfo teacherInfo, Date startDate, Date endDate, Map<String, Object> map) {

        page.setOrderField("createTime");
        Map<String, Object> searchMap = new HashMap<String, Object>();
        List<OaTeacherInfo> teacherInfos = teacherInfoService.findByCondition(page, teacherInfo, searchMap);

        map.put("positions", positionService.findAll());
        map.put("subjects", subjectService.findAll());
        map.put("educations", EducationEnum.values());

        map.put("teacherInfo", teacherInfo);
        map.put("startDate", startDate);
        map.put("endDate", endDate);
        map.put("page", page);
        map.put("teacherInfos", teacherInfos);
        map.put("logLevels", LogLevel.values());

        return LIST;
    }

    /**
     * @param id
     * @param map
     * @return
     */
    @RequiresPermissions("TeacherInfo:view")
    @RequestMapping(value = "/view/{id}", method = {RequestMethod.GET})
    public String view(@PathVariable Long id, Map<String, Object> map) {
        OaTeacherInfo teacherInfo = teacherInfoService.get(id);
        map.put("teacherInfo", teacherInfo);
        map.put("genderEnum", GenderEnum.values());
        map.put("politicalLandscapeEnum", PoliticalLandscapeEnum.values());
        Calendar calendar = Calendar.getInstance();
        map.put("grades", gradeService.findAllByYear(calendar.get(Calendar.YEAR)));
        map.put("positions", positionService.findAll());
        map.put("subjects", subjectService.findAll());
        map.put("educations", EducationEnum.values());
        map.put("certificateTypes", certificateTypeService.findAll());
        map.put("establishments", EstablishmentEnum.values());
        map.put("isTeachers", TeacherEnum.values());
        map.put("headTeacher", HeadTeacherEnum.values());
        return VIEW;
    }

    @RequiresPermissions("TeacherInfo:teachClass")
    @RequestMapping(value = "/teachClass/{id}", method = {RequestMethod.GET})
    public String teachClass(@PathVariable Long id, Map<String, Object> map) {
        OaTeacherInfo teacherInfo = teacherInfoService.get(id);
        map.put("teacherInfo", teacherInfo);
        return TEACH_CLASS;
    }

    @Log(message = "给{0}添加了任课班级【{1}】。", level = LogLevel.INFO)
    @RequiresPermissions("TeacherInfo:teachClass")
    @RequestMapping(value = "/createTeachClass", method = RequestMethod.POST)
    public
    @ResponseBody
    String saveTeachClass(OaClassTeacher[] classTeacher){


        return AjaxObject.newOk("教师信息添加成功！").toString();
    }

    private class TeacherInfoSpecification implements Specification<OaTeacherInfo> {

        private OaTeacherInfo teacherInfo;
        private Date startDate;
        private Date endDate;

        public TeacherInfoSpecification(OaTeacherInfo teacherInfo) {
            this.teacherInfo = teacherInfo;
        }

        public TeacherInfoSpecification(OaTeacherInfo teacherInfo, Date startDate, Date endDate) {
            this(teacherInfo);
            this.startDate = startDate;
            this.endDate = endDate;
        }

        /**
         * @param root
         * @param query
         * @param criteriabuilder
         * @return
         * @see org.springframework.data.jpa.domain.Specification#toPredicate(javax.persistence.criteria.Root, javax.persistence.criteria.CriteriaQuery, javax.persistence.criteria.CriteriaBuilder)
         */
        @Override
        public Predicate toPredicate(Root<OaTeacherInfo> root,
                                     CriteriaQuery<?> query, CriteriaBuilder criteriabuilder) {
            List<Predicate> predicateList = Lists.newArrayList();

//            if (teacherInfo.getOaPositionByPositionId() != null) {
//                Predicate logLevelPredicate = criteriabuilder.equal(root.get("logLevel"), OaTeacherInfo.getLogLevel());
//                predicateList.add(logLevelPredicate);
//            }
//
//            if (OaTeacherInfo.getUsername() != null && StringUtils.isNotBlank(OaTeacherInfo.getUsername())) {
//                Predicate usernamePredicate = criteriabuilder.equal(root.get("username"), logEntity.getUsername());
//                predicateList.add(usernamePredicate);
//            }
//
//            if (OaTeacherInfo.getIpAddress() != null && StringUtils.isNotBlank(OaTeacherInfo.getIpAddress())) {
//                Predicate ipAddressPredicate = criteriabuilder.equal(root.get("ipAddress"), logEntity.getIpAddress());
//                predicateList.add(ipAddressPredicate);
//            }

            if (startDate != null && endDate == null) {
                endDate = new Date();
            } else if (endDate != null && startDate == null) {
                startDate = new Date(0L);
            }

            if (startDate != null && endDate != null) {
                Calendar calendar = Calendar.getInstance();
                calendar.setTime(endDate);
                calendar.add(Calendar.DAY_OF_YEAR, 1);
                endDate = calendar.getTime();

                Predicate datePredicate = criteriabuilder.between(root.<Date>get("birthday"), startDate, endDate);
                predicateList.add(datePredicate);
            }

            Predicate[] predicates = new Predicate[predicateList.size()];
            predicateList.toArray(predicates);

            return criteriabuilder.and(predicates);
        }

    }

}
