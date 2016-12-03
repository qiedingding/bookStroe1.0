package com.footprint.dao;

import java.sql.SQLException;
import java.util.List;

import com.footprint.dao.entity.*;

public interface ISeekInfoDao {
	public boolean delete (int id);
	public seekInfo findById (int id)throws SQLException;
	public List<seekInfo> findAll () throws SQLException;
	public boolean addSeekInfo(seekInfo seekInfo) throws SQLException ;

}
