package com.brother.qi.service;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;

import javax.imageio.ImageIO;
import javax.imageio.stream.ImageOutputStream;

import net.coobird.thumbnailator.Thumbnails;

public class Yasuo { 
	 public void compress(Object[] objects) {
		 for(Object file:objects) {
			 String temp=file.toString().substring(file.toString().indexOf("/"));
  		   temp="temp"+temp;
  		 try {
			Thumbnails.of("F:/"+file.toString()).scale(1f).outputQuality(0.25f).toFile("F:/"+temp);
		} catch (IOException e) {
			 File cmykJPEGFile = new File("F:/"+file.toString());
	            try {
	                BufferedImage image = ImageIO.read(cmykJPEGFile);
	                ImageOutputStream output = ImageIO.createImageOutputStream("F:/"+temp);
	                if (!ImageIO.write(image, "jpg", output)) { 
	                   System.out.println("-----cmyk转化异常:{}-----");
	                }
	                Thumbnails.of(image).scale(0.25f).toFile("F:/"+temp);
	                
	            } catch (IOException e1) {
	            	
	            }
		}
		 }
		
     }
}
