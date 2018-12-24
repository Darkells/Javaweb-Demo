<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/client/driver/css/bootstrap.min.css">
	<script src="${pageContext.request.contextPath}/client/driver/js/jquery.js"></script>
	<script src="${pageContext.request.contextPath}/client/driver/js/bootstrap.min.js"></script>
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/client/driver/css/mycss.css">
	<title>鱼の店</title>
</head>
<body>
<nav class=" navbar navbar-inverse navbar-fixed-top" role="navigation">
	<div class="container">
		<div class="">
			<a class="navbar-brand active" href="${pageContext.request.contextPath}/client/driver/Dirverindex.jsp" id="link">鱼の味</a>
		</div>
			<div class="collapse navbar-collapse">
				<ul class="nav navbar-nav" id="mytab">
					<li><a href="${pageContext.request.contextPath}/client/driver/Dirverindex.jsp" id="link">主页</a></li>
					<li><a href="${pageContext.request.contextPath}/client/driver/Orderlist.jsp" id="link">订单管理</a></li>
					<li class="active"><a href="${pageContext.request.contextPath}/client/driver/Infolist.jsp" id="link">消息管理</a></li>
					<li><a href="${pageContext.request.contextPath}/client/driver/Accont.jsp" id="link">账号管理</a></li>
				</ul>

				<ul class="nav navbar-nav navbar-right">
					<li><a href="${pageContext.request.contextPath}/client/driver/Accont.jsp"><img src="123.png" class="round_icon"  alt=""></a></li>
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" id="admin">${driver.username}<span class="caret"></span></a>
						<ul class="dropdown-menu dropdown-content" role="menu">
							<li><a href="${pageContext.request.contextPath}/LogoutServlet">退出</a></li>
						</ul>
					</li>
				</ul>
			</div>
	</div>
</nav>
	<div id="main" class="container">
		
	</div>
</body>
</html>