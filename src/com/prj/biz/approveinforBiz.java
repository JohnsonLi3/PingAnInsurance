package com.prj.biz;

import java.util.List;

import com.prj.dao.approveinforDao;
import com.prj.pojo.approveinfor;

public interface approveinforBiz {
	/*
	 * ���������б�ѡ�����������Ⲣ������������Ϣ��approveinfor��
	 * a.�Ӱ������b.��ʱ����������ֶβ�ѯ����������ʾ��������ɾ������
	 */
	public List<approveinfor> findByAiTitle(String apprtitle);
	public List<approveinfor> findAll();
	public void insert(approveinfor ai);
	public void delByAiTitle(String apprtitle);
	
}
