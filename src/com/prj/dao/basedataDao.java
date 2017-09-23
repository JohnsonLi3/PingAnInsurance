package com.prj.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.prj.pojo.basedata;

public interface basedataDao {
	public List<basedata> findAll(@Param("categoryid")String categoryid,@Param("categoryname")String categoryname);
	public basedata findBySbid(int sbid);
	public void delBySbid(int sbid);
}
