package com.brother.qi.service;

import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class Search {
	@Autowired
	Info info;
	public ArrayList<String> search(String description) {
		ArrayList<String> ans=new ArrayList<String>();
		String des[]=null;
		String value=null;
		int flag=-1;
		if(description!=null) {
		des=description.split(" ");
		}
		for(String d:des) {
			System.out.println(d);
		}
		int len=0;
		try {
			Map<String,String> photo=info.loadinfo();
			if(photo!=null) {
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
			}
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ans;
	}

}
