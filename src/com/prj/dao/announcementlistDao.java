package com.prj.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.prj.pojo.announcementlist;

public interface announcementlistDao {
	public List<announcementlist> findAll(@Param(value="infortitle")String infortitle,@Param(value="annostatus")String annostatus);
	public void delByAnnolistId(int annolistid);
}
