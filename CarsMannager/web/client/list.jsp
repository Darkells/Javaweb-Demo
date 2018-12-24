<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name = "viewport" content="width = device-width,initial-scale = 1.0" />
		<title></title>
		<link rel="stylesheet" href="css/list.css" />
	</head>
	<body>
		<div class="wrap">
			<div class="alluser_header">
				<div class="title_container">
					<span class="title">全部雇员</span>
					<span class="title_photo">
						<img src="img/humun/icons8-女性-filled-50.png" />
					</span>
					<div class="buttons">
						<input type="button" value="添加" class="add" />
						<input type="button" value="导入" class="import" />
						<input type="button" value="合并" class="merge" />
					</div>
					<input class="export" type="button" />
				</div>
			</div>
			<table width="1158" cellspacing="0" cellpadding="0" align="center" border="0" bordercolorlight="lightgray">
				<tr align="center" bgcolor="#064e81" height="35" class="tr_1">
					<td width="10%"><div class="tr_1_div"><input type="checkbox" value=""/></div></td>
					<td width="10%">姓名</td>
					<td width="20%">邮箱</td>
					<td width="20%">手机</td>
					<td width="10%">标签</td>
					<td width="10%">职位</td>
					<td width="15%">入职时间</td>
					<td width="5%"><div>修改</div></td>
				</tr>
				<!--判断输出 --> 
			</table>
			<table class="table_container" width="1158" border="0" cellpadding="0" cellspacing="0">
				<tr align="center" class="tr_2" height="20">
					<td width="10%"><div class="tr_2_div"><img src="" alt="#" /> <!-- 头像--></div></td>
					<td width="10%"><!-- 姓名--></td>
					<td width="20%"><!-- 邮箱--></td>
					<td width="20%"><!-- 手机--></td>
					<td width="10%"><!-- 标签--></td>
					<td width="10%"><!-- 职位--></td>
					<td width="15%"><!-- 入职时间--></td>
					<td width="5%"><a href="javascript:void(0)">删除</a> </td>
				</tr>
			</table>
		</div>
	</body>
</html>
