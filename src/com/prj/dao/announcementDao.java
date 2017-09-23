package com.prj.dao;

import java.util.List;

import com.prj.pojo.announcement;

public interface announcementDao {
	public void insert(announcement anno);
	public announcement findByIt(String infortitle);
	public announcement findByItup(String infortitle);
	public void update(announcement anno);
	public List<announcement> findAll();
}
