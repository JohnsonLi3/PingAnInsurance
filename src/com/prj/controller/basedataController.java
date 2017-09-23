package com.prj.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.prj.biz.basedataBiz;
import com.prj.pojo.basedata;


@Controller
public class basedataController {

	@Resource
	private basedataBiz biz;
	public void setBiz(basedataBiz biz) {
		this.biz = biz;
	}
	
	@RequestMapping(value="/findAllbasedatalist")
	public String findAll(String categoryid,String categoryname,HttpServletRequest request){
		List<basedata> dblst = biz.findAll(categoryid, categoryname);
		request.getSession().setAttribute("dblst", dblst);
		return "searchBaseData";
	}
	
	@RequestMapping(value="/findBySbid")
	public String findBySbid(int sbid,HttpServletRequest request){
		basedata bd = biz.findBySbid(sbid);
		request.getSession().setAttribute("bd", bd);
		return "bd";
	}
	
	@RequestMapping(value="/delfromdatabase")
	public String delBySbid(int sbid){
		biz.delBySbid(sbid);
		return"redirect:findAllbasedatalist";
	}


}
