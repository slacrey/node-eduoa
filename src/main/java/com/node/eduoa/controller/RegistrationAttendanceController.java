/**
 * <pre>
 * Copyright:		Copyright(C) 2012-2013, node.com
 * Filename:		com.node.sample.controller.TaskController.java
 * Class:			TaskController
 * Date:			2013-4-21
 * Author:			<a href="mailto:node@gmail.com">node</a>
 * Version          2.0.0
 * Description:		
 *
 * </pre>
 **/
 
package com.node.eduoa.controller;

import com.node.eduoa.entity.OaRegistrationAttendance;
import com.node.eduoa.entity.OaRegistrationAttendance;
import com.node.eduoa.entity.OaTeacherInfo;
import com.node.eduoa.service.PositionService;
import com.node.eduoa.service.RegistrationAttendanceService;
import com.node.eduoa.service.impl.RegistrationAttendanceServiceImpl;
import com.node.eduoa.utils.WeekUtils;
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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springside.modules.beanvalidator.BeanValidators;
import org.springside.modules.persistence.SearchFilter;

import javax.validation.Validator;
import java.util.*;

/** 
 * 考勤管理
 * User: linfeng at Administrator
 * Date: 13-7-7
 * Time: 上午11:47
 * To change this template use File | Settings | File Templates.
 */
@Controller
@RequestMapping("/management/eduoa/attendance")
public class RegistrationAttendanceController extends BaseFormController {

    @Qualifier("registrationAttendanceServiceImpl")
    @Autowired
    private RegistrationAttendanceService registrationAttendanceService;

	
	@Autowired
	private Validator validator;
	
	private static final String CREATE = "management/eduoa/attendance/create";
	private static final String UPDATE = "management/eduoa/attendance/update";
	private static final String LIST = "management/eduoa/attendance/list";
	private static final String VIEW = "management/eduoa/attendance/view";


    @RequiresPermissions("Registration:save")
	@RequestMapping(value="/create", method=RequestMethod.GET)
	public String preCreate(Map<String, Object> map) {
		return CREATE;
	}
	
	/**
	 * LogMessageObject的write用法实例。
	 */
    @Log(message="添加了{0}的考勤。", level=LogLevel.TRACE, override=true)
	@RequiresPermissions("Registration:save")
	@RequestMapping(value="/create", method=RequestMethod.POST)
	public @ResponseBody String create(OaRegistrationAttendance registrationAttendance) {
		BeanValidators.validateWithException(validator, registrationAttendance);
        try {
            registrationAttendanceService.save(registrationAttendance);
        } catch (Exception e) {
            return AjaxObject.newError(e.getMessage()).setCallbackType("").toString();
        }
		
		// 加入一个LogMessageObject，该对象的isWritten为true，会记录日志。
        LogUitl.putArgs(LogMessageObject.newWrite().setObjects(new Object[]{registrationAttendance.getTeacherName()}));
		return AjaxObject.newOk("考勤添加成功！").toString();
	}
	
	/**
	 * LogMessageObject的ignore用法实例，ignore不会记录日志。
	 */
	@Log(message="你永远不会看见该日志，LogMessageObject的isWritten为false。", level=LogLevel.TRACE)
	@RequiresPermissions("Registration:edit")
	@RequestMapping(value="/update/{id}", method=RequestMethod.GET)
	public String preUpdate(@PathVariable Long id, Map<String, Object> map) {
		OaRegistrationAttendance registrationAttendance = registrationAttendanceService.get(id);
		
		map.put("registrationAttendance", registrationAttendance);
		
		// 加入一个LogMessageObject，该对象的isWritten为false，不会记录日志。
		LogUitl.putArgs(LogMessageObject.newIgnore());
		return UPDATE;
	}

    @Log(message="修改了{0}的考勤。", level=LogLevel.TRACE, override=true)
	@RequiresPermissions("Registration:edit")
	@RequestMapping(value="/update", method=RequestMethod.POST)
	public @ResponseBody String update(OaRegistrationAttendance registrationAttendance) {
		BeanValidators.validateWithException(validator, registrationAttendance);
		registrationAttendanceService.update(registrationAttendance);

        LogUitl.putArgs(LogMessageObject.newWrite().setObjects(new Object[]{registrationAttendance.getTeacherName()}));
		return AjaxObject.newOk("考勤修改成功！").toString();
	}


    @Log(message="删除了{0}的考勤。", level=LogLevel.TRACE, override=true)
	@RequiresPermissions("Registration:delete")
	@RequestMapping(value="/delete/{id}", method=RequestMethod.POST)
	public @ResponseBody String delete(@PathVariable Long id) {
        OaRegistrationAttendance registrationAttendance = registrationAttendanceService.get(id);
		registrationAttendanceService.delete(id);
        LogUitl.putArgs(LogMessageObject.newWrite().setObjects(new Object[]{registrationAttendance.getTeacherName()}));
		return AjaxObject.newOk("考勤删除成功！").setCallbackType("").toString();
	}
	
	
	/**
	 * Log的override用法实例
	 * 假如override为true，会忽略掉level
	 * 
	 * 批量删除展示
	 */
	@Log(message="删除了{0}的考勤。", level=LogLevel.TRACE, override=true)
	@RequiresPermissions("Registration:delete")
	@RequestMapping(value="/delete", method=RequestMethod.POST)
	public @ResponseBody String deleteMany(Long[] ids) {
		String[] titles = new String[ids.length];
		for (int i = 0; i < ids.length; i++) {
			OaRegistrationAttendance registrationAttendance = registrationAttendanceService.get(ids[i]);
			registrationAttendanceService.delete(registrationAttendance.getId());
			
			titles[i] = registrationAttendance.getTeacherName();
		}
		
		LogUitl.putArgs(LogMessageObject.newWrite().setObjects(new Object[]{Arrays.toString(titles)}));
		return AjaxObject.newOk("考勤删除成功！").setCallbackType("").toString();
	}

	@RequiresPermissions("Registration:view")
	@RequestMapping(value="/list", method={RequestMethod.GET, RequestMethod.POST})
	public String list(Page page, String keywords, Map<String, Object> map) {

        WeekUtils weekUtils = new WeekUtils();
        Date currentDate = new Date();
        Map<String, Long> dateMap = new HashMap<String, Long>(6);

        // 上午上班 07:30:00
        Long morningStartTimeLong = weekUtils.getCompileDateForSomeTime("07:30:00", currentDate);
        dateMap.put("morningStart", morningStartTimeLong);

        // 上午下班11:30:00
        Long morningEndTimeLong = weekUtils.getCompileDateForSomeTime("11:30:00", currentDate);
        dateMap.put("morningEnd", morningEndTimeLong);

        // 下午上班14:00:00
        Long afternoonStartTimeLong = weekUtils.getCompileDateForSomeTime("14:00:00", currentDate);
        dateMap.put("afternoonStart", afternoonStartTimeLong);

        // 下午上班17:30:00
        Long afternoonEndTimeLong = weekUtils.getCompileDateForSomeTime("17:30:00", currentDate);
        dateMap.put("afternoonEnd", afternoonEndTimeLong);

        // 晚上上班18:30:00
        Long nightStartTimeLong = weekUtils.getCompileDateForSomeTime("18:30:00", currentDate);
        dateMap.put("nightStart", nightStartTimeLong);

        // 晚上下班21:30:00
        Long nightEndTimeLong = weekUtils.getCompileDateForSomeTime("21:30:00", currentDate);
        dateMap.put("nightEnd", nightEndTimeLong);
        WeekUtils.MinDate minDate = weekUtils.getMinDate(dateMap);


        Map<String, Object> searchParams = new HashMap<String, Object>();
        searchParams.put(SearchFilter.Operator.GTE + "_attendanceDate", weekUtils.getCurrentMonday());
        searchParams.put(SearchFilter.Operator.LTE + "_attendanceDate", weekUtils.getSunday());
        List<OaRegistrationAttendance> registrationAttendanceList = registrationAttendanceService.findByCondition(page, searchParams);
        if (registrationAttendanceList == null || registrationAttendanceList.isEmpty()) {
            OaTeacherInfo teacherInfo = currentUser.getUser().getTeacherInfo();
            List<String> weekList = weekUtils.getCurrentDateOfWeek();
            OaRegistrationAttendance registrationAttendance = null;
            for (String week: weekList) {
                registrationAttendance = new OaRegistrationAttendance(week, teacherInfo.getId(), teacherInfo.getTeacherName(),
                        currentOrganization.getId(), currentOrganization.getName(), new Date());
                registrationAttendanceService.save(registrationAttendance);
            }
            registrationAttendanceList = registrationAttendanceService.findByCondition(page, searchParams);
        }


        for (OaRegistrationAttendance registrationAttendance: registrationAttendanceList) {
            String day = registrationAttendance.getAttendanceDate();
            if (weekUtils.getCurrentDay().equals(day)) {
                if (registrationAttendance.getMorningStartTime() == null) {
                    if ("morningStart".equals(minDate.getKey())) {
                        registrationAttendance.setMorningStartDisplay(1);
                    }
                }
                if (registrationAttendance.getMorningEndTime() == null) {
                    if ("morningEnd".equals(minDate.getKey())) {
                        registrationAttendance.setMorningEndDisplay(1);
                    }
                }

                if (registrationAttendance.getAfternoonStartTime() == null) {
                    if ("afternoonStart".equals(minDate.getKey())) {
                        registrationAttendance.setAfternoonStart(1);
                    }
                }
                if (registrationAttendance.getAfternoonEndTime() == null) {
                    if ("afternoonEnd".equals(minDate.getKey())) {
                        registrationAttendance.setAfternoonEndDisplay(1);
                    }
                }

                if (registrationAttendance.getNightStartTime() == null) {
                    if ("nightStart".equals(minDate.getKey())) {
                        registrationAttendance.setNightStartDisplay(1);
                    }
                }
                if (registrationAttendance.getNightEndTime() == null) {
                    if ("nightEnd".equals(minDate.getKey())) {
                        registrationAttendance.setNightEndDisplay(1);
                    }
                }

            }
        }

		map.put("page", page);
		map.put("registrationAttendances", registrationAttendanceList);
		map.put("keywords", keywords);

		return LIST;
	}
	
	/**
	 * 自定look权限，实例。
	 * 描述
	 * @param id
	 * @param map
	 * @return
	 */
	@RequiresPermissions("Registration:look")
	@RequestMapping(value="/view/{id}", method={RequestMethod.GET})
	public String view(@PathVariable Long id, Map<String, Object> map) {
		OaRegistrationAttendance registrationAttendance = registrationAttendanceService.get(id);
		map.put("registrationAttendance", registrationAttendance);
		return VIEW;
	}
}
