package com.prj.dao;

import java.util.List;

import com.prj.pojo.emailtype;

public interface emailtypeDao {
	public void insert(emailtype et);
	public emailtype findByEmailTypeName(String emailtypename);
	public emailtype findByEmailTypeNameup(String emailtypename);
	public void update(emailtype et);
	public List<emailtype> findAll();
}
