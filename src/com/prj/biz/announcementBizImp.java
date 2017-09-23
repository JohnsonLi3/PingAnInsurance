package com.prj.biz;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.prj.dao.announcementDao;
import com.prj.pojo.announcement;
@Service
public class announcementBizImp implements announcementBiz {

	

	@Resource
	private announcementDao dao;
	public void setDao(announcementDao dao) {
		this.dao = dao;
	}
	
	
	public void insert(announcement anno) {
		dao.insert(anno);
	}

	public announcement findByIt(String infortitle) {
		return dao.findByIt(infortitle);
	}

	public void update(announcement anno) {
		dao.update(anno);
	}
	
	public List<announcement> findAll() {
		return dao.findAll();
	}


	public announcement findByItup(String infortitle) {
		return dao.findByItup(infortitle);
	}
	
	
	
}
