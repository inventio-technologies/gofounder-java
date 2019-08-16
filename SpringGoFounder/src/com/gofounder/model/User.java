package com.gofounder.model;

import java.io.Serializable;
import java.util.Date;

public class User implements Serializable {
	
	private Integer userId;
	private String username;
	  private String password;
	  private String firstname;
	  private String lastname;
	  private String email;
	  private String address;
	  private String phone;
	  private String country;
	  private String sponsorName;
	  private String date;
	  
	  
	  public String getUsername() {
	  return username;
	  }
	  public void setUsername(String username) {
	  this.username = username;
	  }
	  public String getPassword() {
	  return password;
	  }
	  public void setPassword(String password) {
	  this.password = password;
	  }
	  public String getFirstname() {
	  return firstname;
	  }
	  public void setFirstname(String firstname) {
	  this.firstname = firstname;
	  }
	  public String getLastname() {
	  return lastname;
	  }
	  public void setLastname(String lastname) {
	  this.lastname = lastname;
	  }
	  public String getEmail() {
	  return email;
	  }
	  public void setEmail(String email) {
	  this.email = email;
	  }
	  public String getAddress() {
	  return address;
	  }
	  public void setAddress(String address) {
	  this.address = address;
	  }
	  public String getPhone() {
	  return phone;
	  }
	  public void setPhone(String phone) {
	  this.phone = phone;
	  }
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getSponsorName() {
		return sponsorName;
	}
	public void setSponsorName(String sponsorName) {
		this.sponsorName = sponsorName;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	  
}
