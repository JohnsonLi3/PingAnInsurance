package com.prj.pojo;

import java.io.Serializable;

public class emplist implements Serializable {
	private int empid;
	private String ename;
	
	public int getEmpid() {
		return empid;
	}
	public void setEmpid(int empid) {
		this.empid = empid;
	}
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
	
	public emplist(int empid, String ename) {
		super();
		this.empid = empid;
		this.ename = ename;
	}
	
	public emplist() {
		super();
	}
	
	
	
	
	
	
	
}
