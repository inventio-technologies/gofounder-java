package com.gofounder.service;

import java.util.List;

import com.gofounder.model.GoUserWebinar;

public interface InvitationsService {

	List<GoUserWebinar> getAllWebinarUsers(int flag, int userId);

	List<GoUserWebinar> getWebinarUsersById(Integer webinerUserId);

	List<GoUserWebinar> searchWebinarInvByCriteria(String searchCriteria);

}
