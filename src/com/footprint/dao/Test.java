package com.footprint.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.footprint.dao.entity.BookInfo;
import com.footprint.dao.entity.discuss;
import com.footprint.dao.entity.user_a;
import com.footprint.dao.entity.user_b;
import com.footprint.dao.impl.BookInfoDAODbimpl;
import com.footprint.dao.impl.DiscussDAODbimpl;
import com.footprint.dao.impl.User_aDAODbimpl;
import com.footprint.dao.impl.User_bDAODbimpl;
import com.footprint.lx.struts.fenye.SplitPage;

public class Test {
	public static void main(String[] args) {
		try {
			//IBookInfoDao bookDAO = new BookInfoDAODbimpl();
			//SplitPage sp = new SplitPage();
			//List<BookInfo> books = new ArrayList<BookInfo>();
			//books =	bookDAO.findAll(sp);
			//System.out.println(books);
			//books =	bookDAO.findByParentId("12",sp);
			//System.out.println(books);
			//BookInfo book = new BookInfo();
			//book = bookDAO.findById("98656462");
			//System.out.println(book);
			//bookDAO.delete("1");
			//book.setBookId("1");
			//bookDAO.addBook(book);
			//bookDAO.update("2", 1);
			//////////////////////////////////////////////
			//user_a user = new user_a();
			//user.setCustomerId(1);
			//user.setCustomerName("zhangsan");
			//user.setPwd("111");
			//IUser_aDao userDAO = new User_aDAODbimpl();
			//userDAO.addUser(user);
			//List<user_a> users = userDAO.findAll();
			//System.out.println(users);
			//user = userDAO.findById(2);
			//user = userDAO.findByNameAndPwd("zhangsan", "111");
			//userDAO.delete(1);
			//System.out.println(user);
			//IUser_bDao user_bDAO = new User_bDAODbimpl();
			//user_b user = new user_b();
			//user_bDAO.addUser(6);
			//user.setCustomerId(5);
			//.setAddress("哈哈哈哈哈");
		//System.out.println(user);
			
			//user_bDAO.update(user);
			////////////////////////////////////////////////
			IDiscussDao discussDAO = new DiscussDAODbimpl();
			//discussDAO.delete(5);
			discussDAO.addDiscuss("哈哈哈哈", 5, 5);
			discussDAO.changeStates(2, 2);
			discussDAO.findById(2);
			List<discuss> dis = discussDAO.findAll(6);
			System.out.println(dis);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	

}
