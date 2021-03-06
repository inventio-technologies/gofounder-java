package com.gofounder.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.RowMapper;

import com.gofounder.model.Announcement;
import com.gofounder.model.Emp;
import com.gofounder.model.Login;
import com.gofounder.model.MyInvitations;
import com.gofounder.model.Product;
import com.gofounder.model.Sent_Invitation;
import com.gofounder.model.User;
import com.gofounder.model.User_Link;

public interface UserDao {
	
	void register(User user);
	  User validateUser(Login login);
	  
	  public List<User_Link> showShareHistory(User user);
	  User showUserpicture(User user);
	  
	  int save(Product product);
	  
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
	   public int updatePassword(User user);
	   public User getLoginUser(String email, String passwd);
	   public int userImgeSaveInDb(User user);
	   public int userLibraryImgeUpload(User user);
	   
	   User getUserDetails(Login login);
	   
	   public  List<String> getLibrayPicList(User user);
	   
	   public int saveShareHistory(User user,User_Link user_link);
	   public List<MyInvitations> fetchEmailTemplate();
	   
	   public List<Sent_Invitation> showShareHistory_sentinvitaion(User user);
	   
	   int userRegistration(User user);
	   
	   int emailVerify(String email);
	   
	   public User getLoginUser(String email);
	
	   public void updateUserProfile(User user);
	    
	   public void setUserDetailWithGeneratedPassword(String email, String password);
	   int deleteWebinarInvitee(int id);

}
