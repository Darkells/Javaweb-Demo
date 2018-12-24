var login = (function(){
	var showNo = function(){
		document.getElementById("doing").style = "none";
		document.getElementById("divLogin").style = "none";
	};
	var showFloat = function(){
		var range = getRange();
		var doing = document.getElementById("doing");
		doing.style.width = range.width + "px";
		doing.style.height = range.height + "px";
		doing.style.display = "block";
		document.getElementById("divLogin").style.display = "block";
	};
	var getRange = function(){
		var top = document.body.scrollTop;
		var left = document.body.scrollLeft;
		var height = document.body.clientHeight;
		var width = document.body.clientWidth;
		if( top == 0 && left == 0 && height == 0 && width == 0){
			top = document.documentElement.scrollTop;
			left = document.documentElement.scrollLeft;
			height = document.documentElement.clientHeight;
			width = document.documentElement.clientWidth;
		}
		return {top:top,left:left,height:height,width:width};
	};
	var change1 = function(obj){
		if(obj.classList.contains("on")){
			return;
		}else{
			obj.classList.add("on");
			document.getElementById("header_span2").className = "header_span2";
			number = "1";
		}
	};
	var change2 = function(obj){
		if(obj.classList.contains("on")){
			return;
		}else{
			obj.classList.add("on");
			document.getElementById("header_span1").className = "header_span1";
			number = "2";
		}
	};
	return {
		showNo : showNo,
		showFloat : showFloat,
		getRange : getRange,
		change1 : change1,
		change2 : change2,
	};
})();

var remove1 = (function(){
	var a = function(){
		var news2 = document.getElementById("news2");
		news2.style.top = '-350px';
		return;
	};
	var b = function(){
		var news2 = document.getElementById("news2");
		news2.style.top = '0px';
	};
	var c = function(){
		var carer2 = document.getElementById("carer2");
		carer2.style.top = '-350px';
		return;
	};
	var d = function(){
		var carer2 = document.getElementById("carer2");
		carer2.style.top = '0px';
	};
	var e = function(){
		var more2 = document.getElementById("more2");
		more2.style.top = '-350px';
		return;
	};
	var f = function(){
		var more2 = document.getElementById("more2");
		more2.style.top = '0px';
	};
	return {
		a : a,
		b : b,
		c : c,
		d : d,
		e : e,
		f : f,
	}
})();
