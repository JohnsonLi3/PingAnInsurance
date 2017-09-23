package com.prj.biz;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.prj.dao.basedataDao;
import com.prj.pojo.basedata;
@Service
public class basedataBizImp implements basedataBiz {
	

	@Resource
	private basedataDao dao;
	
	public void setDao(basedataDao dao) {
		this.dao = dao;
	}
	
	
	public List<basedata> findAll(String categoryid, String categoryname) {
		return dao.findAll(categoryid, categoryname);
	}
	



	public basedata findBySbid(int sbid) {
		return dao.findBySbid(sbid);
	}

	public void delBySbid(int sbid) {
		dao.delBySbid(sbid);
	}
}
