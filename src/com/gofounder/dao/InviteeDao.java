package com.gofounder.dao;

import java.util.List;

import com.gofounder.model.Invitee;

public interface InviteeDao {

	List<Invitee> getInviteesByUserId(int userId);
	
	List<Invitee> getInviteesByFnameLnameEmail(int userId , String nameEmail);
	
	int numberOfInvitee(int userId);
	
	int eraseInvitee(int id);
	
}
