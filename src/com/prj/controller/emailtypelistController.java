package com.prj.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.prj.biz.emailtypelistBiz;
import com.prj.pojo.emailtypelist;

@Controller
public class emailtypelistController {

	@Resource
	private emailtypelistBiz biz;
	public void setBiz(emailtypelistBiz biz) {
		this.biz = biz;
	}
	
	@RequestMapping(value="/findAllemailtypelist")
	public String findAll(String emailtypename, String createtime,HttpServletRequest request){
		List<emailtypelist> etlst = biz.findAll(emailtypename, createtime);
		request.getSession().setAttribute("etlst", etlst);
		return"searchEmailModel";
	}
	
	@RequestMapping(value="/delByetlistid")
	public String delByEmailId(int emailid){
		biz.delByEmailId(emailid);
		return"redirect:findAllemailtypelist";
	}
	
	
	
}
