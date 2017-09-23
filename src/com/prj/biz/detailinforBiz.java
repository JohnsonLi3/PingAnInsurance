package com.prj.biz;

import java.util.List;

import com.prj.pojo.detailinfor;

public interface detailinforBiz {
	//明细信息表（detailinfor）（主表）进行新增
	public void insert(detailinfor di);
	//明细信息表（detailinfor）（主表）进行显示和修改
	public List<detailinfor> findBySbid(int sbid);
	public detailinfor findBySbidforupdate(int sbid);
	public List<detailinfor> findAll();
	public void update(detailinfor di);
	//删除基础数据列表（basedata）（从表）的信息,必须先删除此处（主表）的信息
	public void delBySbid(int sbid);
	
}
