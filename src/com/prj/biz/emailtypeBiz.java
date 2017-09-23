package com.prj.biz;



import java.util.List;

import com.prj.pojo.emailtype;

public interface emailtypeBiz {
	//能够对关联的邮件模板表（emailtype）（主表）新增,显示和修改
	public void insert(emailtype et);
	public emailtype findByEmailTypeName(String emailtypename);
	public emailtype findByEmailTypeNameup(String emailtypename);
	public void update(emailtype et);
	//能够对关联的邮件模板表（emailtype）（主表）详细信息列表
	public List<emailtype> findAll();
}
