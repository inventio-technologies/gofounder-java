package com.gofounder.model;

import java.util.Date;
import java.util.List;

public class Invitee {
	
	private int inviteeId;
	private String fname;
	private String lname;
	private String email;
	private String nameEmail;
	private String mailText;
	private String mailSubject;
	private Date date;
	private List<Invitee> inviteeList;
	
	public String getMailSubject() {
		return mailSubject;
	}
	public void setMailSubject(String mailSubject) {
		this.mailSubject = mailSubject;
	}
	public String getMailText() {
		return mailText;
	}
	public void setMailText(String mailText) {
		this.mailText = mailText;
	}
	public int getInviteeId() {
		return inviteeId;
	}
	public void setInviteeId(int inviteeId) {
		this.inviteeId = inviteeId;
	}
	public String getNameEmail() {
		return nameEmail;
	}
	public void setNameEmail(String nameEmail) {
		this.nameEmail = nameEmail;
	}
	public List<Invitee> getInviteeList() {
		return inviteeList;
	}
	public void setInviteeList(List<Invitee> inviteeList) {
		this.inviteeList = inviteeList;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	
}
