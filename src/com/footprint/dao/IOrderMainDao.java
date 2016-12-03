package com.footprint.dao;

import java.sql.SQLException;
import java.util.List;

import com.footprint.dao.entity.orderMain;
import com.footprint.lx.struts.fenye.SplitPage;

public interface IOrderMainDao {
	public boolean delete (int oid);
	public boolean update(int oid,int status);
	public orderMain findById (int oid)throws SQLException;
	public List<orderMain> findAll (SplitPage sp) throws SQLException;
	public List<orderMain> findByUserId (int uid) throws SQLException;
	public boolean addOrder(orderMain order) throws SQLException ;
	public int getRows();
}
