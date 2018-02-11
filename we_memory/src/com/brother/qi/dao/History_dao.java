package com.brother.qi.dao;

import java.util.List;

import org.springframework.orm.hibernate4.support.HibernateDaoSupport;

import com.brother.qi.model.History;
import com.brother.qi.model.Photo_info;

public class History_dao extends HibernateDaoSupport{
	public List search(String sql) {
		return super.getHibernateTemplate().find(sql);
	}
	public History load(Class p,String photoname) {
		History photo=(History)super.getHibernateTemplate().get(p, photoname);
		return photo;
	}
	public void delete_info(String photoname) {
		History photo=super.getHibernateTemplate().get(History.class,photoname);
		if(photo!=null)
		super.getHibernateTemplate().delete(photo);
		//super.getHibernateTemplate().flush();
	}
}
