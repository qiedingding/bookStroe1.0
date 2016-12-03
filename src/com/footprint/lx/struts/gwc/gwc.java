package com.footprint.lx.struts.gwc;

import java.sql.SQLException;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.Set;

import com.footprint.dao.IBookInfoDao;
import com.footprint.dao.entity.BookInfo;
import com.footprint.dao.impl.BookInfoDAODbimpl;

public class gwc {
	private Hashtable<Integer, bookItem> bookItems = new Hashtable<Integer, bookItem>();
	private int sumPirce;
	private int mysize;

	public int getSumPirce() {
		int sum = 0;
		Set keys = bookItems.keySet();
		Iterator it=keys.iterator();
		while(it.hasNext()){ 
			int key=(Integer) it.next();
			sum += bookItems.get(key).getPrice()*bookItems.get(key).getNum();
		}
		return sum;
		
	}
	public int getMysize() {
		return bookItems.size();	
	}
	
	public Hashtable<Integer, bookItem> getBookItems() {
		return bookItems;
	}

	public void delete(int bookId){
		bookItems.remove(bookId);

	}
	public void clear(){
		bookItems.clear();

	}
	public void addBookItem(String bookId){
		
		IBookInfoDao bookDAO = new BookInfoDAODbimpl();
		BookInfo book;
		try {Set keys = bookItems.keySet();
		int id =Integer.parseInt(bookId);
		if(keys.contains(id)){
			
			bookItem bookItem = bookItems.get(id);
			System.out.println(bookItems+"-----------"+bookId);
			System.out.println("addddddddddddddddddddddddddddd"+bookItem.getNum()+"购物车里已经有该商品");
			bookItem.setNum(bookItem.getNum()+1);
			bookItems.put(Integer.parseInt(bookId), bookItem);

		}else{
			book = bookDAO.findById(bookId);
			bookItem item = new bookItem(book.getBookId(),book.getBookName(),book.getAuthor(),book.getPrice(),1);
			bookItems.put(id, item);
			System.out.println("购物车里还没有该商品");
		}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public void update(String bookId,int num){
		int id = Integer.parseInt(bookId);
		bookItem bookItem = bookItems.get(id);
		bookItem.setNum(num);
		bookItems.put(id, bookItem);
	}
}