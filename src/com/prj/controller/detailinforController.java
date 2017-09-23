package com.prj.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.prj.biz.basedataBiz;
import com.prj.biz.detailinforBiz;
import com.prj.pojo.basedata;
import com.prj.pojo.detailinfor;

@Controller
public class detailinforController {
	@Resource
	private detailinforBiz biz;
	public void setBiz(detailinforBiz biz) {
		this.biz = biz;
	}

	
	@Resource
	private basedataBiz bbiz;
	public void setBbiz(basedataBiz bbiz) {
		this.bbiz = bbiz;
	}
	
	@RequestMapping(value="/findAlldetailinfor")
	public String findAll(HttpServletRequest request){
		List<detailinfor> dilst = biz.findAll();
		request.getSession().setAttribute("dilst",dilst );
		return"addBaseData";
	}
	
	@RequestMapping(value="/finddetailinforBySbid")
	public String  findBySbid(int sbid,HttpServletRequest request){
		List<detailinfor> di = biz.findBySbid(sbid);
		basedata bd = bbiz.findBySbid(sbid);
		request.getSession().setAttribute("bd",bd );
		request.getSession().setAttribute("di",di );
		return"detailinfor";
	}
	
	@RequestMapping(value="/finddetailinforupdate")
	public String  findBySbidforupdate(int sbid,HttpServletRequest request){
		detailinfor diup = biz.findBySbidforupdate(sbid);
		request.getSession().setAttribute("diup",diup );
		return"editBaseData";
	}
	
	@RequestMapping(value="/updatedetailinfor")
	public String update(detailinfor di){
		biz.update(di);
		return"redirect:findAlldetailinfor";
	}
		
	@RequestMapping(value="/insertdetailinfor")
	public String insert(detailinfor di){
		biz.insert(di);
		return"redirect:findAlldetailinfor";
	}
	
	@RequestMapping(value="/delfromdetailinfor")
	public String delBySbid(int sbid){
		bbiz.delBySbid(sbid);
		biz.delBySbid(sbid);
		return"redirect:findAlldetailinfor";
	}


}





