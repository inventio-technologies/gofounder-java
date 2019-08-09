package com.gofounder.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.gofounder.model.GoUserWebinar;

public class InvitationDaoImpl implements InvitationDao {

	@Autowired
	DataSource datasource;
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	@SuppressWarnings("unchecked")
	@Override
	public List<GoUserWebinar> getAllWebinarUsers(int flag, int userId) {
		List<GoUserWebinar> goUserWebinar = new ArrayList<GoUserWebinar>();
		
		String sql = "SELECT ID, UPLINE_ID, COMPANY_ID, F_NAME, L_NAME, EMAIL_ADDRESS, VIEW_COUNTRY, DATES, FLAG, DATE_S FROM GO_FOUNDER_JAVA.GO_USERS_WEBINAR WHERE FLAG = ? AND UPLINE_ID = ?";
		Object params[] = new Object[] {new Integer(flag), new Integer(userId)};
		int[] paramTypes = new int[] {Types.INTEGER,Types.INTEGER};
		
		goUserWebinar = jdbcTemplate.query(sql, params, paramTypes, new RowMapper() {
			public Object mapRow(ResultSet rs, int cnt) throws SQLException{
				GoUserWebinar userWebinar = new GoUserWebinar();
				if(!rs.equals(null) || rs != null) {
					userWebinar.setId(rs.getInt("ID"));
					userWebinar.setUplineId(rs.getInt("UPLINE_ID"));
					userWebinar.setCompanyId(rs.getInt("COMPANY_ID"));
					userWebinar.setfName(rs.getString("F_NAME"));
					userWebinar.setlName(rs.getString("L_NAME"));
					userWebinar.setEmailAddress(rs.getString("EMAIL_ADDRESS"));
					userWebinar.setViewCountry(rs.getString("VIEW_COUNTRY"));
					userWebinar.setDates(rs.getString("DATES"));
					userWebinar.setFlag(rs.getBoolean("FLAG"));
					userWebinar.setDateS(rs.getDate("DATE_S"));
				}
				return userWebinar;
			}
		});
		
		return goUserWebinar;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<GoUserWebinar> getWebinarUsersById(Integer webinerUserId){
		List<GoUserWebinar> goUserWebinar = new ArrayList<GoUserWebinar>();
		
		String sql = "SELECT ID, UPLINE_ID, COMPANY_ID, F_NAME, L_NAME, EMAIL_ADDRESS, VIEW_COUNTRY, DATES, FLAG, DATE_S FROM GO_FOUNDER_JAVA.GO_USERS_WEBINAR WHERE ID = ?";
		Object params[] = new Object[] {webinerUserId};
		int[] paramTypes = new int[] {Types.INTEGER};
		
		goUserWebinar = jdbcTemplate.query(sql, params, paramTypes, new RowMapper() {
			public Object mapRow(ResultSet rs, int cnt) throws SQLException{
				GoUserWebinar userWebinar = new GoUserWebinar();
				if(!rs.equals(null) || rs != null) {
					userWebinar.setId(rs.getInt("ID"));
					userWebinar.setUplineId(rs.getInt("UPLINE_ID"));
					userWebinar.setCompanyId(rs.getInt("COMPANY_ID"));
					userWebinar.setfName(rs.getString("F_NAME"));
					userWebinar.setlName(rs.getString("L_NAME"));
					userWebinar.setEmailAddress(rs.getString("EMAIL_ADDRESS"));
					userWebinar.setViewCountry(rs.getString("VIEW_COUNTRY"));
					userWebinar.setDates(rs.getString("DATES"));
					userWebinar.setFlag(rs.getBoolean("FLAG"));
					userWebinar.setDateS(rs.getDate("DATE_S"));
				}
				return userWebinar;
			}
		});
		
		return goUserWebinar;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<GoUserWebinar> searchWebinarInvByCriteria(String searchCriteria){
		List<GoUserWebinar> goUserWebinar = new ArrayList<GoUserWebinar>();
		
		String sql = "SELECT ID, UPLINE_ID, COMPANY_ID, F_NAME, L_NAME, EMAIL_ADDRESS, VIEW_COUNTRY, DATES, FLAG, DATE_S FROM GO_FOUNDER_JAVA.GO_USERS_WEBINAR WHERE F_NAME LIKE ? OR L_NAME LIKE ? OR EMAIL_ADDRESS LIKE ?";
		Object params[] = new Object[] {searchCriteria,searchCriteria,searchCriteria};
		int[] paramTypes = new int[] {Types.VARCHAR,Types.VARCHAR,Types.VARCHAR};
		
		goUserWebinar = jdbcTemplate.query(sql, params, paramTypes, new RowMapper() {
			public Object mapRow(ResultSet rs, int cnt) throws SQLException{
				GoUserWebinar userWebinar = new GoUserWebinar();
				if(!rs.equals(null) || rs != null) {
					userWebinar.setId(rs.getInt("ID"));
					userWebinar.setUplineId(rs.getInt("UPLINE_ID"));
					userWebinar.setCompanyId(rs.getInt("COMPANY_ID"));
					userWebinar.setfName(rs.getString("F_NAME"));
					userWebinar.setlName(rs.getString("L_NAME"));
					userWebinar.setEmailAddress(rs.getString("EMAIL_ADDRESS"));
					userWebinar.setViewCountry(rs.getString("VIEW_COUNTRY"));
					userWebinar.setDates(rs.getString("DATES"));
					userWebinar.setFlag(rs.getBoolean("FLAG"));
					userWebinar.setDateS(rs.getDate("DATE_S"));
				}
				return userWebinar;
			}
		});
		
		return goUserWebinar;
	}
}
