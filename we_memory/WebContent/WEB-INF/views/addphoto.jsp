
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

<link rel="stylesheet" href="css/site.css" type="text/css" media="screen, projection"/>
<link rel="stylesheet" href="css/style.css" type="text/css" media="screen, projection"/>
<link rel="stylesheet" type="text/css" href="css/jquery.monthpicker.css" media="screen, projection"/>
<link rel="stylesheet" href="css/screen.css" type="text/css" media="screen, projection"/>
<link rel="stylesheet" href="css/960.css" type="text/css" media="screen, projection"/>
<link rel="stylesheet" href="css/print.css" type="text/css"  media="print"/>
<link rel="stylesheet" href="css/superfish.css" type="text/css"  media="screen, projection"/>
<link rel="stylesheet" href="css/main.css" type="text/css"  media="screen, projection"/>

<style type="text/css">
#sidebar{position: absolute;
margin-left: 825px;
top: 110px;
width: 180px;}

.picture_info{top:20px;margin-left: 280px;position: relative;}

.black_{ display: none; position: absolute; top:0%;width: 100%; height: 100%; background-color: black; z-index:1001; -moz-opacity: 0.8; opacity:.80; filter: alpha(opacity=88); } 
.white_content { 
            display: none; 
            font-size:20px;
            font-weight:bold;
            color:#6b0346;
            text-align:center;
          
            z-index:1002; 
            overflow: auto; 
        } 

</style>

</head>

<body style="position: static;">
<div id="up_before" class="black_"></div>
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
			<div id="title-of-site" class="brown">Brother Qi and Sister Xin</div>
			<div class="nav">
			<ul id="menu-main-menu" class="sf-menu">
			<li id="menu-item-6107" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-6107"><a href="she">She&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
			<li id="menu-item-6107" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-6107"><a href="we">We&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
			<li id="menu-item-6107" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-6107"><a href="works">Works&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
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
          <div class="date" style="display:none" >
            <ul id="ha" >
              <%! String path;%>
              <%path=(String)request.getAttribute("path"); %>
                  <li class="page-collection">
                    <a id="year2015">2015</a>
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
                     <a id="year2016" >2016</a>
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
      <a id="upload"  href="upload">upload</a>
      <a id="recent"  href="recent"> recent</a>
       <a id="search">Search</a>
      <form action="searchphoto">
 <input id="sea" name="search" value="search for description..."  size="32"   type="text" onclick="this.value=''"/>
 </form>
      </ul>
 
  
      
	</div>
	
<div class="picture_info">
<div id="wait" class="white_content" >正在上传，请稍等......</div>
<form id="selectphoto"  method="post" enctype="multipart/form-data" >
<p>选择图片</p>
<input type="file" id="files" name="files" accept=".jpg,.JPG" multiple/>
<p>选择类型</p>
<select id="select_type" name="type" value="she" onchange="_type()">
<option value="she">she</option>
<option value="we">we</option>
<option value="works">works</option>
</select>
<p >选择时间</p>
<div id="selecttime">  
<select  id="select_year" name="year" value="2015">
<option value="2015">2015</option>
<option value="2016">2016</option>
<option value="2017">2017</option>
<option value="2018">2018</option>
</select>
<select id="select_mon" name="mon" value="1">
<option value="1">1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
<option value="5">5</option>
<option value="6">6</option>
<option value="7">7</option>
<option value="8">8</option>
<option value="9">9</option>
<option value="10">10</option>
<option value="11">11</option>
<option value="12">12</option>
</select>

</div>
<p>为他们添加标签</p>
<input type="text" id="desp" name="des" ></input>
<input type="button" value="Submit" onclick="up()" />
</form>
<div style="font-family: Futura,helvetica,arial,sans-serif;font-weight: bold;font-size: 10px;margin-left: 120px;margin-top: 50px;margin-bottom: 20px">❤To my dear Xin by Qi--2017.12.08❤</div>

</div>





</div>

<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script>
//<![CDATA[

		$(document).ready(function(){
			
			$("#search").click(function(){
			    $("#sea").slideToggle("slow");
			  });  
			  $(".adddesc").click(function(){
				    $("#desc").slideToggle("slow");
				  });

			
			});
		function _type(){
			
			var select = document.getElementById("select_type");
			var lastIndex = select.selectedIndex;
			var type = select.options[lastIndex].value; 
            var div=document.getElementById("selecttime");
           if(type=='works'){
                var div=document.getElementById("selecttime");
                div.style.display="none";
                
               }
           else
               div.style.display="";
                   

			}
		 function up(){
			 document.getElementById('up_before').style.display='block';
			 document.getElementById('wait').style.display='block';
	            var form = new FormData(document.getElementById("selectphoto"));
//	             var req = new XMLHttpRequest();
//	             req.open("post", "${pageContext.request.contextPath}/public/testupload", false);
//	             req.send(form);
	            $.ajax({
	                url:"selectphoto",
	                type:"post",
	                data:form,
	                processData:false,
	                contentType:false,
	                success:function(data){
	                	 document.getElementById('up_before').style.display='none';
	        			 document.getElementById('wait').style.display='none';
	                   alert("上传成功！！！！");
	                   window.location.href="recent";
	                   
	                },
	                error: function (e) {
	                    alert("上传失败！！！");
	                }
	            });        
	           
	        }
		
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

			};

	//]]> 

</script>

</body>
</html>
