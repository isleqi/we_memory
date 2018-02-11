package com.brother.qi.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.nio.channels.FileChannel;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.connector.Request;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

import com.brother.qi.dao.History_dao;
import com.brother.qi.dao.Photo_info_dao;
import com.brother.qi.model.History;
import com.brother.qi.model.Photo_info;
import com.brother.qi.model.Rusult_photo;
import com.brother.qi.service.Hibernate_init;
import com.brother.qi.service.Info;
import com.brother.qi.service.LoadPicture;
import com.brother.qi.service.Search;
import com.brother.qi.service.Yasuo;
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
   Photo_info_dao p=(Photo_info_dao)Hibernate_init.cf.getBean("photo");
     History_dao h=(History_dao)Hibernate_init.cf.getBean("history");

   {
	   
	   System.out.println("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
	   
   }
   
   
 
   ArrayList photo=new ArrayList<>();
   @RequestMapping(value="show",method=RequestMethod.POST)
   @ResponseBody
   public ArrayList showPhoto(String path) {
	   loadPicture.getphoto(path);
	   return photo;
   }
   
   
   
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
		return "redirect:picture_info";
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
	
	
	
	String root="F:\\";
	@RequestMapping(value="/selectphoto")
	public String  selectphoto  (@RequestParam("files") MultipartFile[] files,HttpServletRequest request,Model model, RedirectAttributes redirectAttributes) throws IllegalStateException, IOException{
		String  year=request.getParameter("year");
		String mon=request.getParameter("mon");
		String type=request.getParameter("type");
		     
		//String root=System.getProperty("root");
        
		
		try {
		ArrayList selectphoto = new ArrayList<>();
		String des=request.getParameter("des");
		System.out.println(des);
		if(files!=null && files.length>0){  
            //循环获取file数组中得文件  
            for(int i = 0;i<files.length;i++){  
                MultipartFile file = files[i];  
                String uuid = UUID.randomUUID().toString().replaceAll("-",""); 
                String path="picture/"+type+"/"+year+"/"+mon+"/"+uuid+".jpg";
                
                    //获取存取路径
                    String filePath =root+path;  
                    File f1=new File(filePath);
                    file.transferTo(f1);
                    selectphoto.add(path);
       
                    Photo_info photo=new Photo_info(path);
                    if(!des.equals(""))
                    photo.setdescription(des);
                    p.insert_info(photo);
                   
                    //System.out.println(p.load(Photo_info.class, path).getdescription());
                    
                    
                    
            }    
		}
		Yasuo c=new Yasuo();
		c.compress(selectphoto.toArray());
		model.addAttribute("photoname",selectphoto);
		}catch (Exception e) {
			// TODO: handle exception
			return "recent";
		}
		return "you_upload";
	}

	@RequestMapping(value="/upload")
	public String addphoto(HttpServletRequest request,Model model) {
		return "addphoto";
		
	}
	@RequestMapping(value="/delect")
	@ResponseBody
	public void delectphoto(HttpServletRequest request) {
		String path=request.getParameter("path");
		File file=new File(root+path);
		
		  String temp=path.substring(path.indexOf("/"));
		   temp="temp"+temp;
		File file2=new File(root+temp);
		if (file2.isFile() && file2.exists()) 
	        file2.delete();
		if (file.isFile() && file.exists()) {  
	        file.delete();
	        h.delete_info(path);
	        p.delete_info(path);
	        
	    }  
		
	}
	
	@RequestMapping(value="/recent")
	public String recent(Model model) {
		List<History> photo=(List<History>) h.search("from History");
		ArrayList<String > photoname=new ArrayList<>();
		 for(History h:photo)
			 photoname.add(h.getphotoname());
		     model.addAttribute("photoname",photoname);
		return "show";
	}
	
	
	
	
	
	
	
}
