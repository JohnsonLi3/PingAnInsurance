package com.prj.pojo;

import java.io.Serializable;

public class approveinfor implements Serializable{
	private int apprid;
	private String empid;
	private String ename;
	private String apprtype;
	private String	apprdescribe;
	private String apprtitle;
	
	public int getApprid() {
		return apprid;
	}
	public void setApprid(int apprid) {
		this.apprid = apprid;
	}
	public String getEmpid() {
		return empid;
	}
	public void setEmpid(String empid) {
		this.empid = empid;
	}
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
	public String getApprtype() {
		return apprtype;
	}
	public void setApprtype(String apprtype) {
		this.apprtype = apprtype;
	}
	public String getApprdescribe() {
		return apprdescribe;
	}
	public void setApprdescribe(String apprdescribe) {
		this.apprdescribe = apprdescribe;
	}
	public String getApprtitle() {
		return apprtitle;
	}
	public void setApprtitle(String apprtitle) {
		this.apprtitle = apprtitle;
	}
	
	public approveinfor(int apprid, String empid, String ename,
			String apprtype, String apprdescribe, String apprtitle) {
		super();
		this.apprid = apprid;
		this.empid = empid;
		this.ename = ename;
		this.apprtype = apprtype;
		this.apprdescribe = apprdescribe;
		this.apprtitle = apprtitle;
	}
	
	public approveinfor(String ename, String apprtype, String apprdescribe,
			String apprtitle) {
		super();
		this.ename = ename;
		this.apprtype = apprtype;
		this.apprdescribe = apprdescribe;
		this.apprtitle = apprtitle;
	}
	
	public approveinfor() {
		super();
	}
	
}
