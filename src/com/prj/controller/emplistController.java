package com.prj.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.prj.biz.emplistBiz;
import com.prj.pojo.emplist;

@Controller
public class emplistController {

	@Resource
	private emplistBiz biz;
	public void setBiz(emplistBiz biz) {
		this.biz = biz;
	}
	
	@RequestMapping(value="/findbyempid")
	public String findByEmpid(String empid,HttpServletRequest request)  {
		List<emplist> eplst = biz.findByEmpid(empid);
	    request.getSession().setAttribute("eplst", eplst);
		return"searchUserInfo";
	}
	
}
