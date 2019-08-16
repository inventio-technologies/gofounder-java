package com.gofounder.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.RowMapper;

import com.gofounder.model.Announcement;
import com.gofounder.model.Emp;
import com.gofounder.model.Login;
import com.gofounder.model.Product;
import com.gofounder.model.User;

public interface UserDao {

	int register(User user);
	
	int emailVerify(String email);

	User validateUser(Login login);

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

}
