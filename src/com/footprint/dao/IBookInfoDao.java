package com.footprint.dao;

import java.sql.SQLException;
import java.util.List;

import com.footprint.dao.entity.BookInfo;

import com.footprint.lx.struts.fenye.SplitPage;

public interface IBookInfoDao {
	public boolean delete (String id);
	public boolean update(String id,int bookIsDelete);
	public BookInfo findById (String id)throws SQLException;
	public List<BookInfo> findAll (SplitPage sp) throws SQLException;
	public List<BookInfo> findSomeBookByAuthor(String author, SplitPage sp) throws SQLException;
	public List<BookInfo> findSomeBookByBookName(String bookName, SplitPage sp) throws SQLException;
	public List<BookInfo> findByParentId (int id,SplitPage sp) throws SQLException;
	public boolean addBook(BookInfo book) throws SQLException ;
	public int getRows();
	public List<BookInfo> findByIsDelete(int isDelete, SplitPage sp) throws SQLException ;
}
