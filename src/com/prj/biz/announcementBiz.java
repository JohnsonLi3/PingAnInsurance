package com.prj.biz;

import java.util.List;

import com.prj.pojo.announcement;

public interface announcementBiz {
	//��������announcement����������������
	public void insert(announcement anno);
	//�ܹ���ʾ�������б�announcementlist�����ӱ�����ϸ��Ϣ��
	public announcement findByIt(String infortitle);
	//�ܹ��Թ����Ĺ�������announcement��������������ʾ���޸�
	public announcement findByItup(String infortitle);
	public void update(announcement anno);
	public List<announcement> findAll();
}
