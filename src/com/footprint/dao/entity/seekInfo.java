package com.footprint.dao.entity;

public class seekInfo {
	private int seekId;
	private String seekName;
	private String seekAuthor ;
	private String seekPbName;
	private String seekEmail ;
	private String seekContext;
	public String getSeekName() {
		return seekName;
	}
	public void setSeekName(String seekName) {
		this.seekName = seekName;
	}
	public String getSeekAuthor() {
		return seekAuthor;
	}
	public void setSeekAuthor(String seekAuthor) {
		this.seekAuthor = seekAuthor;
	}
	public String getSeekPbName() {
		return seekPbName;
	}
	public void setSeekPbName(String seekPbName) {
		this.seekPbName = seekPbName;
	}
	public String getSeekEmail() {
		return seekEmail;
	}
	public void setSeekEmail(String seekEmail) {
		this.seekEmail = seekEmail;
	}
	public String getSeekContext() {
		return seekContext;
	}
	public void setSeekContext(String seekContext) {
		this.seekContext = seekContext;
	}
	public int getSeekId() {
		return seekId;
	}
	public void setSeekId(int seekId) {
		this.seekId = seekId;
	}
	public seekInfo(int seekId, String seekName, String seekAuthor,
			String seekPbName, String seekEmail, String seekContext) {
		super();
		this.seekId = seekId;
		this.seekName = seekName;
		this.seekAuthor = seekAuthor;
		this.seekPbName = seekPbName;
		this.seekEmail = seekEmail;
		this.seekContext = seekContext;
	}
	public seekInfo() {
		super();
	}
	@Override
	public String toString() {
		return "seekInfo [seekId=" + seekId + ", seekName=" + seekName
				+ ", seekAuthor=" + seekAuthor + ", seekPbName=" + seekPbName
				+ ", seekEmail=" + seekEmail + ", seekContext=" + seekContext
				+ "]";
	}
	
}
