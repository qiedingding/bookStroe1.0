package com.footprint.dao.entity;

public class BookInfo {
	private String bookId;
	private String bookName;
	private int bookTypeId;
	private String pbName;
	private String author;
	private String context;
	private int price;
	private String smallImg;	
	private String bigImg;
	private String pbDate;
	private int bookIsDelete;
	public int getBookIsDelete() {
		return bookIsDelete;
	}
	public void setBookIsDelete(int bookIsDelete) {
		this.bookIsDelete = bookIsDelete;
	}
	public String getBookId() {
		return bookId;
	}
	public void setBookId(String bookId) {
		this.bookId = bookId;
	}
	public String getBookName() {
		return bookName;
	}
	public void setBookName(String bookName) {
		this.bookName = bookName;
	}
	public int getBookTypeId() {
		return bookTypeId;
	}
	public void setBookTypeId(int bookTypeId) {
		this.bookTypeId = bookTypeId;
	}
	public String getPbName() {
		return pbName;
	}
	public void setPbName(String pbName) {
		this.pbName = pbName;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getContext() {
		return context;
	}
	public void setContext(String context) {
		this.context = context;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getSmallImg() {
		return smallImg;
	}
	public void setSmallImg(String smallImg) {
		this.smallImg = smallImg;
	}
	public String getBigImg() {
		return bigImg;
	}
	public void setBigImg(String bigImg) {
		this.bigImg = bigImg;
	}
	public String getPbDate() {
		return pbDate;
	}
	public void setPbDate(String pbDate) {
		this.pbDate = pbDate;
	}
	@Override
	public String toString() {
		return "BookInfo [bookId=" + bookId + ", bookName=" + bookName
				+ ", bookTypeId=" + bookTypeId + ", pbName=" + pbName
				+ ", author=" + author + ", context=" + context + ", price="
				+ price + ", smallImg=" + smallImg + ", bigImg=" + bigImg
				+ ", pbDate=" + pbDate + ", bookIsDelete=" + bookIsDelete + "]";
	}
	public BookInfo(String bookId, String bookName, int bookTypeId,
			String pbName, String author, String context, int price,
			String smallImg, String bigImg, String pbDate, int bookIsDelete) {
		super();
		this.bookId = bookId;
		this.bookName = bookName;
		this.bookTypeId = bookTypeId;
		this.pbName = pbName;
		this.author = author;
		this.context = context;
		this.price = price;
		this.smallImg = smallImg;
		this.bigImg = bigImg;
		this.pbDate = pbDate;
		this.bookIsDelete = bookIsDelete;
	}
	public BookInfo() {
		super();
	}
	
	
	
	

}
