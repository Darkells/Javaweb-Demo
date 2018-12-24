<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name = "viewport" content="width = device-width,initial-scale = 1.0" />
		<title></title>
		<link rel="stylesheet" href="css/manager_container.css" />
	</head>
	<body>
		<div class="wrapper">
			<div class="header">
				<span class="header_img">
					<img src="img/title.png"/>
				</span>
				<ul>
					<li class="li_1">联系人</li>
					<li class="li_2">邮件</li>
					<li class="li_3">短信</li>
				</ul>
				<a href="#" class="advertising">广告推广中心</a>
				<input type="text" placeholder="快速搜索" class="find"/>
				<span class="manager_img">
					<img src="img/humun/路飞头像.jpg" alt="管理员头像"/>
				</span>
				<div class="manager_hidden">
					<p class="manager_number">工号:<span></span></p>
					<p class="manager_apart">部门:<span></span></p>
					<p>
						<input type="button" value="退出" class="exit"/>
					</p>
				</div>
			</div>
			<div id="middle" class="middle"></div>
		</div>
	</body>
</html>
