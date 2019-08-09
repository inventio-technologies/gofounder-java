package com.gofounder.service;

import java.util.List;

import com.gofounder.model.Invitee;

public interface InviteeService {
	
	List<Invitee> fetchInviteesByUserId(int userId);
	
	List<Invitee> fetchInviteesByFnameLnameEmail(int userId , String nameEmail);
	
	int inviteeCount(int userId);
	
	int removeInvitee(int id);
	
}
