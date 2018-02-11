package com.brother.qi.dao;
import com.brother.qi.model.*;

import java.util.List;

import org.springframework.context.annotation.Bean;
import org.springframework.orm.hibernate4.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;



public class Photo_info_dao extends HibernateDaoSupport{
	public List search(String sql) {
		return super.getHibernateTemplate().find(sql);
	}
	public Photo_info load(Class p,String photoname) {
		Photo_info photo=(Photo_info)super.getHibernateTemplate().get(p, photoname);
		return photo;
	}
	public void update_info(Photo_info photo) {
		super.getHibernateTemplate().update(photo);
		//super.getHibernateTemplate().flush();
	}
	public void delete_info(String photoname) {
		super.getHibernateTemplate().delete(super.getHibernateTemplate().get(Photo_info.class,photoname));
		//super.getHibernateTemplate().flush();
	}
	public void insert_info(Photo_info photo) {
		
		super.getHibernateTemplate().save(photo);
		//super.getHibernateTemplate().flush();
	}

}
