package com.prj.biz;

import java.util.List;

import com.prj.pojo.emailtypelist;

public interface emailtypelistBiz {
	//�ʼ�ģ���б�emailtypelist�����ӱ��и��ݡ�ģ�����ơ�,������ʱ�䡱���в�ѯ��
	public List<emailtypelist> findAll(String emailtypename, String createtime);
	//�ܹ�ɾ���ʼ�ģ���б�emailtypelist�����ӱ�����Ϣ
	public void delByEmailId(int emailid);
}
