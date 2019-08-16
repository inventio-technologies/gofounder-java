package com.gofounder.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.gofounder.dao.InvitationDao;
import com.gofounder.model.GoUserWebinar;

public class InvitationsServiceImpl implements InvitationsService {

	@Autowired
	private InvitationDao invitationDaoImpl;
	
	@Override
	public List<GoUserWebinar> getAllWebinarUsers(int flag, int userId) {
		List<GoUserWebinar> goUserWebinar = new ArrayList<GoUserWebinar>();
		
		if(flag == 1) {
			goUserWebinar=invitationDaoImpl.getAllWebinarUsers(flag,userId);
		}
		
		return goUserWebinar;		
	}
	
	@Override
	public List<GoUserWebinar> getWebinarUsersById(Integer webinerUserId){
		return invitationDaoImpl.getWebinarUsersById(webinerUserId);
	}
	
	@Override
	public List<GoUserWebinar> searchWebinarInvByCriteria(String searchCriteria){
		return invitationDaoImpl.searchWebinarInvByCriteria(searchCriteria);
	}
}
