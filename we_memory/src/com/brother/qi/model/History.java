package com.brother.qi.model;

public class History {
	private String photoname=null;
	private String time=null;
	public History() {
		
	}
    public History(String photoname) {
    	this.photoname=photoname;
	}
	
	public String getphotoname() {
		return photoname;
	}
	public String gettime() {
		return time;
	}
	public void setphotoname(String photoname) {
		this.photoname=photoname;
	}
	public void settime(String time) {
		this.time=time;
	}
}
