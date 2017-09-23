package com.prj.biz;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.prj.dao.announcementlistDao;
import com.prj.pojo.announcementlist;
@Service
public class announcementlistBizImp implements announcementlistBiz {

	@Resource
	private announcementlistDao dao;
	public void setDao(announcementlistDao dao) {
		this.dao = dao;
	}
	
	
	public List<announcementlist> findAll(String infortitle,String annostatus) {
		return dao.findAll(infortitle, annostatus);
	}

	public void delByAnnolistId(int annolistid) {
		dao.delByAnnolistId(annolistid);
	}
	
}
