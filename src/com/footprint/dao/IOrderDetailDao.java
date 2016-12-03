package com.footprint.dao;

import java.sql.SQLException;
import java.util.List;

import com.footprint.dao.entity.orderDetail;
public interface IOrderDetailDao {
	public boolean delete (int oid);
	public List<orderDetail> findByoId (int oid) throws SQLException;
	public List<orderDetail> findByUserId (int uid) throws SQLException;
	public boolean addOrder(orderDetail order) throws SQLException ;
	public int getRows();
}
