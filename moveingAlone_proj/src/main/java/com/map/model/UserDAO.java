package com.map.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.InitialContext;
import javax.sql.DataSource;

public class UserDAO {
	Connection con;
	PreparedStatement ptmt;
	ResultSet rs;
	String sql;
	
	public UserDAO() {
		try {
			InitialContext init = new InitialContext();
			DataSource ds = (DataSource)init.lookup("java:comp/env/qwer");
			con = ds.getConnection();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public UserDTO oneUser(String id) {
		UserDTO dto = null;
		sql = "select * from user where id = ?";
		try {
			ptmt = con.prepareStatement(sql);
			ptmt.setString(1, id);
			rs = ptmt.executeQuery();
			while(rs.next()) {
				dto = new UserDTO();
				dto.setId(rs.getString("id"));
				dto.setPw(rs.getString("pw"));
				dto.setName(rs.getString("name"));
				dto.setEmail(rs.getString("email"));
				dto.setJoin_date(rs.getDate("join_date"));
				dto.setTel(rs.getString("name"));
				dto.setState(rs.getInt("state"));
				dto.setLevel(rs.getInt("level"));
			}
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		
		return dto;
	}
	
	public ArrayList<UserDTO> allUser() {
		ArrayList<UserDTO> res = new ArrayList<UserDTO>();
		sql = "select * from user";
		try {
			ptmt = con.prepareStatement(sql);
			
			rs = ptmt.executeQuery();
			while(rs.next()) {
				UserDTO dto = new UserDTO();
				
				dto.setId(rs.getString("id"));
				dto.setPw(rs.getString("pw"));
				dto.setName(rs.getString("name"));
				dto.setEmail(rs.getString("email"));
				dto.setJoin_date(rs.getDate("join_date"));
				dto.setTel(rs.getString("name"));
				dto.setState(rs.getInt("state"));
				dto.setLevel(rs.getInt("level"));
				
				res.add(dto);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		
		return res;
	}
	public int insert(UserDTO dto){
      int res = 0;
      sql = "insert into user (id, pw, name,email,join_date,tel,state,level ) values(?,?,?,?,?,?,0,2)";
      try {
		ptmt = con.prepareStatement(sql);
		ptmt.setString(1, dto.getId());
		ptmt.setString(2, dto.getPw());
		ptmt.setString(3, dto.getName());
		ptmt.setString(4, dto.getEmail());
		ptmt.setDate(5, dto.getJoin_date());
		ptmt.setString(6, dto.getTel());
		
		ptmt.executeUpdate();
	} catch (SQLException e1) {
		// TODO Auto-generated catch block
		e1.printStackTrace();
	}finally {
		close();
	}


      return res;
   }
	public void close() {
		if(rs!=null)try {rs.close();} catch (SQLException e) {}
		if(ptmt!=null)try {ptmt.close();} catch (SQLException e) {}
		if(con!=null)try {con.close();} catch (SQLException e) {}
	}
}
