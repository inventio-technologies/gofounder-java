package com.gofounder.service;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.RowMapper;

import com.gofounder.dao.UserDao;
import com.gofounder.model.Announcement;
import com.gofounder.model.Emp;
import com.gofounder.model.Login;
import com.gofounder.model.Product;
import com.gofounder.model.User;

public class UserServiceImpl implements UserService{
	
	@Autowired
	private UserDao userDAO;
 
	
	
	 public User validateUser(Login login) {
		    return userDAO.validateUser(login);
		    }
	 
	 public void register(User user) {
		 userDAO.register(user);
		    
		    }
	 
	 public void save(Product product) {
		 userDAO.save(product);
		    
		    }
	 
	 public List<Product> getProduct() {
		return  userDAO.getProduct();
		    
		    }
	 
	 public int save(Emp p){    
	        
	        return userDAO.save(p);    
	    } 
	 
	 public List<Emp> getEmployees(){    
	        
	        return userDAO.getEmployees();    
	    } 
	 
	 
	 
	 
	 public Emp getEmpById(int id){    
		 
		 return userDAO.getEmpById(id);    
	         
	    }  
	 
	 
	 public int updateEmp(Emp p){   
		 
		 return userDAO.updateEmp(p);    
	          
	    }  
	 
	 public int deleteEmp(int id){  
		 
		 return userDAO.deleteEmp(id);    
	        
	    } 
	 
	 public int saveAnnounce(Announcement announcement) {
		 
		 return userDAO.saveAnnounce(announcement);   
   	  
     	 // System.out.println("F**********************************");
    	  
         }
	 
	 public List<Announcement> getAnnounceList(){    
		 return userDAO.getAnnounceList();   
	    } 
	 
	  public Announcement getAnnounceById(int id){  
		  
		  return userDAO.getAnnounceById(id);  
	    
	    }  
	  
	  public int updateAnnounce(Announcement p){   
		  
		  return userDAO.updateAnnounce(p);  
	        
	    }  
	  
	  public int deleteAnnounce(int id){    
		  
		  return userDAO.deleteAnnounce(id);  
	        
	    } 
	    
	  public User getLoginUser(String email, String passwd) {
		  return userDAO.getLoginUser(email, passwd);
	  }
	  
	  public User getLoginUser(String email) {
		  return userDAO.getLoginUser(email);
	  }
	 
	 public void updateUserProfile(User user) {
		 userDAO.updateUserProfile(user);
	 }
	 
	 public void setUserDetailWithGeneratedPassword(String email, String password) {
		 userDAO.setUserDetailWithGeneratedPassword(email, password);
	 }

}
