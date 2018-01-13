 
(function($){ 
$.fn.ImageScroll = function(options) { 
var defaults = { 
delay: 2000, 
maskOpacity: 0.6, 
numOpacity: 0.6, 
maskBgColor: "#000", 
textColor: "#fff", 
numColor: "#fff", 
numBgColor: "#000", 
alterColor: "#fff", 
alterBgColor: "#999" 
}; 
options = $.extend(defaults, options); 
var _this = $(this).css("display", "none"); 
var _links = [], _texts = [], _urls = []; 
var _list = _this.find("a"); 
var _timer; 
var _index = 0; 
_list.each(function(index){ 
var temp = $(this).find("img:eq(0)"); 
_links.push($(this).attr("href")); 
_texts.push(temp.attr("alt")); 
_urls.push(temp.attr("src")); 
}); 
if(_list.length <= 0) { 
return; 
} 
else { 
_this.html(""); 
} 
var _width = _this.width(); 
var _height = _this.height(); 
var _numCount = _list.length; 
var _numColumn = Math.ceil(_numCount / 2); 
var _img = $("<a/>").css({"display":"block", "position":"absolute","top":"0px","left":"0px", "z-index":"2", "width":_width+"px", "height":_height+"px", "background":"url("+_urls[0]+")"}).appendTo(_this); 
var _mask = $("<div/>").attr("style","opacity:"+options.maskOpacity) 
.css({"position":"absolute", "left":"0px", "bottom":"0px", "z-index":"3", "width":_width+"px", "height":"46px", "opacity":options.maskOpacity, "background-color":options.maskBgColor}).appendTo(_this); 
var _num = $("<div/>").attr("style","opacity:"+options.numOpacity) 
.css({"position":"absolute", "right":"0px", "bottom":"0px", "z-index":"5", "width":_numColumn*22, "opacity":options.numOpacity, "height":"44px"}).appendTo(_this); 
var _text = $("<div/>").css({"position":"absolute", "left":"0px", "bottom":"0px", "z-index":"4", "padding-left":"10px", "height":"44px", "line-height":"44px", "color":options.textColor}).html(_texts[0]).appendTo(_this); 
for(var i = 0; i < _numCount; i++) 
{ 
$("<a/>").html(i+1) 
.css({"float":"left", "width":"20px", "height":"20px", "text-align":"center", "background-color":options.numBgColor, "margin":"0px 2px 2px 0px", "cursor":"pointer", "line-height":"20px", "color":options.numColor}) 
.mouseover(function() { 
if(_timer) { 
clearInterval(_timer); 
} 
}).mouseout(function() { 
_timer = setInterval(alter, options.delay); 
}).click(function(){ 
numClick($(this)); 
}).appendTo(_num); 
} 
var _tempList = _num.find("a"); 
function alter() { 
if(_index > _numCount-1) { 
_index = 0; 
} 
_tempList.eq(_index).click(); 
} 
function numClick(obj) { 
var i = _tempList.index(obj); 
_tempList.css({"background-color":options.numBgColor, "color":options.numColor}); 
obj.css({"background-color":options.alterBgColor, "color":options.alterColor}); 
_img.attr({"href":_links[i], "target":"_blank"}) 
.css({"opacity":"0", "background":"url("+_urls[i]+")"}) 
.animate({"opacity":"1"}, 500); 
_text.html(_texts[i]); 
_index = i + 1; 
} 
setTimeout(alter, 10); 
_timer = setInterval(alter, options.delay); 
_this.css("display", "block"); 
}; 
})(jQuery); 
