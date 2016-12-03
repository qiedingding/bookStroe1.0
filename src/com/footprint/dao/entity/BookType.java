package com.footprint.dao.entity;

public class BookType {
	private int bookTypeId;
	private int parentId;
	private	String bookTypeName;
	private String context;
	private int typeIsDelete;
	public int getTypeIsDelete() {
		return typeIsDelete;
	}
	public void setTypeIsDelete(int typeIsDelete) {
		this.typeIsDelete = typeIsDelete;
	}
	public int getBookTypeId() {
		return bookTypeId;
	}
	public void setBookTypeId(int bookTypeId) {
		this.bookTypeId = bookTypeId;
	}
	public int getParentId() {
		return parentId;
	}
	public void setParentId(int parentId) {
		this.parentId = parentId;
	}
	public String getBookTypeName() {
		return bookTypeName;
	}
	public void setBookTypeName(String bookTypeName) {
		this.bookTypeName = bookTypeName;
	}
	public String getContext() {
		return context;
	}
	public void setContext(String context) {
		this.context = context;
	}
	public BookType(int bookTypeId, int parentId, String bookTypeName,
			String context, int typeIsDelete) {
		super();
		this.bookTypeId = bookTypeId;
		this.parentId = parentId;
		this.bookTypeName = bookTypeName;
		this.context = context;
		this.typeIsDelete = typeIsDelete;
	}
	public BookType() {
		super();
	}
	@Override
	public String toString() {
		return "BookType [bookTypeId=" + bookTypeId + ", parentId=" + parentId
				+ ", bookTypeName=" + bookTypeName + ", context=" + context
				+ ", typeIsDelete=" + typeIsDelete + "]";
	}

	
}
