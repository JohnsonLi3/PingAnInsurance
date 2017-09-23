package com.prj.biz;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.prj.dao.emplistDao;
import com.prj.pojo.emplist;
@Service
public class emplistBizImp implements emplistBiz{

	

	@Resource
	private emplistDao dao;
	public void setDao(emplistDao dao) {
		this.dao = dao;
	}
	
	public List<emplist> findByEmpid(String empid) {
		return dao.findByEmpid(empid);
	}
	
}
