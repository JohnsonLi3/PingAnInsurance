package com.prj.biz;

import java.util.List;

import com.prj.pojo.detailinfor;

public interface detailinforBiz {
	//��ϸ��Ϣ��detailinfor����������������
	public void insert(detailinfor di);
	//��ϸ��Ϣ��detailinfor��������������ʾ���޸�
	public List<detailinfor> findBySbid(int sbid);
	public detailinfor findBySbidforupdate(int sbid);
	public List<detailinfor> findAll();
	public void update(detailinfor di);
	//ɾ�����������б�basedata�����ӱ�����Ϣ,������ɾ���˴�����������Ϣ
	public void delBySbid(int sbid);
	
}
