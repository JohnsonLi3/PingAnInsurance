package com.prj.biz;



import java.util.List;

import com.prj.pojo.emailtype;

public interface emailtypeBiz {
	//�ܹ��Թ������ʼ�ģ���emailtype������������,��ʾ���޸�
	public void insert(emailtype et);
	public emailtype findByEmailTypeName(String emailtypename);
	public emailtype findByEmailTypeNameup(String emailtypename);
	public void update(emailtype et);
	//�ܹ��Թ������ʼ�ģ���emailtype����������ϸ��Ϣ�б�
	public List<emailtype> findAll();
}
