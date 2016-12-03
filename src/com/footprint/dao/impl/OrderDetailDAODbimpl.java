package com.footprint.dao.impl;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.footprint.dao.IOrderDetailDao;
import com.footprint.dao.db.dbManager;
import com.footprint.dao.entity.orderDetail;
import com.footprint.dao.entity.orderMain;

public class OrderDetailDAODbimpl implements IOrderDetailDao{

	private Connection con;
	@Override
	public boolean delete(int oid) {
		try {	
			con = new dbManager().db();
			String sql="delete from orderdetail where oid=?";
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
	public List<orderDetail> findByoId(int oid) throws SQLException {
		try {	
			con = new dbManager().db();
			String sql="select * from orderdetail where oid=?";
			java.sql.PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, oid);
			ResultSet rs = ps.executeQuery();

			List<orderDetail> orders = new ArrayList<orderDetail>();
			
			while(rs.next()){		
				orderDetail order = new orderDetail();
				order.setOid(oid);
				order.setBookId(rs.getInt("bookId"));
				order.setBookName(rs.getString("bookName"));
				order.setBookNum(rs.getInt("bookNum"));
				order.setBookPrice(rs.getInt("bookPrice"));
				orders.add(order);
			}
			return orders;
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
	public List<orderDetail> findByUserId(int uid) throws SQLException {
		try {	
			con = new dbManager().db();
			String sql="select * from orderdetail where uid=?";
			java.sql.PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, uid);
			ResultSet rs = ps.executeQuery();

			List<orderDetail> orders = new ArrayList<orderDetail>();
			
			while(rs.next()){		
				orderDetail order = new orderDetail();
				order.setOid(rs.getInt("oid"));
				order.setBookId(rs.getInt("bookId"));
				order.setBookName(rs.getString("bookName"));
				order.setBookNum(rs.getInt("bookNum"));
				order.setBookPrice(rs.getInt("bookPirce"));
				orders.add(order);
			}
			return orders;
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
	public boolean addOrder(orderDetail order) throws SQLException {
		try {	
			con = new dbManager().db();	
			String sql="insert into orderdetail values (?,?,?,?,?)";
			java.sql.PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, order.getOid());
			ps.setInt(2, order.getBookId());
			ps.setString(3, order.getBookName());
			ps.setInt(4, order.getBookNum());
			ps.setInt(5, order.getBookPrice());
			ps.executeUpdate();		 
			return true;

		} catch ( Exception e) {

			e.printStackTrace();
			return false;
		}
	}


	@Override
	public int getRows() {
		// TODO Auto-generated method stub
		return 0;
	}

}
