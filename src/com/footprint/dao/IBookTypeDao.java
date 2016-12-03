package com.footprint.dao;

import java.sql.SQLException;

import java.util.List;

import com.footprint.dao.entity.BookType;
import com.footprint.lx.struts.fenye.SplitPage;

public interface IBookTypeDao {
	public boolean delete (int id);
	public boolean update(int id);
	public BookType findById (int id)throws SQLException;
	public List<BookType> findAll (SplitPage sp) throws SQLException;
	public List<BookType> findByParentId (int id) throws SQLException;
	public boolean addType(BookType Type) throws SQLException ;
	public int getRows();
	//public boolean addBook(BookType book) throws SQLException ;


	
}
