package com.prj.pojo;

import java.io.Serializable;

public class announcementlist implements Serializable{
	private int annolistid;
	private String infortitle;
	private String starttime;
	private String pastdue;
	private String createtime;
	private String createpeop;
	private String lastuptime;
	private String lastuppeop;
	private String annostatus;
	
	public int getAnnolistid() {
		return annolistid;
	}
	public void setAnnolistid(int annolistid) {
		this.annolistid = annolistid;
	}
	public String getInfortitle() {
		return infortitle;
	}
	public void setInfortitle(String infortitle) {
		this.infortitle = infortitle;
	}
	public String getStarttime() {
		return starttime;
	}
	public void setStarttime(String starttime) {
		this.starttime = starttime;
	}
	public String getPastdue() {
		return pastdue;
	}
	public void setPastdue(String pastdue) {
		this.pastdue = pastdue;
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
	public String getAnnostatus() {
		return annostatus;
	}
	public void setAnnostatus(String annostatus) {
		this.annostatus = annostatus;
	}
	
	public announcementlist(int annolistid, String infortitle,
			String starttime, String pastdue, String createtime,
			String createpeop, String lastuptime, String lastuppeop,
			String annostatus) {
		super();
		this.annolistid = annolistid;
		this.infortitle = infortitle;
		this.starttime = starttime;
		this.pastdue = pastdue;
		this.createtime = createtime;
		this.createpeop = createpeop;
		this.lastuptime = lastuptime;
		this.lastuppeop = lastuppeop;
		this.annostatus = annostatus;
	}
	
	public announcementlist() {
		super();
	}
	
	
	
	
}
