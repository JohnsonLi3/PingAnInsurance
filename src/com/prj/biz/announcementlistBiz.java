package com.prj.biz;

import java.util.List;

import com.prj.pojo.announcementlist;

public interface announcementlistBiz {
	/*
	 * 公告栏列表（announcementlist）（从表）中根据“信息标题”，“公告状态”进行查询
	 * 能够显示公告栏列表（announcementlist）（从表）的详细信息
	 */
	public List<announcementlist> findAll(String infortitle,String annostatus);
	//能够删除公告栏列表（announcementlist）（从表）的信息
	public void delByAnnolistId(int annolistid);
}
