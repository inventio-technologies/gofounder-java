package com.gofounder.model;

public class MyInvitations {
	
	private int id;    
	private String title; 
	private String names; 
	private String duplicate_title; 
	
	private String invitees_firstname; 
	private String invitees_lastname; 
	private String invitees_email; 
	
	
	public String getInvitees_firstname() {
		return invitees_firstname;
	}
	public void setInvitees_firstname(String invitees_firstname) {
		this.invitees_firstname = invitees_firstname;
	}
	public String getInvitees_lastname() {
		return invitees_lastname;
	}
	public void setInvitees_lastname(String invitees_lastname) {
		this.invitees_lastname = invitees_lastname;
	}
	public String getInvitees_email() {
		return invitees_email;
	}
	public void setInvitees_email(String invitees_email) {
		this.invitees_email = invitees_email;
	}

	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getNames() {
		return names;
	}
	public void setNames(String names) {
		this.names = names;
	}
	public String getDuplicate_title() {
		return duplicate_title;
	}
	public void setDuplicate_title(String duplicate_title) {
		this.duplicate_title = duplicate_title;
	}


}
