package com.footprint.dao.impl;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import java.util.ArrayList;
import java.util.List;

import com.footprint.dao.IBookTypeDao;
import com.footprint.dao.db.dbManager;
import com.footprint.dao.entity.BookType;
import com.footprint.lx.struts.fenye.SplitPage;

public class BookTypeDAODbimpl implements IBookTypeDao{

	private Statement sta;
	private Connection con;
	public boolean delete(int id) {
		try {	
			con = new dbManager().db();
			String sql="update booktype set typeIsDelete=3 where bookTypeId=?";
			java.sql.PreparedStatement ps = con.prepareStatement(sql);

			ps.setInt(1, id);
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
	public boolean update(int id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public BookType findById(int id) throws SQLException {
		try {	
			con = new dbManager().db();
			//System.out.println(id);
			String sql="select * from bookType where bookTypeId=?";
			java.sql.PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			BookType type = new BookType();
			if(rs.next()){			

				type.setBookTypeId(rs.getInt("bookTypeId"));
				type.setBookTypeName(rs.getString("bookTypeName"));
				type.setContext(rs.getString("context"));
				type.setParentId(rs.getInt("parentId"));
				type.setTypeIsDelete(rs.getInt("typeIsDelete"));

			}
			return type;
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
	public List<BookType> findAll(SplitPage sp) throws SQLException {
		try {	
			con = new dbManager().db();
			//System.out.println(id);
			String sql="select * from bookType LIMIT "+(sp.getCurrentPage()-1)*sp.getPageRows()+","+sp.getPageRows();
			java.sql.PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			List<BookType> Types = new ArrayList<BookType>();
			while(rs.next()){			
				BookType type = new BookType();
				//book.setBookId(rs.getString("bookId"));
				type.setBookTypeId(rs.getInt("bookTypeId"));
				type.setBookTypeName(rs.getString("bookTypeName"));
				type.setContext(rs.getString("context"));
				type.setParentId(rs.getInt("parentId"));
				type.setTypeIsDelete(rs.getInt("typeIsDelete"));
				Types.add(type);
			}
			return Types;
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
	public List<BookType> findByParentId(int id)
	throws SQLException {
		try {	
			con = new dbManager().db();
			//System.out.println(id);
			String sql="select * from bookType where parentId=?";
			java.sql.PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			List<BookType> Types = new ArrayList<BookType>();
			while(rs.next()){			
				BookType type = new BookType();
				//book.setBookId(rs.getString("bookId"));
				type.setBookTypeId(rs.getInt("bookTypeId"));
				type.setBookTypeName(rs.getString("bookTypeName"));
				type.setContext(rs.getString("context"));
				type.setParentId(rs.getInt("parentId"));
				type.setTypeIsDelete(rs.getInt("typeIsDelete"));
				Types.add(type);
			}
			return Types;
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
	public int getRows() {
		try {	
			con = new dbManager().db();

			String sql="select * from bookType";
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

	@Override
	public boolean addType(BookType type) throws SQLException {
		try {	
			con = new dbManager().db();	
			String sql="insert into bookType values (?,?,?,?,?)";
			java.sql.PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, type.getBookTypeId());
			ps.setInt(2, type.getParentId());
			ps.setString(3, type.getBookTypeName());
			ps.setString(4, type.getContext());
			ps.setInt(5, type.getTypeIsDelete());
			ps.executeUpdate();		 
			return true;

		} catch ( Exception e) {

			e.printStackTrace();
			return false;
		}
	}

	//public boolean addBook(BookType book) throws SQLException {
	// TODO Auto-generated method stub
	//	return false;
	//}



}
