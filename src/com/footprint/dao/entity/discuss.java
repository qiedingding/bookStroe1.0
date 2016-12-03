package com.footprint.dao.entity;

public class discuss {
	private int disId;
	private int bookId;
	private int cusromerId;
	private String context;
	private int states;
	public int getDisId() {
		return disId;
	}
	public void setDisId(int disId) {
	 	this.disId = disId;
	}
	public int getBookId() {
		return bookId;
	}
	public void setBookId(int bookId) {
		this.bookId = bookId;
	}
	public int getCusromerId() {
		return cusromerId;
	}
	public void setCusromerId(int cusromerId) {
		this.cusromerId = cusromerId;
	}
	public String getContext() {
		return context;
	}
	public void setContext(String context) {
		this.context = context;
	}
	public int getStates() {
		return states;
	}
	public void setStates(int states) {
		this.states = states;
	}
	public discuss(int disId, int bookId, int cusromerId, String context,
			int states) {
		super();
		this.disId = disId;
		this.bookId = bookId;
		this.cusromerId = cusromerId;
		this.context = context;
		this.states = states;
	}
	public discuss() {
		super();
	}
	@Override
	public String toString() {
		return "discuss [disId=" + disId + ", bookId=" + bookId
				+ ", cusromerId=" + cusromerId + ", context=" + context
				+ ", states=" + states + "]";
	}
	

}
