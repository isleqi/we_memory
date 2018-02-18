<%@page import="org.apache.catalina.connector.Request"%>
<%@page import="org.springframework.web.context.request.RequestScope"%>
<%@page import="java.util.*"%>
<%@page import="com.brother.qi.service.Pagenum" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US">
<head profile="http://gmpg.org/xfn/11">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1" /> 
<title>Brother QI</title>

<link rel="stylesheet" href="css/site.css" type="text/css" media="screen, projection"/>
<link rel="stylesheet" href="css/style.css" type="text/css" media="screen, projection"/>
<link href="css/jquery.slideBox.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" href="css/screen.css" type="text/css" media="screen, projection"/>
<link rel="stylesheet" href="css/960.css" type="text/css" media="screen, projection"/>
<link rel="stylesheet" href="css/print.css" type="text/css"  media="print"/>
<link rel="stylesheet" href="css/superfish.css" type="text/css"  media="screen, projection"/>
<style type="text/css">
#sidebar
{position: absolute;
margin-left: 825px;
top: 110px;
width: 180px;}
}
</style>

</head>

<body style="position: static;">

<div id="page" class="container_24">
	<div id="header">
		<div id="logo">
			<a href="we_memory.jsp"><img id="logo-image" alt="logo" src="img/logo.jpg"/></a>
			<div class="brown" style="padding: 5px 5px 5px 5px;position: fixed ;margin-left:50px;top :150px;font-size: 20px;font-weight: bold;font-family: Futura,helvetica,arial,sans-serif;">
<% 
Calendar start=Calendar.getInstance();
Calendar current=Calendar.getInstance();
start.set(2016,12-1,8);
long s=start.getTimeInMillis();
long c=current.getTimeInMillis();
long day=(c-s)/(24 * 60 * 60 * 1000);
out.write(day+"days");
%>
</div>
			<!-- <div id="demo1" class="slideBox" >
  <ul class="items" style="width: 3200px; left: -1920px;">
    <li class="" style="width: 100px; "><img src="picture/me.jpg" style="width:90px"/></li>
    <li class="" style="width: 100px; "><img src="picture/love.jpg" style="width:90px"/></li>
    <li class="" style="width: 100px; "><img src="picture/you.jpg" style="width:90px"/></li>
  </ul>
  </div> -->
			<div id="title-of-site" class="brown">Brother Qi and Sister Xin</div>
			<div class="nav">
			<ul id="menu-main-menu" class="sf-menu">
			<li id="menu-item-6107" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-6107"><a href="she">She&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
			<li id="menu-item-6107" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-6107"><a href="we">We&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
			<li id="menu-item-6107" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-6107"><a href="works">Works&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
			<li id="menu-item-6107" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-6107"><a href="http://m.blog.csdn.net/twoonenew">Blog&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
			<li id="menu-item-6107" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-6107"><a href="about">About&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
			
			

</ul>
</div>
</div>
</div>

<div id="sidebar" class="grid_8 last" >


 <%! String path;%>
              <%path=(String)request.getAttribute("path"); %>
 <div>
<ul id="daoul" >  
<script charset="Shift_JIS" src="http://chabudai.sakura.ne.jp/blogparts/honehoneclock/honehone_clock_wh.js"></script> 
 <div class="date">
              <a id=<%if(path==null) out.write("time2"); else out.write("time"); %> style="margin-left: 50px;color: black;font-weight: bold;font-size: 25px">time</a>
 <ul id="made" style="display: none;">
       <li >
          <a id="year2015" style="color: black;margin-left: 25px;font-weight: bold;">2015</a> 
                <ul id="mon2015" style="display: none;color: black;">
                    <li ><a href=<%=path+"?year=2015&mon=1"%>>1</a></li>
                    <li><a href=<%=path+"?year=2015&mon=2"%>>2</a></li>
                    <li><a href=<%=path+"?year=2015&mon=3"%>>3</a></li>
                    <li><a href=<%=path+"?year=2015&mon=4"%>>4</a></li>
                    <li><a href=<%=path+"?year=2015&mon=5"%>>5</a></li>
                    <li><a href=<%=path+"?year=2015&mon=6"%>>6</a></li>
                    <li><a href=<%=path+"?year=2015&mon=7"%>>7</a></li>
                    <li><a href=<%=path+"?year=2015&mon=8"%>>8</a></li>
                    <li><a href=<%=path+"?year=2015&mon=9"%>>9</a></li>
                    <li><a href=<%=path+"?year=2015&mon=10"%>>10</a></li>
                    <li><a href=<%=path+"?year=2015&mon=11"%>>11</a></li>
                    <li><a href=<%=path+"?year=2015&mon=12"%>>12</a></li>
                    
                   </ul>

        </li>
         <li>
         
    <a id="year2016" style="color: black;margin-left: 25px;font-weight: bold;" >2016</a> 
                <ul id="mon2016" style="color: black;display: none">
                    <li><a href=<%=path+"?year=2016&mon=1"%>>1</a></li>
                    <li><a href=<%=path+"?year=2016&mon=2"%>>2</a></li>
                    <li><a href=<%=path+"?year=2016&mon=3"%>>3</a></li>
                    <li><a href=<%=path+"?year=2016&mon=4"%>>4</a></li>
                    <li><a href=<%=path+"?year=2016&mon=5"%>>5</a></li>
                    <li><a href=<%=path+"?year=2016&mon=6"%>>6</a></li>
                    <li><a href=<%=path+"?year=2016&mon=7"%>>7</a></li>
                    <li><a href=<%=path+"?year=2016&mon=8"%>>8</a></li>
                    <li><a href=<%=path+"?year=2016&mon=9"%>>9</a></li>
                    <li><a href=<%=path+"?year=2016&mon=10"%>>10</a></li>
                    <li><a href=<%=path+"?year=2016&mon=11"%>>11</a></li>
                    <li><a href=<%=path+"?year=2016&mon=12"%>>12</a></li>
                    
                   </ul>

        </li>
        <li>
<a id="year2017" style="color: black;margin-left: 25px;font-weight: bold;" >2017</a> 
                <ul id="mon2017" style="color: black;display: none">
                    <li><a href=<%=path+"?year=2017&mon=1"%>>1</a></li>
                    <li><a href=<%=path+"?year=2017&mon=2"%>>2</a></li>
                    <li><a href=<%=path+"?year=2017&mon=3"%>>3</a></li>
                    <li><a href=<%=path+"?year=2017&mon=4"%>>4</a></li>
                    <li><a href=<%=path+"?year=2017&mon=5"%>>5</a></li>
                    <li><a href=<%=path+"?year=2017&mon=6"%>>6</a></li>
                    <li><a href=<%=path+"?year=2017&mon=7"%>>7</a></li>
                    <li><a href=<%=path+"?year=2017&mon=8"%>>8</a></li>
                    <li><a href=<%=path+"?year=2017&mon=9"%>>9</a></li>
                    <li><a href=<%=path+"?year=2017&mon=10"%>>10</a></li>
                    <li><a href=<%=path+"?year=2017&mon=11"%>>11</a></li>
                    <li><a href=<%=path+"?year=2017&mon=12"%>>12</a></li>
                    
                   </ul>

        </li>
         <li>
<a id="year2018" style="color: black;margin-left: 25px;font-weight: bold;" >2018</a> 
                <ul id="mon2018" style="color: black;display: none">
                    <li><a href=<%=path+"?year=2018&mon=1"%>>1</a></li>
                    <li><a href=<%=path+"?year=2018&mon=2"%>>2</a></li>
                    <li><a href=<%=path+"?year=2018&mon=3"%>>3</a></li>
                    <li><a href=<%=path+"?year=2018&mon=4"%>>4</a></li>
                    <li><a href=<%=path+"?year=2018&mon=5"%>>5</a></li>
                    <li><a href=<%=path+"?year=2018&mon=6"%>>6</a></li>
                    <li><a href=<%=path+"?year=2018&mon=7"%>>7</a></li>
                    <li><a href=<%=path+"?year=2018&mon=8"%>>8</a></li>
                    <li><a href=<%=path+"?year=2018&mon=9"%>>9</a></li>
                    <li><a href=<%=path+"?year=2018&mon=10"%>>10</a></li>
                    <li><a href=<%=path+"?year=2018&mon=11"%>>11</a></li>
                    <li><a href=<%=path+"?year=2018&mon=12"%>>12</a></li>
                    
                   </ul>

        </li>
       
 </ul>
 
 </div>
      <a id="upload"  href="upload">upload</a>
      <a id="recent"  href="recent"> recent</a>
       <a id="search">Search</a>
 <form action="searchphoto">
 <input id="sea" name="search" value="search for description..."  size="32"   type="text" onclick="this.value=''"/>
      </ul>
 
  </div>
      
	</div>
<div class="photo">
	</div>

<div id="pageEnd" style="margin-top:2300px;margin-left: 360px;font-family: Futura,helvetica,arial,sans-serif;font-weight: bold;font-size: 20px;text-decoration: none">
</div>
<div style="font-family: Futura,helvetica,arial,sans-serif;font-weight: bold;font-size: 10px;margin-left: 420px;margin-top: 50px;margin-bottom: 50px">❤To my dear Xin by Qi--2017.12.08❤</div>

	</div>
<script type="text/javascript" src="js/jquery.validate.min.js"></script>
<script type="text/javascript" src="js/ImageScroll.js"></script>
<script type="text/javascript" src="js/jqurey.js"></script>
<script src="js/jquery.slideBox.min.js" type="text/javascript"></script>
<script src="js/jquery.min.js" type="text/javascript"></script>
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="js/jquery.min.js" type="text/javascript"></script>
<script src="js/jquery.slideBox.min.js" type="text/javascript"></script>
<script>
//<![CDATA[
		$(document).ready(function(){
	          
			
			$("#search").click(function(){
			    $("#sea").slideToggle("slow");
			  });  
			
			 $("#year2015").click(function(){
			    $("#mon2015").slideToggle("slow");
			  });
			  $("#year2016").click(function(){
				    $("#mon2016").slideToggle("slow");
				  });
			  $("#year2017").click(function(){
				    $("#mon2017").slideToggle("slow");
				  });
			  $("#year2018").click(function(){
				    $("#mon2018").slideToggle("slow");
				  });
			 
			  $("#time").click(function(){
				    $("#made").slideToggle("slow");
				  }); 
			  jiazai();
			  
			});
		  window.onbeforeunload=jiazai();
			 
		 function jiazai(){
	         
	         $.ajax({
	         type: "post", 
	         url:"gethistory",
	         dataType: "json", 
	         success: function(data){
	             num=data.length;
	             photo=data;
	             var curHash = window.location.hash.replace("#","");
	             if(curHash){
	            		window.location.hash=curHash;
	                                fen_ye(curHash);
	                	  }else{window.location.hash=1;
	                   fen_ye(1);}
	             }
	             });
	              
	              }
	         var pageSize=21;
	         var currentPage=1;
	         var pageCount=1;
	         
	          function fen_ye(pageStr){
	             
	             currentPage=Number(pageStr);
	             if(currentPage==0)
	                 currentPage=1;
	             currentPage=(currentPage>pageCount)? pageCount:currentPage;
	             var start=(currentPage-1)*pageSize;
	             var end=currentPage*pageSize;
	             var size=parseInt(num/pageSize);
	             if(num%pageSize)
	                 size++;
	             pageCount=size;
	             end=(end>num)? num:end;
	           
	             var divone="<div class='one'>";
	             var divtwo="<div class='two'>";
	             var divthree="<div class='three'>";
	         
	             for(var i=start;i<end;i++){
	                 var temp=photo[i];
	            	 temp=temp.substring(temp.indexOf("/"));
	            	 temp="temp"+temp;
	            	
	                 if(i%3==0){
	                	 divone=divone+"<a target=\"_blank\" href=\"picture_info?picture_path="+photo[i]+"\">"+"<img src=\""+temp+"\">"+"</img>"+"</a>";
	                     }
	                 else if(i%3==1){
	                	 divtwo=divtwo+"<a target=\"_blank\" href=\"picture_info?picture_path="+photo[i]+"\">"+"<img src=\""+temp+"\">"+"</img>"+"</a>";
	                     }
	                 else
	                	 divthree=divthree+"<a target=\"_blank\" href=\"picture_info?picture_path="+photo[i]+"\">"+"<img src=\""+temp+"\">"+"</img>"+"</a>";
	                 
	               var  divphoto=divone+"</div>"+divtwo+"</div>"+divthree+"</div>";
	                 
	                 $(".photo").html(divphoto);
	             }
	             
	             var tempStr = "<div class=\"brown\" >"+"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;共"+num+"条记录    当前第"+currentPage+"页<br><tr><td id=\"daohan\" >";
	            
	           tempStr+="<a href=\"javascript:scrollTo(0,0);\" data-id=\"1\" class=\"brown mao\" style=\"text-decoration: none\" onClick=fen_ye(1)>----------first&nbsp;&nbsp;</a>";
	           tempStr+="<a  href=\"javascript:scrollTo(0,0);\" data-id="+(currentPage-1)+" class=\"brown mao\" style=\"text-decoration: none\" onClick=fen_ye("+(currentPage-1)+")>pre&nbsp;&nbsp;</a>";
	           tempStr+="<a href=\"javascript:scrollTo(0,0);\"  data-id="+(currentPage+1)+" class=\"brown mao\" style=\"text-decoration: none\" onClick=fen_ye("+(currentPage+1)+")>next&nbsp;&nbsp;</a>";
	           tempStr+="<a  href=\"javascript:scrollTo(0,0);\" data-id="+pageCount+"       class=\"brown mao\" style=\"text-decoration: none\" onClick=fen_ye("+pageCount+")>last----------</a></td></tr></div>";
	             $("#pageEnd").html(tempStr);
	              }
	         
	          function onHashChange(){        	    
	        	  var curHash = window.location.hash.replace("#","");
	        	  if(curHash){
	                            fen_ye(curHash);
	            	  }
	        	}
	          window.onhashchange = onHashChange;

	      	$(document).delegate('.mao',"click",function(){
	      		
	    	    var id = $(this).attr("data-id");
	      	    
	      	    window.location.hash = id;
	      	});
	      	
		window.onscroll=function(e){
			var e =e || window.event;
			var t = document.documentElement.scrollTop || document.body.scrollTop; 
		    var top_div = document.getElementById( "sidebar" );
		    var top_=document.getElementById( "demo1" );
		   if(t>50)
		  {top_div.style.position="fixed";
		  top_div.style.top="30px";
		
		  }
		   else
			   {
			   top_div.style.position="";
				  top_div.style.top="110px";
				  
			   }
			}
	//]]> 
</script>

<script>
	jQuery(function($){
	
		$('#demo1').slideBox({
			direction : 'left',
			duration : 0.3,
			easing : 'swing',//swing,linear//滚动特效
			delay : 3,
			hideClickBar : true,
			hideBottomBar : true
		});
		
	});
	
</script>
<div>
<audio  autoplay="auto" controls="controls" loop="loop" style="display:none">
  <source src="music.mp3" type="audio/ogg" />
</audio>
</div>
</body>
</html>