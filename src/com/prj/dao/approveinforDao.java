package com.prj.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.prj.pojo.approveinfor;

public interface approveinforDao {
	/*
	 * ���������б�ѡ�����������Ⲣ������������Ϣ��approveinfor��
	 * a.�Ӱ������b.��ʱ����������ֶβ�ѯ����������ʾ��������ɾ������
	 */
	public List<approveinfor> findByAiTitle(@Param(value="apprtitle")String apprtitle);
	public List<approveinfor> findAll();
	public void insert(approveinfor ai);
	public void delByAiTitle(@Param(value="apprtitle")String apprtitle);
}
