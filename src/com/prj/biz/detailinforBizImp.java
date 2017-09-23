package com.prj.biz;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.prj.dao.detailinforDao;
import com.prj.pojo.detailinfor;
@Service
public class detailinforBizImp implements detailinforBiz{

@Resource
	private detailinforDao dao;

	public void setDao(detailinforDao dao) {
		this.dao = dao;
	}
	
	public void insert(detailinfor di) {
		dao.insert(di);
	}

	public List<detailinfor> findBySbid(int Sbid) {
		return dao.findBySbid(Sbid);
	}

	public void update(detailinfor di) {
		dao.update(di);
	}

	public void delBySbid(int sbid) {
		dao.delBySbid(sbid);
	}

	public List<detailinfor> findAll() {
		return dao.findAll();
	}

	public detailinfor findBySbidforupdate(int sbid) {
		return dao.findBySbidforupdate(sbid);
	}
		

	

	
	
	
	
}
