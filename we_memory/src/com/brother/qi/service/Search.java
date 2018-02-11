package com.brother.qi.service;

import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.brother.qi.dao.Photo_info_dao;
import com.brother.qi.model.Photo_info;

@Service
public class Search {
	/*@Autowired
	Info info;*/

	public ArrayList<String> search(String description) {
		ArrayList<String> ans=new ArrayList<String>();
		String des[]=null;
		//String value=null;
		//int flag=-1;
		if(description!=null) {
		des=description.split(" ");
		}
		for(String d:des) {
			System.out.println(d);
		}
		//int len=0;
		String temp="";
		StringBuffer sql=new StringBuffer("from Photo_info where ");
		sql.append("description like "); 
		for(int i=0;i<des.length;i++) {
			temp="'%"+des[i]+"%'";
			sql.append(temp);
			if(i!=des.length-1)
				sql.append("and description like ");
		}
		
			//Map<String,String> photo=info.loadinfo();
			Photo_info_dao p=(Photo_info_dao)Hibernate_init.cf.getBean("photo");
			 List<Photo_info> list =p.search(sql.toString());
			for(Photo_info photo:list) {
				ans.add(photo.getphotoname());
			}
			/*if(photo!=null) {
				for(String key:photo.keySet()) {
					value=photo.get(key);
					System.out.println(key+"    "+value);
					for(String d:des) {
						flag=value.indexOf(d);
						System.out.println(d+"  "+flag);
						if(flag==-1) 
							break;
						
					}
					if(flag!=-1)
						ans.add(key);
				}
			}*/
	
		return ans;
	}

}
