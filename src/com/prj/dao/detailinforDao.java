package com.prj.dao;

import java.util.List;

import com.prj.pojo.detailinfor;

public interface detailinforDao {
	public void insert(detailinfor di);
	public List<detailinfor> findBySbid(int sbid);
	public detailinfor findBySbidforupdate(int sbid);
	public List<detailinfor> findAll();
	public void update(detailinfor di);
	public void delBySbid(int sbid);
	}
