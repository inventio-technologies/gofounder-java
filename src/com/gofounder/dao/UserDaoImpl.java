package com.gofounder.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
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
import com.gofounder.model.MyInvitations;
import com.gofounder.model.Product;
import com.gofounder.model.Sent_Invitation;
import com.gofounder.model.User;
import com.gofounder.model.User_Link;

public class UserDaoImpl implements UserDao {
	@Autowired
	DataSource datasource;
	@Autowired
	JdbcTemplate jdbcTemplate;

	public void register(User user) {

		System.out.println("F**********************************");
		String sql = "insert into users values(?,?,?,?,?,?)";
		jdbcTemplate.update(sql, new Object[] { user.getUsername(), user.getPassword(), user.getFirstname(),
				user.getLastname(), user.getEmail(), user.getPhone() });
	}

	public User validateUser(Login login) {

		// System.out.println("validateUser******************");
		System.out.println("F**********************************" + login.getEmail());
		System.out.println("F**********************************" + login.getPassword());
//		String sql = "select * from go_founder_java.go_users where email='" + login.getEmail() + "' and passwords='"
//				+ login.getPassword() + "'";
		
		String sql = "select u.*,pic.* from go_founder_java.go_users u , go_founder_java.go_profilepic pic where u.user_id=pic.user_id and u.email='" + login.getEmail() + "' and u.passwords='"
				+ login.getPassword() + "'";
		List<User> users = jdbcTemplate.query(sql, new UserMapper());
		// System.out.println("validateUser users******************");

		System.out.println("F**********************************" + users.size());

		return users.size() > 0 ? users.get(0) : null;
	}
	
	//share_history data
//	public User_Link showShareHistory(User user) {
//
//		// System.out.println("validateUser******************");
//		
////		String sql = "select * from go_founder_java.go_users where email='" + login.getEmail() + "' and passwords='"
////				+ login.getPassword() + "'";
//		
//		String sql = "select u.* from share_history u where u.user_id='" + user.getUserid() + "'";
//		List<User_Link> user_link = jdbcTemplate.query(sql, new ShareHistUserMapper());
//		// System.out.println("validateUser users******************");
//
//		System.out.println("F**********************************" + user_link.size());
//
//		return user_link.size() > 0 ? user_link.get(0) : null;
//	}
	
	public List<User_Link> showShareHistory(User user){    
	    return jdbcTemplate.query("select * from share_history where user_id='" + user.getUserid() + "'",new RowMapper<User_Link>(){    
	        public User_Link mapRow(ResultSet rs, int row) throws SQLException {    
	        	User_Link e=new User_Link(); 
	        	
	        	System.out.println(" getString 3:"+rs.getString(3));
	        	
	        	
	        	e.setEmail(rs.getString(3));
	        	e.setLink(rs.getString(4));
	        	
	        	e.setDate(rs.getString(5));
//	            e.setId(rs.getInt(1));    
//	            e.setName(rs.getString(2));    
//	            e.setSalary(rs.getFloat(3));    
//	            e.setDesignation(rs.getString(4));    
	            return e;    
	        }    
	    });    
	}    
	
	
	//
	
	public int userRegistration(User user) {

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
	
	@Override
	public int emailVerify(String email) {
		String sql ="UPDATE go_founder_java.go_users SET email_verification = 'Verified' WHERE email = '"+email+"'";
		return jdbcTemplate.update(sql);		
	}
	
	// CSV for SENT INVITATION-Share History
		public List<Sent_Invitation> showShareHistory_sentinvitaion(User user) {
			System.out.println("id=" + user.getUserid());
			return jdbcTemplate.query("select * from email_history where user_id='" + user.getUserid() + "'",
					new RowMapper<Sent_Invitation>() {
						public Sent_Invitation mapRow(ResultSet rs, int row) throws SQLException {
							Sent_Invitation e = new Sent_Invitation();

							System.out.println(" getString 3:" + rs.getString(3));
							e.setFirst_name(rs.getString(3));
							e.setLast_name(rs.getString(4));
							e.setEmail(rs.getString(5));
							e.setDates(rs.getString(6));
							return e;
						}
					});
		}

	
	
	//show userpicture in profilepic
	
	public User showUserpicture(User user) {

		// System.out.println("validateUser******************");
		System.out.println("F**********************************" + user.getEmail());
		
//		String sql = "select * from go_founder_java.go_users where email='" + login.getEmail() + "' and passwords='"
//				+ login.getPassword() + "'";
		
		String sql = "select u.*,pic.* from go_founder_java.go_users u , go_founder_java.go_profilepic pic where u.user_id=pic.user_id and u.email='" + user.getEmail() + "' ";
		List<User> users = jdbcTemplate.query(sql, new UserMapper());
		// System.out.println("validateUser users******************");

		System.out.println("F**********************************" + users.size());

		return users.size() > 0 ? users.get(0) : null;
	}
	
	//resend email for user details
	
	public User getUserDetails(Login login) {

		// System.out.println("validateUser******************");
		
		System.out.println("getEmail********************************" + login.getResendemail());
		
//		String sql = "select * from go_founder_java.go_users where email='" + login.getEmail() + "' and passwords='"
//				+ login.getPassword() + "'";
		
		String sql = "select u.* from go_founder_java.go_users u where u.email='" + login.getResendemail() + "'";
		List<User> users = jdbcTemplate.query(sql, new UserMapperReg());
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
	
	public List<String> getLibrayPicList(User user) {
		
		String sql = "select u.image from go_founder_java.go_profile_library u where u.user_id='" + user.getUserid() + "'";
		
		List<String>data=jdbcTemplate.queryForList(sql,String.class);
//		return jdbcTemplate.query("select * from product", new RowMapper<Product>() {
//			public Product mapRow(ResultSet rs, int row) throws SQLException {
//				Product e = new Product();
//				// e.setId(rs.getInt(1));
//				e.setName(rs.getString(1));
//				e.setCost(rs.getFloat(2));
//				e.setDescription(rs.getString(3));
//				return e;
//			}
//		});
				
				return data;
	}
	
	
	
	

	public int save(Emp p) {

		java.sql.Timestamp date = new java.sql.Timestamp(new java.util.Date().getTime());

		String sql = "insert into Emp(name,salary,designation,dates) values('" + p.getName() + "'," + p.getSalary()
				+ ",'" + p.getDesignation() + "','" + date + "')";
		return jdbcTemplate.update(sql);
	}
	
	public int saveShareHistory(User user,User_Link user_link) {
		
		//java.sql.Timestamp date = new java.sql.Timestamp(new java.util.Date().getTime());

		Date date = new Date();
		SimpleDateFormat formatter = new SimpleDateFormat("dd-MM-yyyy");
		String strDate= formatter.format(date);
		//System.out.println(strDate);
	
		String sqlInsertQuery = "INSERT INTO share_history (user_id,email,link,dates) VALUES (?,?,?,?)";
        int insertCount = jdbcTemplate.update(sqlInsertQuery, user.getUserid(),user_link.getUsershareemail(),user_link.getInvitelink(),strDate);
		return insertCount;
	
	
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
	
   public int userImgeSaveInDb(User user) {
		
		java.sql.Timestamp date = new java.sql.Timestamp(new java.util.Date().getTime());
		
//		String sqlInsertQuery = "INSERT INTO go_profilepic (user_id, files) VALUES (?, ?)";
//        int insertCount = jdbcTemplate.update(sqlInsertQuery, user.getUserid(),user.getFileName());
//		return insertCount;
		
		String sql = "update go_profilepic set files='" + user.getFileName() + "' where user_id=" + user.getUserid()	+ "";
		return jdbcTemplate.update(sql);
		
		

	}
   
   public int userLibraryImgeUpload(User user) {
		
		java.sql.Timestamp date = new java.sql.Timestamp(new java.util.Date().getTime());
		
		String sqlInsertQuery = "INSERT INTO go_profile_library (user_id, image) VALUES (?, ?)";
        int insertCount = jdbcTemplate.update(sqlInsertQuery, user.getUserid(),user.getFileName());
		return insertCount;
		
//		String sql = "update go_profilepic set files='" + user.getFileName() + "' where user_id=" + user.getUserid()	+ "";
//		return jdbcTemplate.update(sql);
		
		

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
	
	public int updatePassword(User user) {

		System.out.println(
				"newpassword###" + user.getNewpassword() + "confpassword###" + user.getConfpassword() );
		String sql = "update go_users set passwords='" + user.getNewpassword() + "' where user_id=" + user.getUserid()	+ "";
		return jdbcTemplate.update(sql);
		
	}

	public int deleteAnnounce(int id) {
		String sql = "delete from go_announcement where announce_id=" + id + "";
		return jdbcTemplate.update(sql);
	}
	
	public User getLoginUser(String email, String passwd) {
		final String sql = "select user_id, passwords, first_name, last_name, email, phone, country, sponser_name, dates  from go_founder_java.go_users where email=? and passwords=?;";
		Object[] params = new Object[] {email, passwd};
		int[] paramTypes = new int[] {Types.VARCHAR, Types.VARCHAR};

		List<User> user = (List<User>) jdbcTemplate.query(sql, params,paramTypes, new RowMapper<User>() {
			public User mapRow(ResultSet rs, int cnt)throws SQLException{
				User u = new User();
				u.setUserId(rs.getInt("user_id"));
				u.setPassword(rs.getString("passwords"));
				u.setFirstname(rs.getString("first_name"));
				u.setLastname(rs.getString("last_name"));
				u.setEmail(rs.getString("email"));
				u.setPhone(rs.getString("phone"));
				u.setCountry(rs.getString("country"));
				u.setSponsorName(rs.getString("sponser_name"));
				u.setDate(rs.getString("dates"));
				
				return u;
			}
		} );
		return user.get(0);
	}
	
	public User getLoginUser(String email) {
		final String sql = "select user_id, passwords, first_name, last_name, email, phone, country, sponser_name, dates  from go_founder_java.go_users where email=?;";
		Object[] params = new Object[] {email};
		int[] paramTypes = new int[] {Types.VARCHAR};

		List<User> user = (List<User>) jdbcTemplate.query(sql, params,paramTypes, new RowMapper<User>() {
			public User mapRow(ResultSet rs, int cnt)throws SQLException{
				User u = new User();
				u.setUserId(rs.getInt("user_id"));
				u.setPassword(rs.getString("passwords"));
				u.setFirstname(rs.getString("first_name"));
				u.setLastname(rs.getString("last_name"));
				u.setEmail(rs.getString("email"));
				u.setPhone(rs.getString("phone"));
				u.setCountry(rs.getString("country"));
				u.setSponsorName(rs.getString("sponser_name"));
				u.setDate(rs.getString("dates"));
				
				return u;
			}
		} );
		
		if(user.size() > 0) {
			return user.get(0);
		}else {
			return new User();
		}
		
	}
	
	public void updateUserProfile(User user) {
		final String sql = "UPDATE GO_FOUNDER_JAVA.GO_USERS SET COUNTRY=?, FIRST_NAME=?, LAST_NAME=?, EMAIL=?, PHONE=?, SPONSER_NAME=? WHERE EMAIL=? AND PASSWORDS=?;";
		Object[] params = new Object[] {user.getCountry(), user.getFirstname(), user.getLastname(), user.getEmail(), user.getPhone(), user.getSponsorName(), user.getEmail(), user.getPassword()};
		int[] paramTypes = new int[] {Types.VARCHAR, Types.VARCHAR, Types.VARCHAR, Types.VARCHAR, Types.VARCHAR, Types.VARCHAR, Types.VARCHAR, Types.VARCHAR};
		jdbcTemplate.update(sql, params, paramTypes);
		System.out.println("Data updated...");
	}
	
	public void setUserDetailWithGeneratedPassword(String email, String password) {
		final String sql = "UPDATE GO_FOUNDER_JAVA.GO_USERS SET PASSWORDS=? WHERE EMAIL=?;";
		Object[] params = new Object[] {password,email};
		int[] paramTypes = new int[] {Types.VARCHAR, Types.VARCHAR};
		jdbcTemplate.update(sql, params, paramTypes);
		System.out.println("Data updated...");
	}
	
	//My Invitations
	public List<MyInvitations> fetchEmailTemplate() {

		System.out.println("****fetchEmailTemplate*******");
		String sql = "select id, title, duplicate_title from email_template";
		List<MyInvitations> templateList = jdbcTemplate.query(sql, new EmailTemplateMapper());
		
		System.out.println("****fetchEmailTemplate size*******"+templateList.size());
		
		return templateList;
	}
	
	@Override
	public int deleteWebinarInvitee(int id) {
		String sql="DELETE FROM go_founder_java.go_users_webinar WHERE ID = ?";
		Object[] params = new Object[] {new Integer(id)};
		int[] paramTypes = new int[] {Types.INTEGER};
		int flag=jdbcTemplate.update(sql,params, paramTypes);
		return flag;
	}

	//End

}

class UserMapper implements RowMapper<User> {
	public User mapRow(ResultSet rs, int arg1) throws SQLException {
		User user = new User();
		user.setEmail(rs.getString("email"));
		user.setPassword(rs.getString("passwords"));
		 user.setFirstname(rs.getString("first_name"));
		 user.setLastname(rs.getString("last_name"));
		 user.setProfileimg(rs.getString("files"));
		 user.setUserid(rs.getInt("user_id"));
		 user.setEmail(rs.getString("email"));
		// user.setAddress(rs.getString("address"));
		// user.setPhone(rs.getInt("phone"));
		return user;
	}

}

//Share_History usermapper

class ShareHistUserMapper implements RowMapper<User_Link> {
	public User_Link mapRow(ResultSet rs, int arg1) throws SQLException {
		User_Link user_link = new User_Link();
		
		user_link.setUsershareemail(rs.getString("email"));
		user_link.setInvitelink(rs.getString("link"));
//		user.setEmail(rs.getString("email"));
//		user.setPassword(rs.getString("passwords"));
//		 user.setFirstname(rs.getString("first_name"));
//		 user.setLastname(rs.getString("last_name"));
//		 user.setProfileimg(rs.getString("files"));
//		 user.setUserid(rs.getInt("user_id"));
//		 user.setEmail(rs.getString("email"));
		// user.setAddress(rs.getString("address"));
		// user.setPhone(rs.getInt("phone"));
		return user_link;
	}

}

//

class UserMapperReg implements RowMapper<User> {
	public User mapRow(ResultSet rs, int arg1) throws SQLException {
		User user = new User();
		 user.setEmail(rs.getString("email"));
		 user.setPassword(rs.getString("passwords"));
		 user.setFirstname(rs.getString("first_name"));
		 user.setLastname(rs.getString("last_name"));
		 user.setUserid(rs.getInt("user_id"));
		 user.setCountry(rs.getString("country"));
		// user.setEmail(rs.getString("email"));
		// user.setAddress(rs.getString("address"));
		 user.setPhone(rs.getString("phone"));
		return user;
	}

}

class EmailTemplateMapper implements RowMapper<MyInvitations> {
	public MyInvitations mapRow(ResultSet rs, int arg1) throws SQLException {
		MyInvitations myinvit = new MyInvitations();
		myinvit.setId(rs.getInt("id"));
		myinvit.setTitle(rs.getString("title"));
		myinvit.setDuplicate_title(rs.getString("duplicate_title"));
		
		
		return myinvit;
	}
}
