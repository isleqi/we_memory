package com.brother.qi.service;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.util.*;

import org.springframework.stereotype.Service;


@Service
public class Info {
	 
	String root=System.getProperty("root");
	public void addinfo_(String name,String value) throws FileNotFoundException {
		System.out.println(root);

		Map<String, String> info=this.loadinfo();
		String newvalue="";
		BufferedWriter bwrite=null;
		
		if(info.get(name)==null) {
			newvalue=value;
		}else
		newvalue=info.get(name)+value;
	     info.put(name, newvalue);
	     for(String key:info.keySet()) {
				System.out.println(key+"  "+info.get(key));
			}
			try {
				File f = new File("F:\\Java\\photo\\WebContent\\picture_info.txt");
				OutputStreamWriter write = new OutputStreamWriter(new FileOutputStream(f),"gbk");
				BufferedWriter writer = new BufferedWriter(write);
				if(info.size()!=0)
				for(String key:info.keySet()) {
					writer.write(key+"&"+info.get(key)+"\r\n");
					writer.flush();
				}
				write.close();
				writer.close();
				 
				  System.out.println("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
				}catch (Exception e) {
					// TODO: handle exception
					System.out.println("存图片信息错误！！！！！！！！！！！！！！！！");
				}
			
		

		
		
	}
	
	public Map<String,String> loadinfo() throws FileNotFoundException {  
		BufferedReader load=null;
		String line=null;
		Map<String, String> info=new TreeMap<String,String>(); 
		try {   
			File f = new File("F:\\Java\\photo\\WebContent\\picture_info.txt");
			InputStreamReader reader = new InputStreamReader(  
                    new FileInputStream(f),"gbk");
			load= new BufferedReader(reader);  
		   String[] ans=null;
		   System.out.println("ppppppppppppppppp");  
		while((line=load.readLine())!=null) {
			
			ans=line.split("&");
			info.put(ans[0],ans[1]);
		
			}
		reader.close();
		load.close();

		}catch (Exception e) {
			System.out.println("加载图片描述出错了！！！！！！");
		}
		return info;
		
	}

}
