package com.footprint.dao.impl;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.footprint.dao.IBookInfoDao;
import com.footprint.dao.db.dbManager;
import com.footprint.dao.entity.BookInfo;
import com.footprint.lx.struts.fenye.SplitPage;

public class BookInfoDAODbimpl implements IBookInfoDao{
	private Statement sta;
	private Connection con;
	public boolean delete(String id) {
		try {	
			con = new dbManager().db();
			String sql="delete  from bookInfo where bookId=?";
			java.sql.PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, id);
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
	public boolean update(String id,int bookIsDelete) {
		try {	
			con = new dbManager().db();
			String sql="update bookInfo set bookIsDelete=? where bookId=?";
			java.sql.PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, bookIsDelete);
			ps.setString(2, id);
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
	public BookInfo findById(String id) throws SQLException {
		try {	
			con = new dbManager().db();
			System.out.println(id);
			String sql="select * from bookInfo where bookId=?";
			java.sql.PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, id);
			ResultSet rs = ps.executeQuery();
			BookInfo  book = new BookInfo();
			if(rs.next()){			

				book.setBookId(id);
				book.setBookName(rs.getString("bookName"));
				book.setAuthor(rs.getString("author"));
				book.setBigImg(rs.getString("bigImg"));
				book.setBookTypeId(rs.getInt("bookTypeId"));
				book.setContext(rs.getString("context"));
				book.setPbDate(rs.getString("pbDate"));
				book.setPbName(rs.getString("pbName"));
				book.setPrice(rs.getInt("price"));
				book.setSmallImg(rs.getString("smallImg"));
				book.setBookIsDelete(rs.getInt("bookIsDelete"))	;  			

			}
			return book;
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
	public List<BookInfo> findAll(SplitPage sp) throws SQLException {
		try {	
			con = new dbManager().db();

			String sql="select * from bookInfo LIMIT "+(sp.getCurrentPage()-1)*sp.getPageRows()+","+sp.getPageRows();
			java.sql.PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			List<BookInfo> Books = new ArrayList<BookInfo>();
			while(rs.next()){			
				BookInfo  book = new BookInfo();
				book.setBookId(rs.getString("bookId"));
				book.setBookName(rs.getString("bookName"));
				book.setAuthor(rs.getString("author"));
				book.setBigImg(rs.getString("bigImg"));
				book.setBookTypeId(rs.getInt("bookTypeId"));
				book.setContext(rs.getString("context"));
				book.setPbDate(rs.getString("pbDate"));
				book.setPbName(rs.getString("pbName"));
				book.setPrice(rs.getInt("price"));
				book.setSmallImg(rs.getString("smallImg"));
				book.setBookIsDelete(rs.getInt("bookIsDelete"))	; 
				Books.add(book);
			}
			return Books;
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
	public List<BookInfo> findByParentId(int id, SplitPage sp) throws SQLException {
		try {	
			String sql="select * from bookInfo where bookTypeId=?";
			java.sql.PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			List<BookInfo> Books = new ArrayList<BookInfo>();
			while(rs.next()){			
				BookInfo  book = new BookInfo();
				book.setBookId(rs.getString("bookId"));
				book.setBookName(rs.getString("bookName"));
				book.setAuthor(rs.getString("author"));
				book.setBigImg(rs.getString("bigImg"));
				book.setBookTypeId(rs.getInt("bookTypeId"));
				book.setContext(rs.getString("context"));
				book.setPbDate(rs.getString("pbDate"));
				book.setPbName(rs.getString("pbName"));
				book.setPrice(rs.getInt("price"));
				book.setSmallImg(rs.getString("smallImg"));
				book.setBookIsDelete(rs.getInt("bookIsDelete"))	; 
				Books.add(book);
			}
			return Books;
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
	public boolean addBook(BookInfo book) throws SQLException {
		try {	
			con = new dbManager().db();	
			String sql="insert into bookInfo values (?,?,?,?,?,?,?,?,?,?,?)";
			java.sql.PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, book.getBookId());
			ps.setString(2,  book.getBookName());
			ps.setInt(3, book.getBookTypeId());
			ps.setString(4,book.getPbName());
			ps.setString(5,book.getAuthor());
			ps.setString(6,book.getContext());
			ps.setInt(7,book.getPrice());
			ps.setString(9,book.getBigImg());
			ps.setString(8,book.getSmallImg());
			ps.setString(10,book.getPbDate());
			ps.setInt(11,book.getBookIsDelete());
			ps.executeUpdate();		 
			return true;

		} catch ( Exception e) {

			e.printStackTrace();
			return false;
		}
	}

	@Override
	public int getRows() {
		try {	
			con = new dbManager().db();

			String sql="select * from bookInfo";
			sta=con.createStatement();
			ResultSet rs = sta.executeQuery(sql);
			int i = 0;
			for( i=0;rs.next();i++){
			}
			System.out.println(i);
			return i;
		}
		catch ( Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();

		}
		finally{
			//sta.close();
		}
		return 0;
	}
	public List<BookInfo> findByIsDelete(int isDelete, SplitPage sp) throws SQLException {
		try {	
			String sql="select * from bookInfo where bookIsDelete=? LIMIT "+(sp.getCurrentPage()-1)*sp.getPageRows()+","+sp.getPageRows();
			java.sql.PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, isDelete);
			ResultSet rs = ps.executeQuery();
			List<BookInfo> Books = new ArrayList<BookInfo>();
			while(rs.next()){			
				BookInfo  book = new BookInfo();
				book.setBookId(rs.getString("bookId"));
				book.setBookName(rs.getString("bookName"));
				book.setAuthor(rs.getString("author"));
				book.setBigImg(rs.getString("bigImg"));
				book.setBookTypeId(rs.getInt("bookTypeId"));
				book.setContext(rs.getString("context"));
				book.setPbDate(rs.getString("pbDate"));
				book.setPbName(rs.getString("pbName"));
				book.setPrice(rs.getInt("price"));
				book.setSmallImg(rs.getString("smallImg"));
				book.setBookIsDelete(rs.getInt("bookIsDelete"))	; 
				Books.add(book);
			}
			return Books;
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
	public List<BookInfo> findSomeBookByAuthor(String author, SplitPage sp)
			throws SQLException {
		try {	
			String sql="select * from bookInfo where author like '%"+author+"%' LIMIT "+(sp.getCurrentPage()-1)*sp.getPageRows()+","+sp.getPageRows();
			java.sql.PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			List<BookInfo> Books = new ArrayList<BookInfo>();
			while(rs.next()){			
				BookInfo  book = new BookInfo();
				book.setBookId(rs.getString("bookId"));
				book.setBookName(rs.getString("bookName"));
				book.setAuthor(rs.getString("author"));
				book.setBigImg(rs.getString("bigImg"));
				book.setBookTypeId(rs.getInt("bookTypeId"));
				book.setContext(rs.getString("context"));
				book.setPbDate(rs.getString("pbDate"));
				book.setPbName(rs.getString("pbName"));
				book.setPrice(rs.getInt("price"));
				book.setSmallImg(rs.getString("smallImg"));
				book.setBookIsDelete(rs.getInt("bookIsDelete"))	; 
				Books.add(book);
			}
			return Books;
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
	public List<BookInfo> findSomeBookByBookName(String bookName, SplitPage sp)
			throws SQLException {
		try {	
			String sql="select * from bookInfo where bookName like '%"+bookName+"%' LIMIT "+(sp.getCurrentPage()-1)*sp.getPageRows()+","+sp.getPageRows();
			java.sql.PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			List<BookInfo> Books = new ArrayList<BookInfo>();
			while(rs.next()){			
				BookInfo  book = new BookInfo();
				book.setBookId(rs.getString("bookId"));
				book.setBookName(rs.getString("bookName"));
				book.setAuthor(rs.getString("author"));
				book.setBigImg(rs.getString("bigImg"));
				book.setBookTypeId(rs.getInt("bookTypeId"));
				book.setContext(rs.getString("context"));
				book.setPbDate(rs.getString("pbDate"));
				book.setPbName(rs.getString("pbName"));
				book.setPrice(rs.getInt("price"));
				book.setSmallImg(rs.getString("smallImg"));
				book.setBookIsDelete(rs.getInt("bookIsDelete"))	; 
				Books.add(book);
			}
			return Books;
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
}