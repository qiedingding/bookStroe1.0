package com.footprint.dao.entity;

public class admin {
	private int adminId;
	private String name;
	private String pwd;
	private int type;
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}

	public int getAdminId() {
		return adminId;
	}
	public void setAdminId(int adminId) {
		this.adminId = adminId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public admin() {
		super();
	}
	public admin(int adminId, String name, String pwd, int type) {
		super();
		this.adminId = adminId;
		this.name = name;
		this.pwd = pwd;
		this.type = type;
	}
	
	@Override
	public String toString() {
		return "admin [adminId=" + adminId + ", name=" + name + ", pwd=" + pwd
				+ ", type=" + type + "]";
	}


}
