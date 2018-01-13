package com.brother.qi.service;

import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class LoadPicture {
	
	public ArrayList getphoto(String path){
		String root=System.getProperty("root");
		System.out.println(root);
		path="picture"+path+"/";
		File f=new File(root+path);
		File[] fil=f.listFiles();
		String[] picture=null; 
		File[] fil2=null;
		ArrayList name=new ArrayList();
		StringBuffer temp=new StringBuffer("");
		int string_len=0;
		for(int i=0;i<fil.length;i++) {
			if(fil[i].isDirectory()) {
				fil2=fil[i].listFiles();
				for(int j=0;j<fil2.length;j++) {
					picture=fil2[j].list();
					for(int k=0;k<picture.length;k++) {
						temp.append(path).append(fil[i].getName()).append("/").append(fil2[j].getName()).append("/").append(picture[k]);
						//picture[k]=path+fil[i].getName()+"/"+fil2[j].getName()+"/"+picture[k];
						picture[k]=temp.toString();
						string_len=temp.length();
                        temp.delete(0, string_len);					  
						}
					if(picture!=null)
					name.addAll(Arrays.asList(picture));
					}
				}
		
			else
				{
				temp.append(path).append(fil[i].getName());
				 // name.add(path+fil[i].getName());
				name.add(temp.toString());
				string_len=temp.length();
                temp.delete(0, string_len);		
				}
		}
		return name;
		
	}
	
	

}
