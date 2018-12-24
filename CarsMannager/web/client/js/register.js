var model = (function(){
	var photo = function(){
		console.log("1");
		document.getElementById("mFile").onchange = function(e){
			//判断FileReader 是否被浏览器所支持
			if(!window.FileReader){
				return;
			}
			console.log(e);
			var file = e.target.files[0];
			
			if(!file.type.match('image/*')){
				alert('上传的图片必修是png,gif,jpg格式！');
				ev.target.value = " ";//显示文件的赋值为空
				return;
			}
			
			var reader = new FileReader(); //创建FileReader对象
			
			reader.readAsDataURL(file);//读取file对象，读取完毕后会返回result 图片base64格式的结果
			
			reader.onload = function(e){
				document.getElementById("carer_photo").src = e.target.result;
			}
		}
	};
	return {
		photo : photo,
	};
})();

