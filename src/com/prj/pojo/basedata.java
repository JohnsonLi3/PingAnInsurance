package com.prj.pojo;

import java.io.Serializable;

public class basedata implements Serializable {
	
	private int sbid;
	private String categoryid;
	private String categoryname;
	private String createtime;
	private String createpeop;
	private String lastuptime;
	private String lastuppeop;
	
	public int getSbid() {
		return sbid;
	}
	public void setSbid(int sbid) {
		this.sbid = sbid;
	}
	public String getCategoryid() {
		return categoryid;
	}
	public void setCategoryid(String categoryid) {
		this.categoryid = categoryid;
	}
	public String getCategoryname() {
		return categoryname;
	}
	public void setCategoryname(String categoryname) {
		this.categoryname = categoryname;
	}
	public String getCreatetime() {
		return createtime;
	}
	public void setCreatetime(String createtime) {
		this.createtime = createtime;
	}
	public String getCreatepeop() {
		return createpeop;
	}
	public void setCreatepeop(String createpeop) {
		this.createpeop = createpeop;
	}
	public String getLastuptime() {
		return lastuptime;
	}
	public void setLastuptime(String lastuptime) {
		this.lastuptime = lastuptime;
	}
	public String getLastuppeop() {
		return lastuppeop;
	}
	public void setLastuppeop(String lastuppeop) {
		this.lastuppeop = lastuppeop;
	}
	
	public basedata(int sbid, String categoryid, String categoryname,
			String createtime, String createpeop, String lastuptime,
			String lastuppeop) {
		super();
		this.sbid = sbid;
		this.categoryid = categoryid;
		this.categoryname = categoryname;
		this.createtime = createtime;
		this.createpeop = createpeop;
		this.lastuptime = lastuptime;
		this.lastuppeop = lastuppeop;
	}
	
	public basedata() {
		super();
	}
	
}
