package com.prj.biz;

import java.util.List;

import com.prj.pojo.emplist;

public interface emplistBiz {
//在员工信息表（emplist）能够根据员工编码进行查询
		public List<emplist> findByEmpid(String empid);
}
