package com.prj.biz;

import java.util.List;

import com.prj.pojo.announcementlist;

public interface announcementlistBiz {
	/*
	 * �������б�announcementlist�����ӱ��и��ݡ���Ϣ���⡱��������״̬�����в�ѯ
	 * �ܹ���ʾ�������б�announcementlist�����ӱ�����ϸ��Ϣ
	 */
	public List<announcementlist> findAll(String infortitle,String annostatus);
	//�ܹ�ɾ���������б�announcementlist�����ӱ�����Ϣ
	public void delByAnnolistId(int annolistid);
}
