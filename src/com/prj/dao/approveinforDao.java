package com.prj.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.prj.pojo.approveinfor;

public interface approveinforDao {
	/*
	 * 根据下拉列表选择审批链标题并进行审批人信息表（approveinfor）
	 * a.加班申请和b.临时下线申请等字段查询，并进行显示，新增和删除操作
	 */
	public List<approveinfor> findByAiTitle(@Param(value="apprtitle")String apprtitle);
	public List<approveinfor> findAll();
	public void insert(approveinfor ai);
	public void delByAiTitle(@Param(value="apprtitle")String apprtitle);
}
