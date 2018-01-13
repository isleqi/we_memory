package com.brother.qi.service;

import java.io.File;
import java.util.ArrayList;

import javax.swing.JFileChooser;
import javax.swing.JLabel;

public class Addphoto {
	
	public ArrayList selectphoto() {
		ArrayList photo=new ArrayList();
		JFileChooser choose= new JFileChooser();
		choose.setMultiSelectionEnabled(true);
		choose.setDialogTitle("select your photo");
		int result=choose.showOpenDialog(null);
		if(result == JFileChooser.APPROVE_OPTION) {
			File[] path=choose.getSelectedFiles();
			if(path!=null)
               for(int i=0;i<path.length;i++) {
            	   photo.add(path.toString());
               }
	
		}
		return photo;
	}
	
}
