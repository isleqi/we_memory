package com.brother.qi.controller;

import java.io.FileNotFoundException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.catalina.connector.Request;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.brother.qi.service.Info;
import com.brother.qi.service.LoadPicture;
import com.brother.qi.service.Search;
import com.sun.javafx.sg.prism.NGShape.Mode;

@Controller
public class PhotoController {
	
	private static final Log logger=LogFactory.getLog(PhotoController.class);
	
   @Autowired
   LoadPicture loadPicture;
   @Autowired
   Info info;
   @Autowired
   Search search;
   
   {
	   
	   System.out.println("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
	   
   }
   
   
 
   ArrayList photo=new ArrayList<>();
	@RequestMapping(value="/she")
	public String  photoshe(HttpServletRequest request,Model model) {
		String year=request.getParameter("year");
		logger.info("!!!!!!!!!!!!!!!!!!!!!!!");
		System.out.println("!!!!!!!!!!!!!!!!!!!!!!!!!!!S");
        if(year==null||year.equals("0"))
		photo=loadPicture.getphoto("/she");
        else {
        	String mon=request.getParameter("mon");
        	photo=loadPicture.getphoto("/she/"+year+"/"+mon);
        }
        String page=request.getParameter("page");
        if(page!=null)
        	model.addAttribute("page",page);
		model.addAttribute("photoname",photo);
		model.addAttribute("path","she");
		return "show";
	}
	
	
	@RequestMapping(value="/we")
	public String  photowe(HttpServletRequest request,Model model) {
		String year=request.getParameter("year");
		logger.info("!!!!!!!!!!!!!!!!!!!!!!!");
		System.out.println("!!!!!!!!!!!!!!!!!!!!!!!!!!!S");
        if(year==null||year.equals("0"))
		photo=loadPicture.getphoto("/we");
        else {
        	String mon=request.getParameter("mon");
        	photo=loadPicture.getphoto("/we/"+year+"/"+mon);
        }
        String page=request.getParameter("page");
        if(page!=null)
        	model.addAttribute("page",page);
		model.addAttribute("photoname",photo);
		model.addAttribute("path","we");
		return "show";
	}
	
	@RequestMapping(value="/works")
	public String  photoworks(HttpServletRequest request,Model model) {
		String year=request.getParameter("year");
		logger.info("!!!!!!!!!!!!!!!!!!!!!!!");
		System.out.println("!!!!!!!!!!!!!!!!!!!!!!!!!!!S");
        if(year==null||year.equals("0"))
		photo=loadPicture.getphoto("/works");
        else {
        	String mon=request.getParameter("mon");
        	photo=loadPicture.getphoto("/works/"+year+"/"+mon);
        }
        String page=request.getParameter("page");
        if(page!=null)
        	model.addAttribute("page",page);
		model.addAttribute("photoname",photo);
		model.addAttribute("path","works");
		return "show";
	}
	
	@RequestMapping(value="/about")
	public String about_() {
		
		return "about";
	}

	
	
	@RequestMapping(value="/picture_info")
	public String picture_info(HttpServletRequest request, Model model) {
		String picture_path=request.getParameter("picture_path");
		model.addAttribute("picture_path",picture_path);
		return "picture_info";
	}
	
	
	@RequestMapping(value="/addinfo")
	public String addinfo(HttpServletRequest request,Model model) {
		
		System.out.println("提交信息中！！！！！！！！！！！！！");
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		String name=request.getParameter("name");
		String value=request.getParameter("value");
		try {
			info.addinfo_(name, value);
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("addinfo错误！！！！！！！！！！！");
		}
		model.addAttribute("picture_path",name);
		return "picture_info";
	}
	
	@RequestMapping(value="/searchphoto")
	public String search_(HttpServletRequest request,Model model) {
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		System.out.println("查找中！！！！！！！！！！！！！！！！！！");
		String in=request.getParameter("search");
		
		ArrayList<String> result=(ArrayList<String>) search.search(in);
		model.addAttribute("result",result);
	      return "result";
	}
	
	
	@RequestMapping(value="/selectphoto")
	public String selectphoto() {
		
		
		return "selectphoto";
	}
	
	@RequestMapping(value="/addphoto")
	public String addphoto(@RequestParam(value="file",required=false) MultipartFile[] file,Model model) {
		
		return "addphoto";
		
	}
	
	
	
	
	
	
	
}
