package com.footprint.dao;

import java.sql.SQLException;
import com.footprint.dao.entity.user_b;

public interface IUser_bDao {
	public boolean delete (int id);
	public boolean update(user_b user);
	public user_b findById (int id)throws SQLException;
	public boolean addUser(int id) throws SQLException ;

}
