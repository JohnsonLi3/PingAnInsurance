package com.prj.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;



import com.prj.pojo.emplist;

public interface emplistDao {
	//��Ա����Ϣ��emplist���ܹ�����Ա��������в�ѯ
	public List<emplist> findByEmpid(@Param(value="empid")String empid);
}
