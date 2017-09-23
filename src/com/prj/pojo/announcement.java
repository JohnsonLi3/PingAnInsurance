package com.prj.pojo;

import java.io.Serializable;

public class announcement implements Serializable {
	private String infortitle;
	private String information;
	private String inforcomment;
	private String starttime;
	private String pastdue;
	
	public String getInfortitle() {
		return infortitle;
	}
	public void setInfortitle(String infortitle) {
		this.infortitle = infortitle;
	}
	public String getInformation() {
		return information;
	}
	public void setInformation(String information) {
		this.information = information;
	}
	public String getInforcomment() {
		return inforcomment;
	}
	public void setInforcomment(String inforcomment) {
		this.inforcomment = inforcomment;
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
	
	public announcement(String infortitle, String information,
			String inforcomment, String starttime, String pastdue) {
		super();
		this.infortitle = infortitle;
		this.information = information;
		this.inforcomment = inforcomment;
		this.starttime = starttime;
		this.pastdue = pastdue;
	}
	
	public announcement() {
		super();
	}
	
	
	
	
}
