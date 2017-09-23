package com.prj.biz;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.prj.dao.emailtypelistDao;
import com.prj.pojo.emailtypelist;
@Service
public class emailtypelistBizImp implements emailtypelistBiz {

	@Resource
	private emailtypelistDao dao;
	public void setDao(emailtypelistDao dao) {
		this.dao = dao;
	}
	
	
	public List<emailtypelist> findAll(String emailtypename, String createtime) {
		return dao.findAll(emailtypename, createtime);
	}

	public void delByEmailId(int emailid) {
		dao.delByEmailId(emailid);
	}
	
}
