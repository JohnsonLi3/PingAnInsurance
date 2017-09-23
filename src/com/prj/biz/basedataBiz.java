package com.prj.biz;

import java.util.List;

import com.prj.pojo.basedata;

public interface basedataBiz {
	/*
	 * 显示基础数据列表（basedata）（从表）的详细信息
	*在基础数据列表（basedata）（从表）中根据“分类编号”，“分类名称”进行查询；
	 * 
	 */
	public List<basedata> findAll(String categoryid,String categoryname);
	public basedata findBySbid(int sbid);
	//删除基础数据列表（basedata）（从表）的信息,必须先删除此处（主表）的信息
	public void delBySbid(int sbid);
}
