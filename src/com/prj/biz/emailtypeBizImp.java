package com.prj.biz;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.prj.dao.emailtypeDao;
import com.prj.pojo.emailtype;
@Service
public class emailtypeBizImp implements emailtypeBiz{

	@Resource
	private emailtypeDao dao;
	public void setDao(emailtypeDao dao) {
		this.dao = dao;
	}
	
	public void insert(emailtype et) {
		dao.insert(et);
	}

	public emailtype findByEmailTypeName(String emailtypename) {
		return dao.findByEmailTypeName(emailtypename);
	}

	public emailtype findByEmailTypeNameup(String emailtypename) {
		return dao.findByEmailTypeNameup(emailtypename);
	}

	public void update(emailtype et) {
		dao.update(et);
	}

	public List<emailtype> findAll() {
		return dao.findAll();
	}
	
}
