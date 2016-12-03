package com.footprint.dao.impl;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.footprint.dao.IDiscussDao;
import com.footprint.dao.db.dbManager;
import com.footprint.dao.entity.discuss;

public class DiscussDAODbimpl implements IDiscussDao {

	private Connection con;
	@Override
	public boolean delete(int disid) {
		try {	
			con = new dbManager().db();
			String sql="delete from discuss where disId=?";
			java.sql.PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, disid);
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
	public boolean changeStates(int disid,int states) {
		try {	
			con = new dbManager().db();
			String sql="update discuss set states=? where disId=?";
			java.sql.PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, states);
			ps.setInt(2, disid);
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
	public discuss findById(int disid) throws SQLException {
		try {	
			con = new dbManager().db();
			String sql="select * from discuss where disId=?";
			java.sql.PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, disid);
			
			ResultSet rs = ps.executeQuery();
			discuss discuss = null;
			System.out.println(rs.next()+";;;;;;;;;;;;;;;;;;");
			if(rs.next()){			
				discuss.setDisId(rs.getInt("disId"));
				discuss.setBookId(rs.getInt("bookId"));
				discuss.setCusromerId(rs.getInt("cusromerId"));	
				discuss.setContext(rs.getString("context"));
				discuss.setStates(rs.getInt("states"));
				
			}
			return discuss;
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
	public List<discuss> findAll(int bookId) throws SQLException {
		try {	
			con = new dbManager().db();
			//System.out.println(id);
			String sql="select * from discuss where bookId=?" ;
			java.sql.PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, bookId);
			ResultSet rs = ps.executeQuery();
			List<discuss> discusss = new ArrayList<discuss>();
			while(rs.next()){		
				discuss discuss = new discuss();
				discuss.setDisId(rs.getInt("disId"));
				discuss.setBookId(rs.getInt("bookId"));
				discuss.setCusromerId(rs.getInt("cusromerId"));	
				discuss.setContext(rs.getString("context"));
				discuss.setStates(rs.getInt("states"));
				discusss.add(discuss);

			}
			return discusss;
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
	public boolean addDiscuss(String msg, int Uid, int bookId)
			throws SQLException {
		try {	
			con = new dbManager().db();	
			String sql="insert into discuss(bookId,cusromerId,context) values (?,?,?)";
			java.sql.PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, bookId);
			ps.setInt(2, Uid);
			ps.setString(3, msg);
			ps.executeUpdate();		 
			return true;

		} catch ( Exception e) {

			e.printStackTrace();
			return false;
		}
	}
	@Override
	public List<discuss> findAll() throws SQLException {
		try {	
			con = new dbManager().db();
			//System.out.println(id);
			String sql="select * from discuss where states=1" ;
			java.sql.PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			List<discuss> discusss = new ArrayList<discuss>();
			while(rs.next()){		
				discuss discuss = new discuss();
				discuss.setDisId(rs.getInt("disId"));
				discuss.setBookId(rs.getInt("bookId"));
				discuss.setCusromerId(rs.getInt("cusromerId"));	
				discuss.setContext(rs.getString("context"));
				discuss.setStates(rs.getInt("states"));
				discusss.add(discuss);

			}
			return discusss;
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
}