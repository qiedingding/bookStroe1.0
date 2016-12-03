package com.footprint.dao.entity;

public class orderDetail {
	private int oid;
	private int bookId;
	private String bookName;
	private int bookNum;
	private int bookPrice;
	public int getBookPrice() {
		return bookPrice;
	}
	public void setBookPrice(int bookPrice) {
		this.bookPrice = bookPrice;
	}
	public int getOid() {
		return oid;
	}
	
	public orderDetail() {
		super();
	}
	public orderDetail(int oid, int bookId, String bookName, int bookNum,
			int bookPrice) {
		super();
		this.oid = oid;
		this.bookId = bookId;
		this.bookName = bookName;
		this.bookNum = bookNum;
		this.bookPrice = bookPrice;
	}
	public void setOid(int oid) {
		this.oid = oid;
	}
	public int getBookId() {
		return bookId;
	}
	public void setBookId(int bookId) {
		this.bookId = bookId;
	}
	public String getBookName() {
		return bookName;
	}
	public void setBookName(String bookName) {
		this.bookName = bookName;
	}
	public int getBookNum() {
		return bookNum;
	}
	public void setBookNum(int bookNum) {
		this.bookNum = bookNum;
	}

}
