package com.prj.controller;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.prj.biz.announcementBiz;
import com.prj.pojo.announcement;

@Controller
public class announcementController {

	@Resource
	private announcementBiz biz;
	public void setBiz(announcementBiz biz) {
		this.biz = biz;
	}
	
	@RequestMapping(value="insertanno")
	public String insert(announcement anno){
		biz.insert(anno);
		return"redirect:findAllanno";
	}
	
	@RequestMapping(value="findAllanno")
	public String findAll(HttpServletRequest request){
		List<announcement> atlst = biz.findAll();
		request.getSession().setAttribute("atlst", atlst);
		return"announcement";
	}
	@RequestMapping(value="findByInfortitle")
	public String  findByIt(String infortitle,HttpServletRequest request) throws UnsupportedEncodingException{
		//超链接是以get的方式发送的，所以需要转码
		infortitle= new String(infortitle.getBytes("iso8859-1"),"utf-8"); 
		announcement anno = biz.findByIt(infortitle);
		request.getSession().setAttribute("anno", anno);
		return"detailNoticeColumn";
	}
	
	@RequestMapping(value="findByInfortitleup")
	public String  findByItup(String infortitle,HttpServletRequest request) throws UnsupportedEncodingException{
		infortitle= new String(infortitle .getBytes("iso8859-1"),"utf-8"); 
		announcement annoup = biz.findByIt(infortitle);
		request.getSession().setAttribute("annoup", annoup);
		return"editNoticeColumn";
	}
	
	@RequestMapping(value="updateanno")
	public String update(announcement anno){
		biz.update(anno);
		return"redirect:findAllanno";
	}
}
