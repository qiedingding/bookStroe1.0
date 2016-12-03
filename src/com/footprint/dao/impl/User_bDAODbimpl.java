package com.footprint.dao.impl;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.footprint.dao.IUser_bDao;
import com.footprint.dao.db.dbManager;
import com.footprint.dao.entity.user_b;

public class User_bDAODbimpl implements IUser_bDao {

	private Connection con;
	@Override
	public boolean delete(int id) {
		try {	
			con = new dbManager().db();
			String sql="delete from user_b where customerId=?";
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
	public boolean update(user_b user) {
		try {	
			con = new dbManager().db();
			String sql="update user_b set tel=?,address=?,sex=?,age=?,qq=? where customerId=?";
			java.sql.PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, user.getTel());
			ps.setString(2, user.getAddress());
			ps.setInt(3, user.getSex());
			ps.setInt(4, user.getAge());
			ps.setInt(5, user.getAge());
			ps.setInt(6, user.getCustomerId());
			
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
	public user_b findById(int id) throws SQLException {
		try {	
			con = new dbManager().db();
			System.out.println(id);
			String sql="select * from user_b where customerId=?";
			java.sql.PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			user_b user = new user_b();
			if(rs.next()){			
				user.setAddress(rs.getString("address"));
				user.setAge(rs.getInt("age"));
				user.setCustomerId(id);
				user.setQq(rs.getInt("qq"));
				user.setTel(rs.getInt("tel"));
				user.setSex(rs.getInt("sex"));
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
	public boolean addUser(int id) throws SQLException {
		try {	
			con = new dbManager().db();	
			String sql="insert into user_b values (?,?,?,?,?,?)";
			java.sql.PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			ps.setInt(2, 0);
			ps.setString(3, null);
			ps.setInt(4, 0);
			ps.setInt(5, 0);
			ps.setInt(6, 0);
			ps.executeUpdate();		 
			return true;

		} catch ( Exception e) {

			e.printStackTrace();
			return false;
		}
	}
}