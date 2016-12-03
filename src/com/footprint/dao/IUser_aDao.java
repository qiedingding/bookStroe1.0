package com.footprint.dao;

import java.sql.SQLException;
import java.util.List;

import com.footprint.dao.entity.user_a;

public interface IUser_aDao {
	public boolean delete (int id);
	public boolean update(int id,String pwd);
	public user_a findById (int id)throws SQLException;
	public user_a findByNameAndPwd (String name,String pwd)throws SQLException;
	public List<user_a> findAll () throws SQLException;
	public boolean addUser(user_a user) throws SQLException ;


}
