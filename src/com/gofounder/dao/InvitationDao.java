package com.gofounder.dao;

import java.util.List;

import com.gofounder.model.GoUserWebinar;

public interface InvitationDao {

	List<GoUserWebinar> getAllWebinarUsers(int flag, int userId);

	List<GoUserWebinar> getWebinarUsersById(Integer webinerUserId);

	List<GoUserWebinar> searchWebinarInvByCriteria(String searchCriteria);

}
