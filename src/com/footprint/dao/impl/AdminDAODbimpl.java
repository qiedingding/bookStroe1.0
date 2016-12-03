package com.footprint.dao.impl;


import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.footprint.dao.IAdminDao;
import com.footprint.dao.db.dbManager;
import com.footprint.dao.entity.admin;
public class AdminDAODbimpl  implements IAdminDao{

	private Connection con;
	@Override
	public boolean delete(int id) {
		try {	
			con = new dbManager().db();
			String sql="delete  from admin where adminId=?";
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
	public admin findById(int id) throws SQLException {
		try {	
			con = new dbManager().db();
			System.out.println(id);
			String sql="select * from admin where adminId=?";
			java.sql.PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			admin admin = new admin();
			if(rs.next()){			
				admin.setAdminId(id);
				admin.setName(rs.getString("name"));
				admin.setPwd(rs.getString("pwd"));
				admin.setType(rs.getInt("type"));
			}
			return admin;
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
	public List<admin> findAll() throws SQLException {
		try {	
			con = new dbManager().db();
			String sql="select * from admin";
			java.sql.PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			List<admin> admins = new ArrayList<admin>();
			while(rs.next()){		
				admin admin = new admin();
				admin.setAdminId(rs.getInt("adminId"));
				admin.setName(rs.getString("name"));
				admin.setPwd(rs.getString("pwd"));
				admin.setType(rs.getInt("type"));
				admins.add(admin);
			}
			return admins;
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
	public boolean addAdmin(admin admin) throws SQLException {
		try {	
			con = new dbManager().db();	
			String sql="insert into admin values (null,?,?,0)";
			java.sql.PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1,admin.getName());
			ps.setString(2, admin.getPwd());
			ps.executeUpdate();		 
			return true;

		} catch ( Exception e) {

			e.printStackTrace();
			return false;
		}

	}

	@Override
	public boolean findByNameAndPwd(String name, String pwd) throws SQLException {
		try {	
			con = new dbManager().db();
			String sql="select * from admin where name=? and pwd=?";
			java.sql.PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, name);
			ps.setString(2, pwd);
			ResultSet rs = ps.executeQuery();
			admin admin = new admin();
			if(rs.next()){			
				return true;
			}
			return false;
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
	public boolean update(int id, int states) {
		try {	
			con = new dbManager().db();
			String sql="update  admin set type=? where adminId=?";
			java.sql.PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, states);
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
}
