/*var login1 = (function(){
	var username = document.getElementById("username");
	var password = document.getElementById("password");
	var btn1 = document.getElementById("btn1");
	
	btn1.onclick = function(){
		var num = document.getElementById("number").value;
		var isValidate = false;
		if(!username.value.match(/^\S{2,20}$/)){
			alert("您的用户名格式不正确，请重新输入");
			username.focus();
			return;
		}else{
			isValidate = true;
		}
		
		if(password.value.length<3 || password.value.length>20){
			alert("您输入的密码长度不符合要求，请重新输入");
			password.focus();
			return;
		}else{
			isValidate = true;
		}
		//login.jsp是钰后台数据库判断的页面
		if(isValidate){
			var ajax = Ajax();
			ajax.get('login.jsp?user='+document.getElementById("username").value+'&password='+document.getElementById("password").value+'&number='+document.getElementById("number").value,function(data){
				var con = document.getElementById("con");
				eval(data);
				if(login){
					con.innerHTML = '<font color="green">登录成功，跳转中...</font>';
					if(num == "1"){
						location = "index1.jsp"; //学生首页
					}
					if(num == "2"){
						location = "carer_list.html"; //管理者首页
					}
				}else{
					con.innerHTML = '<font color="red">账号或密码错误!</font>'
				}
			});
		}
	}
})();
*/
