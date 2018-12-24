var model1 = (function(){
	var a = function(){
		console.log("1");
		var msg = "您确定预约此司机吗？";
		if(confirm(msg) == true){
			alert("预约成功!");
		}else{
			return false;
		}
	};
	var b = function(n){
		console.log(n);
		if(1<=n && n<=4){
			var details = document.getElementById("details1");
			details.style.display = "block";
		}else{
			return;
		}	
	}
	return {
		a : a,
		b : b,
	}
})();


