package com.prj.biz;

import java.util.List;

import com.prj.pojo.emailtypelist;

public interface emailtypelistBiz {
	//邮件模板列表（emailtypelist）（从表）中根据“模板名称”,“创建时间”进行查询；
	public List<emailtypelist> findAll(String emailtypename, String createtime);
	//能够删除邮件模板列表（emailtypelist）（从表）的信息
	public void delByEmailId(int emailid);
}
