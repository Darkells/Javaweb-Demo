<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/client/css/index1.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/client/css/3D.css" />
		<script type="text/javascript">
			window.onload = function(){
				var imgs = document.getElementsByTagName("img");
				var contentLeft = document.getElementById("wrap");
				for(var i=0; i<imgs.length; i++){
					imgs[i].style["max-width"] = contentLeft.offsetWidth - 570 + "px";
				}
			}
			window.onresize = function(){
				var imgs = document.getElementsByTagName("img");
				var contentLeft = document.getElementById("wrap");
				for(var i=0; i<i.imgs.length; i++){
					imgs[i].style["max-width"] = contentLeft.offsetWidth -570 + "px";
				}
			}
		</script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/client/js/ajax.js"></script>
	</head>
	<body>
		<div class="header">
			<div class="navigation">
				<div class="header_img">
					<img src="${pageContext.request.contextPath}/client/img/title.png" />
				</div>
				<div class="header_title">
					<ul>
						<li onclick="window.location.href= 'index1.jsp'">首页<span>|</span></li>
						<li>最新资讯<span>|</span></li>
						<li>招聘信息<span>|</span></li>
						<li onclick="window.location.href= '${pageContext.request.contextPath}/DriverListServlet'">车长分布<span>|</span></li>
						<li>联系我们<span>|</span></li>
					</ul>
                    <c:if test="${sessionScope.user == null}">
					<li class="load"><a href="stu_login.jsp">登录</a><span>|</span><a href="stu_register.jsp">注册</a></li>
                    </c:if>
                    <c:if test="${sessionScope.user !=null}">
                    <li class="load"><a href="" >${user.username}</a><span>|</span><a href="${pageContext.request.contextPath}/LogoutServlet">退出</a></li>
                    </c:if>
				</div>
			</div>
		</div>
		<div class="container" id="container">
			<div class="auto_play" id="auto_play">
			<div class="wrap" id="wrap">
				<figure><img src="${pageContext.request.contextPath}/client/img/humun/IG_WXC.jpg"/> </figure>
				<figure><img src="${pageContext.request.contextPath}/client/img/humun/IG_WXC1.jpg" class="item"/> </figure>
				<figure><img src="${pageContext.request.contextPath}/client/img/志愿公交1.jpg" class="item"/> </figure>
				<figure><img src="${pageContext.request.contextPath}/client/img/志愿公交3.jpg" class="item"/></figure>
				<figure><img src="${pageContext.request.contextPath}/client/img/humun/IG_WXC2.jpg" class="item"/> </figure>
				<figure><img src="${pageContext.request.contextPath}/client/img/志愿公交4.jpg" class="item"/> </figure>
			</div>
		</div>
		<div class="introduce">
			<div class="introduce_left">
				<div class="news1" onmouseleave='remove1.b()' id="news1">
					<span class="news_title">
						我们滴消息
					</span>
					<ul>
						<li><a href="#">习大大为本公司点赞</a></li>
						<li><a href="#">囍:已为上万学生提供服务</a></li>
						<li><a href="#">进军农村，解决农村学生上下学问题</a></li>
						<li><a href="#">致广大市民的一封信</a></li>
						<li><a href="#">更多业务...</a></li>
					</ul>
				</div>
				<div class="news2" onmouseout='remove1.a()' id="news2">
					<p><img src="img/global.jpg" class="globel" width="180px" height="180px" style="border-radius: 50%;margin-top: 50px;margin-left: 90px;"/></p>
					<span>关于我们</span>
				</div>
			</div>
			<div class="introduce_middle">
				<div class="carer1" id="carer1" onmouseleave="remove1.d()">
					<img src="img/庞木柳.jpg" alt="" />
					<p>
						<a href="#" class="carer_name">庞木柳</a>
					</p>
					<p>
						<span class="carer_star">服务星数：</span>
					</p>
					<p>
						<a href="#" class="carer_other">其他车长</a>
					</p>
				</div>
				<div class="carer2" id="carer2" onmouseout="remove1.c()">
					<p>
						<img src="img/carer_tar.jpg" width="190px" height="190px" style="border-radius: 5%; margin-top: 50px; margin-left: 82px;"/>
					</p>
					<span>本周最佳</span>
				</div>
			</div>
			<div class="introduce_right">
				<div class="more1" id="more1" onmouseleave="remove1.f()">
					<p>
						<img src="img/敬请期待.png" />
					</p>
				</div>
				<div class="more2" id="more2" onmouseout="remove1.e()">
					<span class="more_span">Here</span>
				</div>
			</div>
		</div>
		</div>
		<div class="doing" id="doing"></div>
		<%--<div class="divLogin" id="divLogin">
			<div class="divLogin_container">
				<div id="con">
				</div>
				<div>
					<p class="divLogin_container_header">
						<span class="header_span1 on" id="header_span1" onclick="login.change1(this)">用户登录</span>
						<span id="header_span2" onclick="login(this)" class="header_span2">司机登录</span>
						<input type="hidden" value="1" id="number" />
						<img src="${pageContext.request.contextPath}/client/img/icons8-取消-50 (1).png" onclick="login.showNo()"/>
					</p>
				</div>
				<div class="login_container">
                    <form method="post" action="${pageContext.request.contextPath}/LoginServlet">
					<div class="login">
						<p>
							<span>账号：</span>
							<input type="text" name="username" placeholder="请输入您的用户名" class="input_1" id="username"/>
						</p>
						<p>
							<span>密码：</span>
							<input type="password" placeholder="请输入您的密码" class="input_2" name="password" id="password" />
						</p>
					</div>
					<div class="buttons">	
						<p>
							<input type="submit" value="登录" class="input_3" id="btn1"/>
							<input type="button" value="注册" class="input_4" />
						</p>
						<p>
							<a href="${pageContext.request.contextPath}/client/findpwd.jsp">忘记密码？找回</a>
						</p>
					</div>
                    </form>
				</div>
			</div>--%>
		</div>
		<div class="footer">
			<div class="copyright">
				Copyright@<script>document.write(new Date().getFullYear());</script>Ricardom.All Rights Reserved.
			</div>
		</div>
	</body>
</html>
<script>
    function register() {
        var username = document.getElementById("name").value;
        var password = document.getElementById("password").value;
        //1.创建ajax对象
        var xhr = ajaxFunction();
        //规定发送数据的形式（post/get），url，以及传输方式(同步/异步)
        xhr.open("post", "${pageContext.request.contextPath}/driverloginServlet?timeStamp=" + new Date().getTime(), true);
        //post方式需要加下边这句，get方式不需要
        xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        //将页面输入数据发送到后台
        xhr.send("username=" + username + "&password=" + password);
        xhr.onreadystatechange = function () {
            if (xhr.readyState == 4) {
                if (xhr.status == 200){
                    var data = xhr.responseText;
                    if (data == "success"){
                        alert("注册成功");
                        window.location.href="${pageContext.request.contextPath}/client/driver/Dirverindex.jsp";
                    }else if (data == "fail") {
                        alert("注册失败");
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
<script src="js/index1.js"></script>

