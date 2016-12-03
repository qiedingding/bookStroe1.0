package com.footprint.dao.impl;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.footprint.dao.ISeekInfoDao;
import com.footprint.dao.db.dbManager;
import com.footprint.dao.entity.discuss;
import com.footprint.dao.entity.seekInfo;

public class SeekInfoDAODbimpl implements ISeekInfoDao {

	private Connection con;
	@Override
	public boolean delete(int id) {
		try {	
			con = new dbManager().db();
			String sql="delete from seekInfo where seekId=?";
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
	public seekInfo findById(int id) throws SQLException {
		try {	
			con = new dbManager().db();
			String sql="select * from seekInfo where seekId=?";
			java.sql.PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			seekInfo seek = new seekInfo();
			if(rs.next()){	
				seek.setSeekAuthor(rs.getString("seekAuthor"));
				seek.setSeekContext(rs.getString("seekContext"));
				seek.setSeekEmail(rs.getString("seekEmail"));
				seek.setSeekPbName(rs.getString("seekPbName"));
				seek.setSeekId(rs.getInt("seekId"));
			}
			return seek;
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
	public List<seekInfo> findAll() throws SQLException {
		try {	
			con = new dbManager().db();
	
			String sql="select * from seekInfo" ;
			java.sql.PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			List<seekInfo> seeks = new ArrayList<seekInfo>();
			while(rs.next()){		
				seekInfo seek = new seekInfo();
				seek.setSeekAuthor(rs.getString("seekAuthor"));
				seek.setSeekContext(rs.getString("seekContext"));
				seek.setSeekEmail(rs.getString("seekEmail"));
				seek.setSeekPbName(rs.getString("seekPbName"));
				seek.setSeekId(rs.getInt("seekId"));
				seeks.add(seek);
			}
			return seeks;
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
	public boolean addSeekInfo(seekInfo seekInfo) throws SQLException {
		try {	
			con = new dbManager().db();	
			String sql="insert into seekInfo(seekName,seekAuthor,seekPbName,seekEmail,seekContext) values (?,?,?,?,?)";
			java.sql.PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, seekInfo.getSeekName());
			ps.setString(2, seekInfo.getSeekAuthor());
			ps.setString(3, seekInfo.getSeekPbName());
			ps.setString(4, seekInfo.getSeekEmail());
			ps.setString(5, seekInfo.getSeekContext());
			ps.executeUpdate();		 
			return true;

		} catch ( Exception e) {

			e.printStackTrace();
			return false;
		}
	}
}