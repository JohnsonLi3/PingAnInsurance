package com.prj.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.prj.biz.announcementlistBiz;
import com.prj.pojo.announcementlist;

@Controller
public class announcementlistController {

	@Resource
	private announcementlistBiz biz;
	public void setBiz(announcementlistBiz biz) {
		this.biz = biz;
	}
	
	@RequestMapping(value="findAllannolist")
	public String findAll(String infortitle,String annostatus,HttpServletRequest request){
		List<announcementlist> alst = biz.findAll(infortitle, annostatus);
		request.getSession().setAttribute("alst", alst);
		return"searchNoticeColumn";
	}
	
	@RequestMapping(value="delfromannolist")
	public String  delByAnnolistId(int annolistid){
		biz.delByAnnolistId(annolistid);
		return"redirect:findAllannolist";
	}
}
