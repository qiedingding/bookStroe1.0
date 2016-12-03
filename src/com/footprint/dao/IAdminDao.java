package com.footprint.dao;

import java.sql.SQLException;
import java.util.List;

import com.footprint.dao.entity.*;

public interface IAdminDao {
	public boolean delete (int id);
	public boolean update(int id,int states);
	public admin findById (int id)throws SQLException;
	public boolean findByNameAndPwd (String name,String pwd)throws SQLException;
	public List<admin> findAll () throws SQLException;
	public boolean addAdmin(admin admin) throws SQLException ;

}
