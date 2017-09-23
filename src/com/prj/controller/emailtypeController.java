package com.prj.controller;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.prj.biz.emailtypeBiz;
import com.prj.pojo.emailtype;

@Controller
public class emailtypeController {

	@Resource
	private emailtypeBiz biz;

	@RequestMapping(value="/insertemailtype")
	public String insert(emailtype et){
		biz.insert(et);
		return"redirect:findAllemailtype";
	}
	
	@RequestMapping(value="/findbyetn")
	public String findByEmailTypeName(String emailtypename,HttpServletRequest request) throws UnsupportedEncodingException{
		//超链接是以get的方式发送的，所以需要转码
		emailtypename = new String(emailtypename .getBytes("iso8859-1"),"utf-8");
		emailtype et = biz.findByEmailTypeName(emailtypename);
		request.getSession().setAttribute("et", et);
		return"detailEmailModel";
	}
	
	@RequestMapping(value="/findbyetnup")
	public String findByEmailTypeNameup(String emailtypename,HttpServletRequest request) throws UnsupportedEncodingException{
		//超链接是以get的方式发送的，所以需要转码
		emailtypename = new String(emailtypename .getBytes("iso8859-1"),"utf-8");
		emailtype etup = biz.findByEmailTypeName(emailtypename);
		request.getSession().setAttribute("etup", etup);
		return"editEmailModel";
	}
	
	@RequestMapping(value="/updateemailtype")
	public String update(emailtype et){
		biz.update(et);
		return"redirect:findAllemailtype";
	}
	
	@RequestMapping(value="/findAllemailtype")
	public String findAll(HttpServletRequest request){
		List<emailtype> etall = biz.findAll();
		request.getSession().setAttribute("etall", etall);
		return"emailType";
	}
	
}
