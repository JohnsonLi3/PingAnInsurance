package com.prj.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;



import com.prj.pojo.emplist;

public interface emplistDao {
	//在员工信息表（emplist）能够根据员工编码进行查询
	public List<emplist> findByEmpid(@Param(value="empid")String empid);
}
