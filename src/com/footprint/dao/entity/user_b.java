package com.footprint.dao.entity;

public class user_b {
	private int customerId;
	private int tel;
	private String address;
	private int sex;
	private int age;
	private int qq;
	public user_b(int customerId, int tel, String address, int sex, int age,
			int qq) {
		super();
		this.customerId = customerId;
		this.tel = tel;
		this.address = address;
		this.sex = sex;
		this.age = age;
		this.qq = qq;
	}
	public user_b() {
		super();
	}
	public int getCustomerId() {
		return customerId;
	}
	public void setCustomerId(int customerId) {
		this.customerId = customerId;
	}
	public int getTel() {
		return tel;
	}
	public void setTel(int tel) {
		this.tel = tel;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getSex() {
		return sex;
	}
	public void setSex(int sex) {
		this.sex = sex;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public int getQq() {
		return qq;
	}
	public void setQq(int qq) {
		this.qq = qq;
	}
	@Override
	public String toString() {
		return "user_b [customerId=" + customerId + ", tel=" + tel
				+ ", address=" + address + ", sex=" + sex + ", age=" + age
				+ ", qq=" + qq + "]";
	}
	
}
