var model = (function(){
	var name = document.getElementById("name");
	var pwd = document.getElementById("password");
	var email = document.getElementById("email");
	var phone = document.getElementById("phone");
	var sex = document.getElementById("sex");
	var  btn = document.getElementById("btn");
	console.log(name);
	btn.onclick = function(){
		var isValidate = false;
		if(!name.value.match(/^\S{2,20}$/)){
			name.className = 'userred';
			name.focus();
			document.getElementById("name_notice").innerHTML = "长度不符合";
			document.getElementById("name_notice").className = "wrong";
			return;
		}else{
			name.className = "usergreen";
			isValidate = true;
		}
		if(pwd.value.length<3 || pwd.value.length>20){
			pwd.className = "pwdred";
			pwd.focus();
			document.getElementById("pwd_notice").innerHTML = "长度不符合";
			document.getElementById("pwd_notice").className = "wrong";
			return;
		}else{
			pwd.className = "pwdgreen";
			isValidate = true;
		}
		if(phone.value.length<6 || phone.value,length>18){
			phone.className = "phonered";
			phone.focus();
			document.getElementById("pwd_notice").innerHTML = "长度不符合";
			document.getElementById("pwd_notice").className = "wrong";
			return;
		}
		else{
			phone.className = "pwdgreen";
			isValidate = true;
		}
		if(!email.value.match(/^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$/)){
			email.className = 'emailred';
			email.focus();
			document.getElementById("email_notice").innerHTML = "邮箱不匹配";
			document.getElementById("email_notice").className = "wrong";
			return;
		}else{
			email.className = "emailgreen";
			isValidate  = true;
		}
		if(isValidate){
			var ajax = ajax();
			ajax.post('carer_register.jsp?name='+document.getElementById("name").value+'&pwd='+document.getElementById("pwd").value+'&email='+document.getElementById("email").value+'&sex='+document.getElementById("sex").value+'&phone='+document.getElementById("phone").value,function(data){
				eval(data);
				if(register){
					alert("注册成功!");
					location = 'carer_list.html';
				}else{
					alert("注册失败");
					history.go(0);
				}
			})
		}
	}
})();