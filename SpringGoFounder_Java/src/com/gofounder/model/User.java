package com.gofounder.model;

public class User {
	
	  private String username;
	  private String password;
	  private String firstname;
	  private String lastname;
	  private String email;
	  private String address;
	  private String country;
	  private String phone;
	  private String profileimg;
	  private int userid;
	  
	  public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public String getProfileimg() {
		return profileimg;
		}
		public void setProfileimg(String profileimg) {
			this.profileimg = profileimg;
		}
	public String getCountry() {
		return country;
	  }
	  public void setCountry(String country) {
		this.country = country;
	  }
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

}
