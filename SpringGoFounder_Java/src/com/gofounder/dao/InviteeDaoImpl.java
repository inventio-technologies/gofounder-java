package com.gofounder.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.gofounder.model.Invitee;

public class InviteeDaoImpl implements InviteeDao{

	@Autowired
	JdbcTemplate jdbcTemplate;
	
	@Override
	public List<Invitee> getInviteesByUserId(int userId) {
		
		String sql = "SELECT * FROM go_founder_java.go_referral WHERE upline_id = "+userId+" ORDER BY date_s DESC";
		List<Invitee> inviteeList = jdbcTemplate.query(sql, new InviteeMapper());
		return inviteeList;
	}

	@Override
	public List<Invitee> getInviteesByFnameLnameEmail(int userId, String nameEmail) {
		String sql = "";
		if(!nameEmail.equals(null) && !nameEmail.equals("")){
			sql = "SELECT m.* FROM (SELECT * FROM go_founder_java.go_referral WHERE upline_id = "+userId+") m "
						+" WHERE m.f_name = '"+nameEmail+"' OR m.l_name = '"+nameEmail+"' OR m.email_address = '"+nameEmail+"'"
						+" ORDER BY m.date_s DESC";
		}else{
			sql = "SELECT * FROM go_founder_java.go_referral WHERE upline_id = "+userId+" ORDER BY date_s DESC";
		}
		List<Invitee> inviteeList = jdbcTemplate.query(sql, new InviteeMapper());
		return inviteeList;
	}

	@Override
	public int numberOfInvitee(int userId) {
		String sql = "SELECT COUNT(*) num FROM go_founder_java.go_referral WHERE upline_id = "+userId;
		return jdbcTemplate.queryForObject(sql, Integer.class);
	}

	@Override
	public int eraseInvitee(int id) {
		String sql = "DELETE FROM go_founder_java.go_referral WHERE refferal_id = "+id;
		return jdbcTemplate.update(sql);
	}

}

class InviteeMapper implements RowMapper<Invitee>{

	@Override
	public Invitee mapRow(ResultSet rs, int arg1) throws SQLException {
		Invitee invitee = new Invitee();
		invitee.setInviteeId(rs.getInt("refferal_id"));
		invitee.setFname(rs.getString("f_name"));
		invitee.setLname(rs.getString("l_name"));
		invitee.setEmail(rs.getString("email_address"));
		invitee.setDate(rs.getDate("date_s"));
		return invitee;
	}
	
}
