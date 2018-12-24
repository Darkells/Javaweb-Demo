<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>鱼の店</title>
		<link href="css/carer_register.css" rel="stylesheet" />
        <script>
            function login() {
                var username = document.getElementById("username").value;
                var password = document.getElementById("password").value;
                //1.创建ajax对象
                var xhr = ajaxFunction();
                //规定发送数据的形式（post/get），url，以及传输方式(同步/异步)
                xhr.open("post", "${pageContext.request.contextPath}/DerLoginServlet?timeStamp=" + new Date().getTime(), true);
                //post方式需要加下边这句，get方式不需要
                xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
                //将页面输入数据发送到后台
                xhr.send("username=" + username + "&password=" + password);
                xhr.onreadystatechange = function () {
                    if (xhr.readyState == 4) {
                        if (xhr.status == 200){
                            var data = xhr.responseText;
                            if (data == "success"){
                                alert("登录成功");
                                window.location.href="${pageContext.request.contextPath}/client/driver/Dirverindex.jsp";
                            }else if (data == "fail") {
                                alert("登录失败,用户名或密码错误！");
                            }
                        }
                    }
                }

                function ajaxFunction() {
                    var xmlHttp;
                    try {
                        xmlHttp = new XMLHttpRequest();
                    } catch (e) {
                        try {
                            xmlHttp = new ActiveXObject("Msxm12.XMLHTTP");
                        } catch (e) {
                            try {
                                xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
                            } catch (e) {
                            }
                        }
                    }
                    return xmlHttp;
                }
            }
        </script>
	</head>
	<body>
		<div class="container" id="container">
			<dl class="zhuce_header">
				<dt>鱼の店</dt>
			</dl>
			<dl class="regliketab">
				<dt id="stu_zhuce" class="stu_zhuce" onclick="window.location.href = 'stu_login.jsp'">
					<a href="#" id="">用户登录</a>
				</dt>
				<dt id="carer_zhuce" class="carer_zhuce on" onclick="window.location.href = 'carer_login.jsp'">
					<a href="#" >司机登录</a>
				</dt>
			</dl>
			<div class="reg_form">
				<form method="post" action="" id="stu_form" name="stu_form">
					<div class="contect">
						<dl class="dl_1">
							<dt>
								用户名
								<span>*</span>
							</dt>
							<dd>
								<i>
									<input id="username" class="txt_input" type="text" placeholder="请输入您的真实姓名" name="username" style="background: url(img/icons8-性别中性用户-50.png) no-repeat;background-size: 18px 18px;background-position: 5px 6px;"/>
								</i>
								<span id="name_notice"></span>
							</dd>
						</dl>
						<dl>
							<dt>
								密码
								<span>*</span>
							</dt>
							<dd>
								<i>
									<input id="password" class="txt_input" type="password" placeholder="请输入您的密码" name="password" style="background: url(img/icons8-密码-50.png) no-repeat;background-size: 18px 18px;background-position: 5px 6px;"/>
								</i>
								<span id="pwd_notice"></span>
							</dd>
						</dl>
						<dl>
						<dt class="code_title">
							验证码
							<span>*</span>
						</dt>
						<dd class="canvas_dd">
							<i>
								<input id="seccode_stu" class="txt_input seccode_stu" type="text" name="seccode_stu" />
							</i>
							<span class="canvas_span">
								<canvas id="myCanvas" width="80px" height="30px" class="myCanvas"></canvas>
								<script>
									var myCanvas = (function(){
										var code = " ";
										var createCode = function(){
											var codelength = 4;
											var codeValue = document.getElementById("myCanvas").value;
											var canvas = document.getElementById("myCanvas");
											var selectChar = new Array(0,1,2,3,4,5,6,7,8,9,'a','b','c','d','e','f','g','h','l','i','j','k','m',
																	'n','o','p','q','r','s','t','u','v','w','x','y','z','A','B','C','D','E',
																	'F','G','H','L','I','J','K','M','N','O','P','Q','R','S','T','U','V','W',
																	'X','Y','Z');
											
											for(var i = 0 ;i<codelength;i++){
												var codeIndex = Math.floor(Math.random()*62);
												code+= selectChar[codeIndex];
											}
											codeValue = code;
											if(canvas){
												var ctx = canvas.getContext('2d');
												ctx.fillStyle = "#FFFFFF";
												ctx.rect(0,0,70,27);
												ctx.font = "20px arial";
												
												var gradient = ctx.createLinearGradient(0,0,canvas.width,0);
												gradient.addColorStop("0","magenta");
												gradient.addColorStop("0.5","blue");
												gradient.addColorStop("1","red");
												
												ctx.strokeStyle = gradient;
												ctx.strokeText(code,5,20);
											}
										}
										return {
											createCode : createCode,
										}
									})();
									myCanvas.createCode();
								</script>
							</span>
							<span class="code_change" style="cursor: pointer;">
								看不清？换一换
							</span>
							<span id="pwd_notice"></span>
						</dd>
					</dl>
						<dl>
						<dt></dt>
						<dd class="submit_box">
							<input class="tijiao" type="button" value="登录" id="btn" onclick="login()"/>
						</dd>
					</dl>
					</div>
				</form>
			</div>
		</div>
		<div class="bottom_box">
			<div>
				<a href="#">关于我们</a>
				|
				<a href="#">版权信息</a>
				|
				<a href="#">合作伙伴</a>
				|
				<a href="#">招聘信息</a>
				|
				<a href="#">联系我们</a>
				|
				<a href="#">意见反馈</a>
				|
				<a href="#">网站地图</a>
				|
				<a href="#">网站帮助</a>
				|
				<a href="#">rss订阅</a>
			</div>
			<p class="fontArial">
				Copyright@<script>document.write(new Date().getFullYear());</script>Ricardom.All rights reserved
			</p>
		</div>
	</body>
</html>