package com.prj.pojo;

import java.io.Serializable;

public class emailtypelist implements Serializable {
	private int emailid;
	private String emailtypeno;
	private String emailtypename;
	private String createtime;
	private String createpeop;
	private String lastuptime;
	
	public int getEmailid() {
		return emailid;
	}
	public void setEmailid(int emailid) {
		this.emailid = emailid;
	}
	public String getEmailtypeno() {
		return emailtypeno;
	}
	public void setEmailtypeno(String emailtypeno) {
		this.emailtypeno = emailtypeno;
	}
	public String getEmailtypename() {
		return emailtypename;
	}
	public void setEmailtypename(String emailtypename) {
		this.emailtypename = emailtypename;
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
	
	public emailtypelist(int emailid, String emailtypeno, String emailtypename,
			String createtime, String createpeop, String lastuptime) {
		super();
		this.emailid = emailid;
		this.emailtypeno = emailtypeno;
		this.emailtypename = emailtypename;
		this.createtime = createtime;
		this.createpeop = createpeop;
		this.lastuptime = lastuptime;
	}
	
	public emailtypelist() {
		super();
	}
	
	
	
}
