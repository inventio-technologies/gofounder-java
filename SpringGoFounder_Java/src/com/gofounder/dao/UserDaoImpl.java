package com.gofounder.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.gofounder.model.Announcement;
import com.gofounder.model.Emp;
import com.gofounder.model.Login;
import com.gofounder.model.Product;
import com.gofounder.model.User;

public class UserDaoImpl implements UserDao {
	@Autowired
	DataSource datasource;
	@Autowired
	JdbcTemplate jdbcTemplate;
	@Autowired
	InviteeDao inviteeDao;

	public int register(User user) {

		System.out.println("F**********************************");
		String query = "SELECT COUNT(*) FROM go_founder_java.go_users WHERE email='"+user.getEmail()+"' AND passwords='"+user.getPassword()+"'";
		int userCount = jdbcTemplate.queryForObject(query, Integer.class);

		if(userCount == 0){
			String sql = "insert into go_founder_java.go_users(passwords,first_name,last_name,email,phone,country,email_verification,ip) values(?,?,?,?,?,?,?,?)";
			return jdbcTemplate.update(sql, new Object[] { user.getPassword(), user.getFirstname(),
				user.getLastname(), user.getEmail(), user.getPhone() , user.getCountry() , "Not Verified" , ""});
		}else{
			return 0;
		}
	}

	public User validateUser(Login login) {

		// System.out.println("validateUser******************");
		System.out.println("F**********************************" + login.getEmail());
		System.out.println("F**********************************" + login.getPassword());
		String sql = "select * from go_founder_java.go_users where email='" + login.getEmail() + "' and passwords='"
				+ login.getPassword() + "'";
		List<User> users = jdbcTemplate.query(sql, new UserMapper());
		// System.out.println("validateUser users******************");

		System.out.println("F**********************************" + users.size());

		return users.size() > 0 ? users.get(0) : null;
	}

	public int save(Product product) {

		// System.out.println("F**********************************");
		String sql = "insert into product values(?,?,?,?)";
		return jdbcTemplate.update(sql,
				new Object[] { product.getName(), product.getCost(), product.getDescription(), product.getId() });
	}

	public List<Product> getProduct() {
		return jdbcTemplate.query("select * from product", new RowMapper<Product>() {
			public Product mapRow(ResultSet rs, int row) throws SQLException {
				Product e = new Product();
				// e.setId(rs.getInt(1));
				e.setName(rs.getString(1));
				e.setCost(rs.getFloat(2));
				e.setDescription(rs.getString(3));
				return e;
			}
		});
	}

	public int save(Emp p) {

		java.sql.Timestamp date = new java.sql.Timestamp(new java.util.Date().getTime());

		String sql = "insert into Emp(name,salary,designation,dates) values('" + p.getName() + "'," + p.getSalary()
				+ ",'" + p.getDesignation() + "','" + date + "')";
		return jdbcTemplate.update(sql);
	}

	public List<Emp> getEmployees() {
		return jdbcTemplate.query("select * from Emp", new RowMapper<Emp>() {
			public Emp mapRow(ResultSet rs, int row) throws SQLException {
				Emp e = new Emp();
				e.setId(rs.getInt(1));
				e.setName(rs.getString(2));
				e.setSalary(rs.getFloat(3));
				e.setDesignation(rs.getString(4));
				return e;
			}
		});
	}

	public Emp getEmpById(int id) {
		String sql = "select * from Emp where id=?";
		Emp em = new Emp();
		em = jdbcTemplate.queryForObject(sql, new Object[] { id }, new BeanPropertyRowMapper<Emp>(Emp.class));
		System.out.println("#########Emp ID ###### Day layer" + em.getId());
		return em;
	}

	public int updateEmp(Emp p) {
		String sql = "update Emp set name='" + p.getName() + "', salary=" + p.getSalary() + ",designation='"
				+ p.getDesignation() + "' where id=" + p.getId() + "";
		return jdbcTemplate.update(sql);
	}

	public int deleteEmp(int id) {
		String sql = "delete from Emp where id=" + id + "";
		return jdbcTemplate.update(sql);
	}

	public int saveAnnounce(Announcement announcement) {
		
		java.sql.Timestamp date = new java.sql.Timestamp(new java.util.Date().getTime());
		String sql = "insert into go_announcement(announce_name,announce_content,files,date_s) values('"
				+ announcement.getAnnouncename() + "','" + announcement.getAnnouncecontent() + "','"
				+ announcement.getAnnouncefilesname() + "','" + date + "')";
		return jdbcTemplate.update(sql);
	}

	public List<Announcement> getAnnounceList() {
		return jdbcTemplate.query("select * from go_announcement", new RowMapper<Announcement>() {
			public Announcement mapRow(ResultSet rs, int row) throws SQLException {
				Announcement e = new Announcement();
				e.setId(rs.getInt(1));
				e.setAnnouncename(rs.getString(2));
				e.setAnnouncecontent(rs.getString(3));
				e.setAnnouncefilesname(rs.getString(4));
				return e;
			}
		});
	}

	// =====================================================================================
	public Announcement getAnnounceById(int id) {
		String sql = "select * from go_announcement where announce_id=?";
		Announcement employee = (Announcement) jdbcTemplate.queryForObject(sql, new Object[] { id }, new RowMapper() {
			@Override
			public Announcement mapRow(ResultSet rs, int rowNum) throws SQLException {
				Announcement employee = new Announcement();
				System.out.println("##########getAnnounceById######" + rs.getInt(1));
				System.out.println("##########getAnnounceBy Name######" + rs.getString(2));
				employee.setId(rs.getInt(1));
				// employee.setAge(rs.getInt(2));
				employee.setAnnouncename(rs.getString(2));
				employee.setAnnouncecontent(rs.getString(3));
				employee.setAnnouncefilesname(rs.getString(4));
				return employee;
			}
		});
		return employee;
	}

	// =====================================================================================

	public int updateAnnounce(Announcement p) {

		System.out.println(
				"announce_name###" + p.getAnnouncename() + "files###" + p.getAnnouncefilesname() + "ID###" + p.getId());
		String sql = "update go_announcement set announce_name='" + p.getAnnouncename() + "', announce_content='"
				+ p.getAnnouncecontent() + "',files='" + p.getAnnouncefilesname() + "' where announce_id=" + p.getId()
				+ "";
		return jdbcTemplate.update(sql);
	}

	public int deleteAnnounce(int id) {
		String sql = "delete from go_announcement where announce_id=" + id + "";
		return jdbcTemplate.update(sql);
	}

	@Override
	public int emailVerify(String email) {
		String sql ="UPDATE go_founder_java.go_users SET email_verification = 'Verified' WHERE email = '"+email+"'";
		return jdbcTemplate.update(sql);		
	}

}

class UserMapper implements RowMapper<User> {
	public User mapRow(ResultSet rs, int arg1) throws SQLException {
		User user = new User();
		user.setUsername(rs.getString("email"));
		user.setPassword(rs.getString("passwords"));
		 user.setFirstname(rs.getString("first_name"));
		 user.setLastname(rs.getString("last_name"));
		// user.setEmail(rs.getString("email"));
		// user.setAddress(rs.getString("address"));
		// user.setPhone(rs.getInt("phone"));
		return user;
	}

}