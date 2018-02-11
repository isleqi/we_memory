package com.brother.qi.service;

import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Service;


public class Hibernate_init {
	public static final ClassPathXmlApplicationContext cf=init();
	private static ClassPathXmlApplicationContext init() {
		return new ClassPathXmlApplicationContext("spring-hibernate.xml");
	}

}
