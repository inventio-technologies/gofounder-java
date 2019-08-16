package com.gofounder.service;

import java.util.List;

import com.gofounder.model.Announcement;
import com.gofounder.model.Emp;
import com.gofounder.model.Login;
import com.gofounder.model.Product;
import com.gofounder.model.User;

public interface UserService {

	User validateUser(Login login);

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
	
	public void updateUserProfile(User user);
	
	public void setUserDetailWithGeneratedPassword(String email, String password);
}
