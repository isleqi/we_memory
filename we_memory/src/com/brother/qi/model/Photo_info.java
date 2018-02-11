package com.brother.qi.model;

import java.io.Serializable;


public class Photo_info implements Serializable{
	private String photoname=null;
	private String description=null;
	public Photo_info() {
		
	}
    public Photo_info(String photoname) {
    	this.photoname=photoname;
	}
	public Photo_info(String photoname,String description) {
		this.photoname=photoname;
		this.description=description;
	}
	public String getphotoname() {
		return photoname;
	}
	public String getdescription() {
		return description;
	}
	public void setphotoname(String photoname) {
		this.photoname=photoname;
	}
	public void setdescription(String descrition) {
		this.description=descrition;
	}
}
