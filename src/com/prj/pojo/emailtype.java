package com.prj.pojo;

import java.io.Serializable;

public class emailtype implements Serializable {
	private String emailtypename;
	private String emailtypecon;
	private String emailtypedesc;
	
	public String getEmailtypename() {
		return emailtypename;
	}
	public void setEmailtypename(String emailtypename) {
		this.emailtypename = emailtypename;
	}
	public String getEmailtypecon() {
		return emailtypecon;
	}
	public void setEmailtypecon(String emailtypecon) {
		this.emailtypecon = emailtypecon;
	}
	public String getEmailtypedesc() {
		return emailtypedesc;
	}
	public void setEmailtypedesc(String emailtypedesc) {
		this.emailtypedesc = emailtypedesc;
	}
	
	public emailtype(String emailtypename, String emailtypecon,
			String emailtypedesc) {
		super();
		this.emailtypename = emailtypename;
		this.emailtypecon = emailtypecon;
		this.emailtypedesc = emailtypedesc;
	}
	
	public emailtype() {
		super();
	}
	
	
	
}
