package com.footprint.dao.entity;

public class user_a {
	private int customerId;
	private String customerName;
	private String pwd;
	public int getCustomerId() {
		return customerId;
	}
	public void setCustomerId(int customerId) {
		this.customerId = customerId;
	}
	public String getCustomerName() {
		return customerName;
	}
	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public user_a(int customerId, String customerName, String pwd) {
		super();
		this.customerId = customerId;
		this.customerName = customerName;
		this.pwd = pwd;
	}
	public user_a() {
		super();
	}
	@Override
	public String toString() {
		return "user_a [customerId=" + customerId + ", customerName="
				+ customerName + ", pwd=" + pwd + "]";
	}

}
