package com.prj.pojo;

import java.io.Serializable;

public class detailinfor implements Serializable{
	private int sbid;
	private String number;
	private String detailname;
	private String actualvalue;
	private String sequenceno;
	private String description;
	
	public int getSbid() {
		return sbid;
	}
	public void setSbid(int sbid) {
		this.sbid = sbid;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public String getDetailname() {
		return detailname;
	}
	public void setDetailname(String detailname) {
		this.detailname = detailname;
	}
	public String getActualvalue() {
		return actualvalue;
	}
	public void setActualvalue(String actualvalue) {
		this.actualvalue = actualvalue;
	}
	public String getSequenceno() {
		return sequenceno;
	}
	public void setSequenceno(String sequenceno) {
		this.sequenceno = sequenceno;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
	public detailinfor(int sbid, String number, String detailname,
			String actualvalue, String sequenceno, String description) {
		super();
		this.sbid = sbid;
		this.number = number;
		this.detailname = detailname;
		this.actualvalue = actualvalue;
		this.sequenceno = sequenceno;
		this.description = description;
	}
	
	public detailinfor() {
		super();
	}
}
