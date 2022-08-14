package com.map.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.InitialContext;
import javax.sql.DataSource;

public class userDAO {
	Connection con;
	PreparedStatement ptmt;
	ResultSet rs;
	String sql;
	
	public userDAO() {
		try {
			InitialContext init = new InitialContext();
			DataSource ds = (DataSource)init.lookup("java:comp/env/qwer");
			con = ds.getConnection();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public userDTO oneUser(String id) {
		userDTO dto = null;
		sql = "select * from user where id = ?";
		try {
			ptmt = con.prepareStatement(sql);
			ptmt.setString(1, id);
			rs = ptmt.executeQuery();
			while(rs.next()) {
				dto = new userDTO();
				dto.setId(rs.getString("id"));
				dto.setPw(rs.getString("pw"));
				dto.setName(rs.getString("name"));
				dto.setEmail(rs.getString("email"));
				dto.setJoin_date(rs.getDate("join_date"));
				dto.setTel(rs.getString("name"));
				dto.setState(rs.getInt("state"));
			}
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		
		return dto;
	}
	
	public ArrayList<userDTO> allUser() {
		ArrayList<userDTO> res = new ArrayList<userDTO>();
		sql = "select * from user";
		try {
			ptmt = con.prepareStatement(sql);
			
			rs = ptmt.executeQuery();
			while(rs.next()) {
				userDTO dto = new userDTO();
				
				dto.setId(rs.getString("id"));
				dto.setPw(rs.getString("pw"));
				dto.setName(rs.getString("name"));
				dto.setEmail(rs.getString("email"));
				dto.setJoin_date(rs.getDate("join_date"));
				dto.setTel(rs.getString("name"));
				dto.setState(rs.getInt("state"));
				
				res.add(dto);
			}
		}catch (Exception e) {
			e.printStackTrace();
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
