package com.prj.biz;

import java.util.List;

import com.prj.pojo.announcement;

public interface announcementBiz {
	//公告栏表（announcement）（主表）进行新增
	public void insert(announcement anno);
	//能够显示公告栏列表（announcementlist）（从表）的详细信息；
	public announcement findByIt(String infortitle);
	//能够对关联的公告栏表（announcement）（主表）进行显示和修改
	public announcement findByItup(String infortitle);
	public void update(announcement anno);
	public List<announcement> findAll();
}
