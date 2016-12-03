package com.footprint.dao.impl;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.footprint.dao.IOrderMainDao;
import com.footprint.dao.db.dbManager;
import com.footprint.dao.entity.orderMain;
import com.footprint.lx.struts.fenye.SplitPage;

public class OrderMainDAODbimpl implements IOrderMainDao{

	private Connection con;
	@Override
	public boolean delete(int oid) {
		try {	
			con = new dbManager().db();
			String sql="delete from ordermain where oid=?";
			java.sql.PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, oid);
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
	public boolean update(int oid, int status) {
		try {	
			con = new dbManager().db();
			String sql="update ordermain set status=? where oid=?";
			java.sql.PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, status);
			ps.setInt(2, oid);
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
	public orderMain findById(int oid) throws SQLException {
		try {	
			con = new dbManager().db();
			String sql="select * from ordermain where oid=?";
			java.sql.PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, oid);
			ResultSet rs = ps.executeQuery();
			orderMain order = new orderMain();
			if(rs.next()){		
				order.setOid(oid);
				order.setContext(rs.getString("context"));
				order.setShadd(rs.getString("shadd"));
				order.setShname(rs.getString("shname"));
				order.setShtel(rs.getInt("shtel"));
				order.setStatus(rs.getInt("status"));
				order.setSumprice(rs.getInt("sumprice"));
				order.setUid(rs.getInt("uid"));
			}
			return order;
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
	public List<orderMain> findAll(SplitPage sp) throws SQLException {
		try {	
			con = new dbManager().db();
			String sql="select * from ordermain LIMIT "+(sp.getCurrentPage()-1)*sp.getPageRows()+","+sp.getPageRows();
			java.sql.PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			List<orderMain> orderMains = new ArrayList<orderMain>();
			while(rs.next()){			
				orderMain order = new orderMain();
				order.setOid(rs.getInt("oid"));
				order.setContext(rs.getString("context"));
				order.setShadd(rs.getString("shadd"));
				order.setShname(rs.getString("shname"));
				order.setShtel(rs.getInt("shtel"));
				order.setStatus(rs.getInt("status"));
				order.setSumprice(rs.getInt("sumprice"));
				order.setUid(rs.getInt("uid"));
				orderMains.add(order);
				
			}
			return orderMains;
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
	public List<orderMain> findByUserId(int uid) throws SQLException {
		try {	
			con = new dbManager().db();
			String sql="select * from ordermain where uid =?";
			java.sql.PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, uid);
			ResultSet rs = ps.executeQuery();
			List<orderMain> orderMains = new ArrayList<orderMain>();
			while(rs.next()){			
				orderMain order = new orderMain();
				order.setOid(rs.getInt("oid"));
				order.setContext(rs.getString("context"));
				order.setShadd(rs.getString("shadd"));
				order.setShname(rs.getString("shname"));
				order.setShtel(rs.getInt("shtel"));
				order.setStatus(rs.getInt("status"));
				order.setSumprice(rs.getInt("sumprice"));
				order.setUid(rs.getInt("uid"));
				orderMains.add(order);
				
			}
			return orderMains;
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
	public boolean addOrder(orderMain order) throws SQLException {
		try {	
			con = new dbManager().db();	
			String sql="insert into ordermain values (?,?,?,?,?,?,?,?)";
			java.sql.PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, order.getOid());
			ps.setInt(2, order.getUid());
			ps.setInt(3, order.getSumprice());
			ps.setInt(4, order.getShtel());
			ps.setString(5, order.getShadd());
			ps.setString(6, order.getShname());
			ps.setString(7, order.getContext());
			ps.setInt(8, order.getStatus());
			ps.executeUpdate();		 
			return true;

		} catch ( Exception e) {

			e.printStackTrace();
			return false;
		}
	}

	@Override
	public int getRows() {
		return 0;
	}

}
