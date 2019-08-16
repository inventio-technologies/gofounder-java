package com.gofounder.model;

import java.io.Serializable;
import java.util.Date;

public class GoUserWebinar implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer id;
	private Integer uplineId;
	private Integer companyId;
	private String fName;
	private String lName;
	private String emailAddress;
	private String viewCountry;
	private String dates;
	private Boolean flag;
	private Date dateS;
	
	public GoUserWebinar() {
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getUplineId() {
		return uplineId;
	}

	public void setUplineId(Integer uplineId) {
		this.uplineId = uplineId;
	}

	public Integer getCompanyId() {
		return companyId;
	}

	public void setCompanyId(Integer companyId) {
		this.companyId = companyId;
	}

	public String getfName() {
		return fName;
	}

	public void setfName(String fName) {
		this.fName = fName;
	}

	public String getlName() {
		return lName;
	}

	public void setlName(String lName) {
		this.lName = lName;
	}

	public String getEmailAddress() {
		return emailAddress;
	}

	public void setEmailAddress(String emailAddress) {
		this.emailAddress = emailAddress;
	}

	public String getViewCountry() {
		return viewCountry;
	}

	public void setViewCountry(String viewCountry) {
		this.viewCountry = viewCountry;
	}

	public String getDates() {
		return dates;
	}

	public void setDates(String dates) {
		this.dates = dates;
	}

	public Boolean getFlag() {
		return flag;
	}

	public void setFlag(Boolean flag) {
		this.flag = flag;
	}

	public Date getDateS() {
		return dateS;
	}

	public void setDateS(Date dateS) {
		this.dateS = dateS;
	}
	
}
