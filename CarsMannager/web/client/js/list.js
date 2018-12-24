var modify = (function(){
	var showNo = function(){
		document.getElementById("doing").style = "none";
		document.getElementById("modify").style = "none";
	};
	var showFloat = function(){
		var range = getRange();
		var doing = document.getElementById("doing");
		doing.style.width = range.width+"px";
		doing.style.height = range.height+"px";
		doing.style.display = "block";
		document.getElementById("modify").style.display = "block";
	};
	var getRange = function(){
		var top = document.body.scrollTop;
		var left = document.body.scrollLeft;
		var height = document.body.clientHeight;
		var width = document.body.clientWidth;
		if(top==0 && left == 0 && height==0&& width==0){
			top = document.documentElement.scrollTop;
			left = document.documentElement.scrollLeft;
			height = document.documentElement.clientHeight;
			width = document.documentElement.clientWidth;
		}
		return {top:top,left:left,height:height,width:width};
	};
	return{
		showNo: showNo,
		showFloat: showFloat,
		getRange: getRange,
	};
})();
