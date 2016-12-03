package com.footprint.dao;

import java.sql.SQLException;
import java.util.List;

import com.footprint.dao.entity.*;

public interface IDiscussDao {
	public boolean delete (int disid);
	public boolean changeStates(int disid,int states);
	public discuss findById (int disid)throws SQLException;
	public List<discuss> findAll (int bookId) throws SQLException;
	public List<discuss> findAll () throws SQLException;
	public boolean addDiscuss(String msg,int Uid,int bookId) throws SQLException ;

}
