package com.footprint.dao.impl;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.footprint.dao.IUser_aDao;
import com.footprint.dao.db.dbManager;
import com.footprint.dao.entity.user_a;

public class User_aDAODbimpl implements IUser_aDao {

	private Connection con;
	@Override
	public boolean delete(int id) {
		try {	
			con = new dbManager().db();
			String sql="delete from user_a where customerId=?";
			java.sql.PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			ps.executeUpdate();
			return true;
		}
		catch ( Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
		finally{
			//sta.close();
		}
	}

	@Override
	public boolean update(int id,String pwd) {
		try {	
			con = new dbManager().db();
			String sql="update user_a set pwd=? where customerId=?";
			java.sql.PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, pwd);
			ps.setInt(2, id);
			ps.executeUpdate();
			return true;
		}
		catch ( Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
		finally{
			//sta.close();
		}
	}

	@Override
	public user_a findById(int id) throws SQLException {
		try {	
			con = new dbManager().db();
			System.out.println(id);
			String sql="select * from user_a where customerId=?";
			java.sql.PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			user_a user = new user_a();
			if(rs.next()){			
				user.setCustomerId(rs.getInt("customerId"));
				user.setCustomerName(rs.getString("customerName"));
				user.setPwd(rs.getString("pwd"));	

			}
			return user;
		}
		catch ( Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
		finally{
			//sta.close();
		}
	}

	

	@Override
	public user_a findByNameAndPwd(String name, String pwd) throws SQLException {
		try {	
			con = new dbManager().db();
			String sql="select * from user_a where customerName=? and pwd=?";
			java.sql.PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, name);
			ps.setString(2, pwd);
			ResultSet rs = ps.executeQuery();
			user_a user = new user_a();
			if(rs.next()){			
				user.setCustomerId(rs.getInt("customerId"));
				user.setCustomerName(rs.getString("customerName"));
				user.setPwd(rs.getString("pwd"));	

			}
			return user;
		}
		catch ( Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
		finally{
			//sta.close();
		}
	}
	

	@Override
	public List<user_a> findAll() throws SQLException {
		try {	
			con = new dbManager().db();
			//System.out.println(id);
			String sql="select * from user_a ";
			java.sql.PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			List<user_a> users = new ArrayList<user_a>();
			while(rs.next()){		
				user_a user = new user_a();
				user.setCustomerId(rs.getInt("customerId"));
				user.setCustomerName(rs.getString("customerName"));
				user.setPwd(rs.getString("pwd"));	
				users.add(user);

			}
			return users;
		}
		catch ( Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
		finally{
			//sta.close();
		}
	}

	

	@Override
	public boolean addUser(user_a user) throws SQLException {
		try {	
			con = new dbManager().db();	
			String sql="insert into user_a values (?,?,?)";
			java.sql.PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, null);
			ps.setString(2, user.getCustomerName());
			ps.setString(3, user.getPwd());
			ps.executeUpdate();		 
			return true;

		} catch ( Exception e) {

			e.printStackTrace();
			return false;
		}
	}
}