package com.prj.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.prj.pojo.emailtypelist;

public interface emailtypelistDao {
	public List<emailtypelist> findAll(@Param(value="emailtypename")String emailtypename,@Param(value="createtime")String createtime);
	public void delByEmailId(int emailid);
}
