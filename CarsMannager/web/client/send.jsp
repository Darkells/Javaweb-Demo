<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
		<title></title>
		<style>
			.container{
				text-align: center;
				margin: 50px auto;
				border: 1px solid lightgray;
				box-shadow: 0px 0px 5px lightgray;
				width: 40%;
				height: 50%;
				padding-top: 100px;
			}
		</style>
	</head>
	<body>
		<div class="container">
			<form action="${pageContext.request.contextPath}/bookcarsServlet" method="post">
				<p>
					<input type="hidden" name="uid" value="${user.uid}"/>
				</p>
				<p>
					<input type="hidden" name="d_id" value="${d_id}"/>
				</p>
				<p>
					<label>出发地点</label>
					<span>*</span>
					<input type="text" name="start" placeholder="请输入出发地"/>
				</p>
				<p>
					<label>目的地点</label>
					<span>*</span>
					<input type="text" name="end" placeholder="请输入目的地"/>
				</p>
				<p>
					<label>出发时间</label>
					<span>*</span>
					<input type="text" name="s_time" placeholder="请输入出发时间"/>
				</p>
				<p>
					<label>结束时间</label>
					<span>*</span>
					<input type="text" name="e_time" placeholder="请输入结束时间"/>
				</p>
				<p>
					<input type="submit" value="预约"/>
				</p>
			</form>
		</div>
	</body>
</html>
