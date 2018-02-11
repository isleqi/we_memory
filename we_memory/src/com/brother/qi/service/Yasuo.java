package com.brother.qi.service;

import java.io.IOException;

import net.coobird.thumbnailator.Thumbnails;

public class Yasuo {
	 public void compress(Object[] objects) {
		 for(Object file:objects) {
			 String temp=file.toString().substring(file.toString().indexOf("/"));
  		   temp="temp"+temp;
  		 try {
			Thumbnails.of("F:/"+file.toString()).scale(1f).outputQuality(0.25f).toFile("F:/"+temp);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 }
		
     }
}
