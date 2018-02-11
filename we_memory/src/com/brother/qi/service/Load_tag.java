package com.brother.qi.service;

import java.util.List;

import com.brother.qi.dao.Photo_info_dao;
import com.brother.qi.model.Photo_info;

public class Load_tag {
	String path;
	public Load_tag(String path) {
		this.path=path;
	}
	
	public  Photo_info load() {
	Photo_info_dao p=(Photo_info_dao)Hibernate_init.cf.getBean("photo");
	
	Photo_info photo=p.load(Photo_info.class, path);
          return photo;
	}
}
