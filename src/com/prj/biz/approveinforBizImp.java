package com.prj.biz;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.prj.dao.approveinforDao;
import com.prj.pojo.approveinfor;
@Service
public class approveinforBizImp implements approveinforBiz {


	@Resource
	private approveinforDao dao;
	public void setDao(approveinforDao dao) {
		this.dao = dao;
	}
	
	
	public List<approveinfor> findByAiTitle(String apprtitle) {
		return dao.findByAiTitle(apprtitle);
	}
	
	

	public List<approveinfor> findAll() {
		return dao.findAll();
	}


	public void insert(approveinfor ai) {
		dao.insert(ai);
	}

	public void delByAiTitle(String apprtitle) {
		dao.delByAiTitle(apprtitle);
	}
	
}
