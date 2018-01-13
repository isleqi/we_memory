
<%@page import="org.apache.catalina.connector.Request"%>
<%@page import="org.springframework.web.context.request.RequestScope"%>
<%@page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US">
<head profile="http://gmpg.org/xfn/11">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1" /> 
<title>Brother QI</title>
<script type="text/javascript" src="js/jquery.validate.min.js"></script>
<script type="text/javascript" src="js/jquery.columnizer.js"></script>
<script type="text/javascript" src="js/wpgform.js"></script>
<script type="text/javascript" src="js/devicepx-jetpack.js"></script>
<script type="text/javascript" src="js/analytics.js"></script>
<script type="text/javascript" src="js/common-809928c868e83ccb540a-min.en-US.js"></script>
<script type="text/javascript" src="js/hahaha.js"></script>
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<link rel="stylesheet" href="css/site.css" type="text/css" media="screen, projection"/>
<link rel="stylesheet" href="css/style.css" type="text/css" media="screen, projection"/>

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
<script>
//<![CDATA[

		$(document).ready(function(){
			 
			});

		
		window.onscroll=function(e){
			var e =e || window.event;
			var t = document.documentElement.scrollTop || document.body.scrollTop; 
		    var top_div = document.getElementById( "sidebar" );
		   if(t>50)
		  {top_div.style.position="fixed";
		  top_div.style.top="30px";}
		   else
			   {
			   top_div.style.position="";
				  top_div.style.top="110px";
			   }

			}

	//]]> 

</script>
</head>

<body style="position: static;">

<div id="page" class="container_24">
	<div id="header">
		<div id="logo">
			<a href="we_memory.jsp"><img id="logo-image" alt="logo" src="img/logo.jpg"/></a>
			<div class="brown" style="position: fixed ;margin-left: 50px;top:150px;font-size: 20px;font-weight: bold;font-family: Futura,helvetica,arial,sans-serif;">
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
			<div id="title-of-site" class="brown">Brother Qi and Sister Xin</div>
			<div class="nav">
			<ul id="menu-main-menu" class="sf-menu">
			<li id="menu-item-6107" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-6107"><a href="she?page=0">She&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
			<li id="menu-item-6107" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-6107"><a href="we?page=0">We&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
			<li id="menu-item-6107" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-6107"><a href="works?page=0">Works&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
			<li id="menu-item-6107" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-6107"><a href="http://m.blog.csdn.net/twoonenew">Blog&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
			<li id="menu-item-6107" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-6107"><a href="about">About&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
			
			

</ul></div>
</div>
</div>

<div id="sidebar" class="grid_8 last" >



 
<ul id="daoul" >  
<script charset="Shift_JIS" src="http://chabudai.sakura.ne.jp/blogparts/honehoneclock/honehone_clock_wh.js"></script> 
 
<li class="folder-collection" style="margin-left: 50px">

           <a id="time">time</a>
          <div class="date" style="display: none" >
            <ul id="ha" >
              <%! String path;%>
              <%path=(String)request.getAttribute("path"); %>
                  <li class="page-collection">
                    <a id="year2015" >2015</a>
                    <ul id="mon2015" style="display: none">
                    <li><a href=<%=path+"?year=2015&mon=1"%>>1</a></li>
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
                
                  <li class="page-collection">
                     <a id="year2016"  >2016</a>
                    <ul id="mon2016" style="display: none">
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
                
                  <li class="page-collection">
                     <a id="year2017"  >2017</a>
                     <ul id="mon2017" style="display: none">
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
                
                 
            </ul>
        
         
          </div>

      </li>
      
        <a id="search">Search</a>
      <form action="searchphoto">
 <input id="sea" name="search" value="search for description..."  size="32"   type="text" onclick="this.value=''"/>
 </form>
      
      </ul>
 
  
      
	</div>
<div class="photo">

<div style="font-family: Futura,helvetica,arial,sans-serif;font-weight: bold;font-size: 15px;white-space:pre;">
       致亲爱的欣：
              不知不觉又到了8号，不过这次不同的是这个是12月的8号，这意味
              着什么呢，没错，我们已经在一起一年了！去年的今天我迈出了重
              要的一步，鼓起勇气向你告白，那一晚的情景历历在目。。。。时间
              过的真快，转眼就过去一年了，这一年是不同寻常的一年，这一年我
              们一起做过很多事，去过一些地方，有过很多回忆，但是我总是忘记
              一些的东西，我怕我以后会忘记的更多，所以！我用“春天”为我们搭
              了一个网站，属于我们的网站。上面保存着我们的回忆，这下再也不
              会忘记了。不过。。这还不是它的完全体，截止2017.12.08   00:00
              我们的网站实现了部分功能，在以后的日子里，我会继续开发和维护
              它，继续添加一些功能。爱你哦。。。。。
                                           
                                           
                                                                                          by brother qi
                                                                                                2017.12.08  00:03

</div>

<div style="font-family: Futura,helvetica,arial,sans-serif;font-weight: bold;font-size: 10px;margin-left: 170px;margin-top: 50px;margin-bottom: 20px">❤To my dear Xin by Qi--2017.12.08❤</div>

</div>


	</div>




</body>
</html>
