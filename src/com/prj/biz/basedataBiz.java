package com.prj.biz;

import java.util.List;

import com.prj.pojo.basedata;

public interface basedataBiz {
	/*
	 * ��ʾ���������б�basedata�����ӱ�����ϸ��Ϣ
	*�ڻ��������б�basedata�����ӱ��и��ݡ������š������������ơ����в�ѯ��
	 * 
	 */
	public List<basedata> findAll(String categoryid,String categoryname);
	public basedata findBySbid(int sbid);
	//ɾ�����������б�basedata�����ӱ�����Ϣ,������ɾ���˴�����������Ϣ
	public void delBySbid(int sbid);
}
