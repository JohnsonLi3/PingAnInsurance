package com.prj.biz;

import java.util.List;

import com.prj.pojo.emplist;

public interface emplistBiz {
//��Ա����Ϣ��emplist���ܹ�����Ա��������в�ѯ
		public List<emplist> findByEmpid(String empid);
}
