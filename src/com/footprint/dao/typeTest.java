package com.footprint.dao;

import java.sql.SQLException;

import java.util.List;
import com.footprint.dao.entity.BookType;
import com.footprint.dao.impl.BookTypeDAODbimpl;
import com.footprint.lx.struts.fenye.SplitPage;


public class typeTest {
	public static void main(String[] args) {
		try {
			SplitPage sp = new SplitPage();
			IBookTypeDao bookTypeDAO = new BookTypeDAODbimpl();
			List<BookType> types = bookTypeDAO.findAll(sp);
			System.out.println(types);
			BookType type = bookTypeDAO.findById(1);
			System.out.println(type);
			types = bookTypeDAO.findByParentId(0);
			System.out.println(types);
			//bookTypeDAO.delete(5);
		
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	

}
