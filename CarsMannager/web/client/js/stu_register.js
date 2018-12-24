var model = (function(){
	var stu_name = document.getElementById("stu_name");
	var stu_pwd1 = document.getElementById("stu_pwd1");
	var stu_pwd2 = document.getElementById("stu_pwd2");
	var stu_email = document.getElementById("stu_email");
	var  btn = document.getElementById("bnt");
	btn.onclick = function(){
		var isValidate = false;
		if(!stu_name.value.match(/^\S{2,20}$/)){
			stu_name.className = 'userred';
			stu_name.focus();
			document.getElementById("name_notice").innerHTML = "长度不符合";
			document.getElementById("name_notice").className = "wrong";
			return;
		}else{
			stu_name.className = "usergreen";
			isValidate = true;
		}
		if(stu_pwd1.value.length<3 || stu_pwd1.value.length>20){
			stu_pwd1.className = "pwd1red";
			stu_pwd1.focus();
			document.getElementById("pwd1_notice").innerHTML = "长度不符合";
			document.getElementById("pwd1_notice").className = "wrong";
			return;
		}else{
			stu_pwd1.className = "pwd1green";
			isValidate = true;
		}
		if(stu_pwd1.value != stu_pwd2.value){
			stu_pwd2.className = "pwd2red";
			stu_pwd2.focus();
			document.getElementById("pwd2_notice").innerHTML = "两次密码不匹配";
			document.getElementById("pwd2_notice").className = "wrong";
			return;
		}else{
			stu_pwd2.className = "pwd2green"
		}
		if(!stu_email.value.match(/^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$/)){
			stu_email.className = 'emailred';
			stu_email.focus();
			document.getElementById("email_notice").innerHTML = "邮箱不匹配";
			document.getElementById("email_notice").className = "wrong";
			return;
		}else{
			stu_email.className = "emailgreen";
			isValidate  = true;
		}
		if(isValidate){
			var ajax = ajax();
			ajax.post('stu_register.jsp?stu_name='+document.getElementById("stu_name").value+'&stu_pwd='+document.getElementById("stu_pwd2").value+'&stu_email='+document.getElementById("stu_email").value,function(data){
				eval(data);
				if(register){
					alert("注册成功!");
					location = 'index1.html';
				}else{
					alert("注册失败");
					history.go(0);
				}
			})
		}
	}
})();
