package com.footprint.lx.struts.gwc;

public class bookItem {
	private String bookId;
	private String bookName;
	private String author;
	private int price;
	private int num;
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
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}

	public bookItem(String bookId, String bookName, String author, int price,
			int num) {
		super();
		this.bookId = bookId;
		this.bookName = bookName;
		this.author = author;
		this.price = price;
		this.num = num;
	}
	public bookItem() {
		super();
	}
	@Override
	public String toString() {
		return "bookItem [bookId=" + bookId + ", bookName=" + bookName
				+ ", author=" + author + ", price=" + price + ", num=" + num
				+ "]";
	}

}
