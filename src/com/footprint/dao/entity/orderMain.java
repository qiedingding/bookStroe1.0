package com.footprint.dao.entity;

public class orderMain {
	private int oid;
	private int uid;
	private int sumprice;
	private int shtel;
	private String shadd;
	private String shname;
	private String context;
	private int status;
	public int getOid() {
		return oid;
	}
	public void setOid(int oid) {
		this.oid = oid;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public int getSumprice() {
		return sumprice;
	}
	public void setSumprice(int sumprice) {
		this.sumprice = sumprice;
	}
	public int getShtel() {
		return shtel;
	}
	public void setShtel(int shtel) {
		this.shtel = shtel;
	}
	public String getShadd() {
		return shadd;
	}
	public void setShadd(String shadd) {
		this.shadd = shadd;
	}
	public String getShname() {
		return shname;
	}
	public void setShname(String shname) {
		this.shname = shname;
	}
	public String getContext() {
		return context;
	}
	public void setContext(String context) {
		this.context = context;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	@Override
	public String toString() {
		return "orderMain [oid=" + oid + ", uid=" + uid + ", sumprice="
				+ sumprice + ", shtel=" + shtel + ", shadd=" + shadd
				+ ", shname=" + shname + ", context=" + context + ", status="
				+ status + "]";
	}
	public orderMain() {
		super();
	}
	public orderMain(int oid, int uid, int sumprice, int shtel, String shadd,
			String shname, String context, int status) {
		super();
		this.oid = oid;
		this.uid = uid;
		this.sumprice = sumprice;
		this.shtel = shtel;
		this.shadd = shadd;
		this.shname = shname;
		this.context = context;
		this.status = status;
	}
	
}
