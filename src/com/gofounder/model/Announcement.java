package com.gofounder.model;

public class Announcement {
	
	private int id;
	private int announce_id;
	public int getAnnounce_id() {
		return announce_id;
	}
	public void setAnnounce_id(int announce_id) {
		this.announce_id = announce_id;
	}
	private String announcename;    
	private String announcecontent; 
	private String announcefilesname; 
	
	private String announce_name; 
	public String getAnnounce_name() {
		return announce_name;
	}
	public void setAnnounce_name(String announce_name) {
		this.announce_name = announce_name;
	}
	public String getAnnounce_content() {
		return announce_content;
	}
	public void setAnnounce_content(String announce_content) {
		this.announce_content = announce_content;
	}
	public String getFiles() {
		return files;
	}
	public void setFiles(String files) {
		this.files = files;
	}
	private String announce_content; 
	private String files; 
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getAnnouncename() {
		return announcename;
	}
	public void setAnnouncename(String announcename) {
		this.announcename = announcename;
	}
	public String getAnnouncecontent() {
		return announcecontent;
	}
	public void setAnnouncecontent(String announcecontent) {
		this.announcecontent = announcecontent;
	}
	public String getAnnouncefilesname() {
		return announcefilesname;
	}
	public void setAnnouncefilesname(String announcefilesname) {
		this.announcefilesname = announcefilesname;
	}
	
	
	

}
