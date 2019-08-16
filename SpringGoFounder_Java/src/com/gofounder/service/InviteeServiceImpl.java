package com.gofounder.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.gofounder.dao.InviteeDao;
import com.gofounder.model.Invitee;

public class InviteeServiceImpl implements InviteeService{

	@Autowired
	private InviteeDao inviteeDao;
	
	@Override
	public List<Invitee> fetchInviteesByUserId(int userId) {

		List<Invitee> inviteeList = inviteeDao.getInviteesByUserId(userId);  
		return inviteeList;
	}

	@Override
	public List<Invitee> fetchInviteesByFnameLnameEmail(int userId, String nameEmail) {
		List<Invitee> inviteeList = inviteeDao.getInviteesByFnameLnameEmail(userId, nameEmail);
		return inviteeList;
	}

	@Override
	public int inviteeCount(int userId) {
		return inviteeDao.numberOfInvitee(userId);
	}

	@Override
	public int removeInvitee(int id) {
		return inviteeDao.eraseInvitee(id);
	}

}
