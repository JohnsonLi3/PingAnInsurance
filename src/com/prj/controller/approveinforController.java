package com.prj.controller;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.prj.biz.approveinforBiz;
import com.prj.pojo.approveinfor;

@Controller
public class approveinforController {

	@Resource
	private approveinforBiz biz;
	public void setBiz(approveinforBiz biz) {
		this.biz = biz;
	}
	
	@RequestMapping(value="findbyaititle")
	public String  findByAiTitle(String apprtitle,HttpServletRequest request) throws UnsupportedEncodingException{
		/*
		 * form������post�ķ�ʽ���͵ģ�������Ҫת��,ע������get��ʽ����ת��ĶԱȣ�
		 * apprtitle = new String(apprtitle.getBytes("iso8859-1"),"utf-8");
		 */
		request.setCharacterEncoding("utf-8");
		List<approveinfor> ailst = biz.findByAiTitle(apprtitle);
		request.getSession().setAttribute("ailst", ailst);
		return"approveChainlist";
	}
	
	@RequestMapping(value="findallai")
	public String findAll(HttpServletRequest request){
		List<approveinfor> ailistall = biz.findAll();
		request.getSession().setAttribute("ailistall", ailistall);
		return"searchApproveChain";
	}
	
	@RequestMapping(value="insertai")
	public String insert(approveinfor ai){
		biz.insert(ai);
		return"redirect:findallai";
	}
	
	@RequestMapping(value="delbyaititle")
	public String delByAiTitle(String apprtitle,HttpServletRequest request) throws UnsupportedEncodingException{
		request.setCharacterEncoding("utf-8");
		biz.delByAiTitle(apprtitle);
		return"redirect:findallai";
	}
}
