<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US">
<head profile="http://gmpg.org/xfn/11">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1" /> 
<title>Brother QI</title>
<script type="text/javascript" src="js/jquery.validate.min.js"></script>
<script type="text/javascript" src="js/ImageScroll.js"></script>
<script type="text/javascript" src="js/jqurey.js"></script>
<script src="js/jquery.slideBox.min.js" type="text/javascript"></script>
<script src="js/jquery.min.js" type="text/javascript"></script>
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
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
#scroll{}
</style>
<script>
//<![CDATA[

		$(document).ready(function(){
						  
			  
			  $("#search").click(function(){
				    $("#sea").slideToggle("slow");
				  });
				  
			
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
<div>
<audio  autoplay="auto" controls="controls" loop="loop" style="display:none">
  <source src="music.mp3" type="audio/ogg" />
</audio>
</div>
<div id="page" class="container_24">
	<div id="header">
		<div id="logo">
			<a href=""><img id="logo-image" alt="logo" src="img/logo.jpg"/></a>
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
			
			

</ul>
</div>

</div>
</div>

<div id="sidebar" class="grid_8 last" >



  <div>
<ul id="daoul" >  
<script charset="Shift_JIS" src="http://chabudai.sakura.ne.jp/blogparts/honehoneclock/honehone_clock_wh.js"></script> 
 
<li class="folder-collection" style="margin-left: 50px">
           <a id="time">time</a>

      </li>
      <a id="search">Search</a>
 <form action="searchphoto">
 <input id="sea" name="search" value="search for description..."  size="32"   type="text" onclick="this.value=''"/>
 </form>
      </ul>
 
  </div>
      
	</div>
	

	

	
<!--< div class="photo" style="margin-left: 300px" >
<div id="scroll">
<img  src="picture/1.jpg" style="width: 400px;position: absolute;"></img>
<img  src="picture/8.jpg" style="width: 400px;position: absolute;"></img>
<img  src="picture/2.jpg" style="width: 400px;position: absolute;"></img>
<img  src="picture/3.jpg" style="width: 400px;position: absolute;"></img>
</div>-->



<div class="photo">

<div id="demo1" class="slideBox" style="width: 640px; height: 300px;margin-left: 80px">
  <ul class="items" style="width: 2250px; left: -1920px;">
    <li class="" style="width: 450px; "><img src="picture/1.jpg" style="width:400px"/></li>
    <li class="" style="width: 450px; "><img src="picture/2.jpg" style="width:400px"/></li>
    <li class="" style="width: 450px; "><img src="picture/3.jpg" style="width:400px"/></li>
    <li class="" style="width: 450px;"><img src="picture/4.jpg" style="width:400px"/></li>
        <li class="" style="width: 450px;"><img src="picture/5.jpg" style="width:400px"/></li>
    
  </ul>
  </div>
<div style="font-family: Futura,helvetica,arial,sans-serif;font-weight: bold;font-size: 10px;margin-left: 170px;margin-top: 50px;margin-bottom: 20px">❤To my dear Xin by Qi--2017.12.08❤</div>

</div>


  </div> 




<script src="js/jquery.min.js" type="text/javascript"></script>
<script src="js/jquery.slideBox.min.js" type="text/javascript"></script>
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

</body>
</html>
>