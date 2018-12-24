var photo = (function(){
	var wrap = document.querySelector(".wrap");
	var timer = null;
	var auto_play = function(){
		timer = setInterval(function(){
			next_pic();
		},4000);
	}
	var container = document.getElementById("auto_play");
	container.onmouseenter = function(){
		clearInterval(timer);
	}
	container.onmouseleave = function(){
		auto_play();
	}
	auto_play();
	
	var index = 0;
	
	var showCurrentDot = function(){
		var dots = document.getElementById("buttons1").getElementsByTagName("span");
		for(var i=0 , len = dots.length;i<len;i++){
			dots[i].className = "";
		}
		dots[index].className = "on";
	}
	var next_pic = function(){
		var left = parseInt(wrap.offsetLeft);
		if(left > -6635){
			wrap.style.left = left - 1327 +"px";
			wrap.style.transition = "left 2s";
			if(left<=-6635){
				setTimeout(function(){
					wrap.style.left = "0px";
					wrap.style.transition = "left 0s";
				},1)
			}
		}else{
			wrap.style.left = "0px";
			wrap.style.transition = "left 0s";
		}
		index++;
		if(index>4){
			index = 0;
		}
		showCurrentDot();
	};
	var prev_pic = function(){
		var left = parseInt(wrap.offsetLeft);
		if(left == "0"){
			left = -6635;
		}
		var newLeft = left + 1327;
		wrap.style.left = newLeft + "px";
		index--;
		if(index<0){
			index = 4;
		}
		showCurrentDot();
	};
	return {
		auto_play : auto_play,
		next_pic : next_pic,
		prev_pic : prev_pic,
	};
})();
