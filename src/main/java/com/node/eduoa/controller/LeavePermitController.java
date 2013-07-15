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

import com.node.eduoa.entity.OaLeavePermit;
import com.node.eduoa.entity.OaTeacherInfo;
import com.node.eduoa.enums.ApplyStatusEnum;
import com.node.eduoa.enums.SemesterEnum;
import com.node.eduoa.service.GradeService;
import com.node.eduoa.service.LeavePermitService;
import com.node.eduoa.service.impl.LeavePermitServiceImpl;
import com.node.eduoa.utils.YearUtils;
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
 * 请假申请管理
 * User: linfeng at Administrator
 * Date: 13-7-7
 * Time: 上午11:47
 * To change this template use File | Settings | File Templates.
 */
@Controller
@RequestMapping("/management/eduoa/leavepermit")
public class LeavePermitController extends BaseFormController {

    @Qualifier("leavePermitServiceImpl")
    @Autowired
    private LeavePermitService leavePermitService;

	@Autowired
	private Validator validator;

	private static final String CREATE = "management/eduoa/leavepermit/create";
	private static final String UPDATE = "management/eduoa/leavepermit/update";
	private static final String LIST = "management/eduoa/leavepermit/list";
	private static final String VIEW = "management/eduoa/leavepermit/view";


    @RequiresPermissions("LeaveCreate:view")
	@RequestMapping(value="/create", method=RequestMethod.GET)
	public String preCreate(Map<String, Object> map) {
        map.put("semesterEnums", SemesterEnum.values());
        map.put("years", YearUtils.getYears(3));
        map.put("user", currentUser.getUser());
		return CREATE;
	}

	/**
	 * LogMessageObject的write用法实例。
	 */
    @Log(message="添加了{0}请假申请。", level=LogLevel.TRACE, override=true)
	@RequiresPermissions("LeaveCreate:save")
	@RequestMapping(value="/save", method=RequestMethod.POST)
	public @ResponseBody String create(OaLeavePermit leavePermit) {
		BeanValidators.validateWithException(validator, leavePermit);
        try {
            leavePermit.setCreateTime(new Date());
            leavePermitService.save(leavePermit);
        } catch (Exception e) {
            return AjaxObject.newError(e.getMessage()).setCallbackType("").toString();
        }

		// 加入一个LogMessageObject，该对象的isWritten为true，会记录日志。
        LogUitl.putArgs(LogMessageObject.newWrite().setObjects(new Object[]{leavePermit.getApplyTeacherName()}));
		return AjaxObject.newOk("请假申请添加成功！").toString();
	}

    /**
     * LogMessageObject的write用法实例。
     */
    @Log(message="添加了{0}请假申请。", level=LogLevel.TRACE, override=true)
    @RequiresPermissions("LeaveCreate:save")
    @RequestMapping(value="/submit", method=RequestMethod.POST)
    public @ResponseBody String submit(OaLeavePermit leavePermit) {
        BeanValidators.validateWithException(validator, leavePermit);
        try {
            leavePermit.setCreateTime(new Date());
            leavePermitService.save(leavePermit);
        } catch (Exception e) {
            return AjaxObject.newError(e.getMessage()).setCallbackType("").toString();
        }

        // 加入一个LogMessageObject，该对象的isWritten为true，会记录日志。
        LogUitl.putArgs(LogMessageObject.newWrite().setObjects(new Object[]{leavePermit.getApplyTeacherName()}));
        return AjaxObject.newOk("请假申请添加成功！").toString();
    }

	/**
	 * LogMessageObject的ignore用法实例，ignore不会记录日志。
	 */
	@Log(message="你永远不会看见该日志，LogMessageObject的isWritten为false。", level=LogLevel.TRACE)
	@RequiresPermissions("LeavePermit:edit")
	@RequestMapping(value="/update/{id}", method=RequestMethod.GET)
	public String preUpdate(@PathVariable Long id, Map<String, Object> map) {
		OaLeavePermit leavePermit = leavePermitService.get(id);

		map.put("leavePermit", leavePermit);
        map.put("years", YearUtils.getYears(3));
        map.put("semesterEnums", SemesterEnum.values());

		// 加入一个LogMessageObject，该对象的isWritten为false，不会记录日志。
		LogUitl.putArgs(LogMessageObject.newIgnore());
		return UPDATE;
	}

    @Log(message="修改了{0}的请假申请。", level=LogLevel.TRACE, override=true)
	@RequiresPermissions("LeavePermit:edit")
	@RequestMapping(value="/update", method=RequestMethod.POST)
	public @ResponseBody String update(OaLeavePermit leavePermit) {
		BeanValidators.validateWithException(validator, leavePermit);
		leavePermitService.update(leavePermit);

        LogUitl.putArgs(LogMessageObject.newWrite().setObjects(new Object[]{leavePermit.getApplyTeacherName()}));
		return AjaxObject.newOk("请假申请修改成功！").toString();
	}


    @Log(message="删除了{0}请假申请。", level=LogLevel.TRACE, override=true)
	@RequiresPermissions("LeavePermit:delete")
	@RequestMapping(value="/delete/{id}", method=RequestMethod.POST)
	public @ResponseBody String delete(@PathVariable Long id) {
        OaLeavePermit leavePermit = leavePermitService.get(id);
		leavePermitService.delete(id);
        LogUitl.putArgs(LogMessageObject.newWrite().setObjects(new Object[]{leavePermit.getApplyTeacherName()}));
		return AjaxObject.newOk("请假申请删除成功！").setCallbackType("").toString();
	}


	/**
	 * Log的override用法实例
	 * 假如override为true，会忽略掉level
	 *
	 * 批量删除展示
	 */
	@Log(message="删除了{0}请假申请。", level=LogLevel.TRACE, override=true)
	@RequiresPermissions("LeavePermit:delete")
	@RequestMapping(value="/delete", method=RequestMethod.POST)
	public @ResponseBody String deleteMany(Long[] ids) {
		String[] titles = new String[ids.length];
		for (int i = 0; i < ids.length; i++) {
			OaLeavePermit leavePermit = leavePermitService.get(ids[i]);
			leavePermitService.delete(leavePermit.getId());
			titles[i] = leavePermit.getApplyTeacherName();
		}

		LogUitl.putArgs(LogMessageObject.newWrite().setObjects(new Object[]{Arrays.toString(titles)}));
		return AjaxObject.newOk("请假申请删除成功！").setCallbackType("").toString();
	}

	@RequiresPermissions("LeavePermit:view")
	@RequestMapping(value="/list", method={RequestMethod.GET, RequestMethod.POST})
	public String list(Page page, String keywords, Map<String, Object> map) {

        OaLeavePermit leavePermit = new OaLeavePermit();
        page.setOrderField("applyTime");
        Map<String, Object> searchParam = new HashMap<String, Object>();
        searchParam.put(SearchFilter.Operator.EQ + "_applyTeacherId", getCurrentUser().getId());
        List<OaLeavePermit> leavePermits = null;
        if (StringUtils.isNotBlank(keywords)) {
            searchParam.put(SearchFilter.Operator.LIKE + "_reason", keywords);
            leavePermits = leavePermitService.findByLeavePermitCondition(page, leavePermit, searchParam);
        } else {
            leavePermits = leavePermitService.findByLeavePermitCondition(page, leavePermit, new HashMap<String, Object>());
        }

		map.put("page", page);
		map.put("leavePermits", leavePermits);
		map.put("keywords", keywords);

		return LIST;
	}

    @RequiresPermissions("LeavePermit:view")
    @RequestMapping(value="/listDraft", method={RequestMethod.GET, RequestMethod.POST})
    public String listDraft(Page page, String keywords, Map<String, Object> map) {

        OaLeavePermit leavePermit = new OaLeavePermit();
        page.setOrderField("applyTime");
        Map<String, Object> searchParam = new HashMap<String, Object>();
        searchParam.put(SearchFilter.Operator.EQ + "_applyTeacherId", getCurrentUser().getId());
        List<OaLeavePermit> leavePermits = null;
        if (StringUtils.isNotBlank(keywords)) {
            searchParam.put(SearchFilter.Operator.LIKE + "_reason", keywords);
            leavePermits = leavePermitService.findByLeavePermitCondition(page, leavePermit, searchParam);
        } else {
            leavePermits = leavePermitService.findByLeavePermitCondition(page, leavePermit, new HashMap<String, Object>());
        }

        map.put("page", page);
        map.put("leavePermits", leavePermits);
        map.put("keywords", keywords);

        return LIST;
    }

    @RequiresPermissions("LeavePermit:view")
    @RequestMapping(value="/listApproval", method={RequestMethod.GET, RequestMethod.POST})
    public String listApproval(Page page, String keywords, Map<String, Object> map) {

        OaLeavePermit leavePermit = new OaLeavePermit();
        page.setOrderField("applyTime");
        Map<String, Object> searchParam = new HashMap<String, Object>();
        searchParam.put(SearchFilter.Operator.EQ + "_applyTeacherId", getCurrentUser().getId());
        searchParam.put(SearchFilter.Operator.EQ + "_statue", ApplyStatusEnum.Submitted);
        List<OaLeavePermit> leavePermits = null;
        if (StringUtils.isNotBlank(keywords)) {
            searchParam.put(SearchFilter.Operator.LIKE + "_reason", keywords);
            leavePermits = leavePermitService.findByLeavePermitCondition(page, leavePermit, searchParam);
        } else {
            leavePermits = leavePermitService.findByLeavePermitCondition(page, leavePermit, new HashMap<String, Object>());
        }

        map.put("page", page);
        map.put("leavePermits", leavePermits);
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
	@RequiresPermissions("LeavePermit:look")
	@RequestMapping(value="/view/{id}", method={RequestMethod.GET})
	public String view(@PathVariable Long id, Map<String, Object> map) {
		OaLeavePermit leavePermit = leavePermitService.get(id);
		map.put("leavePermit", leavePermit);
        map.put("semesterEnums", SemesterEnum.values());
		return VIEW;
	}
}
