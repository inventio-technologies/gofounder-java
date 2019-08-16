package com.gofounder.service;

import java.util.List;
import java.util.Map;

import com.gofounder.model.Announcement;
import com.gofounder.model.Emp;
import com.gofounder.model.Login;
import com.gofounder.model.Product;
import com.gofounder.model.Sent_Invitation;
import com.gofounder.model.User;
import com.gofounder.model.User_Link;

public interface UserService {

	User validateUser(Login login);
	public List<User_Link> showShareHistory(User user);

	void register(User user);
	
	void save(Product product);
	
	 List<Product> getProduct();
	 
	 public int save(Emp p);
	 
	 public List<Emp> getEmployees();
	 
    public Emp getEmpById(int id);
    
    public int updateEmp(Emp p);
    
    public int deleteEmp(int id);
    
    public int saveAnnounce(Announcement announcement);
    
    public List<Announcement> getAnnounceList();
    
    public Announcement getAnnounceById(int id);
    
    public int updateAnnounce(Announcement p);
    
    public int deleteAnnounce(int id);
    
    public User getLoginUser(String email, String passwd);
	
	public User getLoginUser(String email);
	
    public int updatePassword(User user);
    public int userImgeSaveInDb(User user);
    public int userLibraryImgeUpload(User user);
    
    
    User getUserDetails(Login login);
    User showUserpicture(User user);
    
    List<String> getLibrayPicList(User user);
    
    public int saveShareHistory(User user,User_Link user_link);
    
    
    Map<Integer, String> fetchEmailTemplate();
    public List<Sent_Invitation> showShareHistory_sentinvitaion(User user);
    
	int verifyEmail(String email);
	
	public void updateUserProfile(User user);
	
	int userRegistration(User user);
	
	public void setUserDetailWithGeneratedPassword(String email, String password);
	
	public int deleteWebinarInvitee(int id);
}
