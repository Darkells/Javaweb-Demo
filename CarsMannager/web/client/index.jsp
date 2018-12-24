<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<script type="text/javascript">
			//检查浏览器的版本
			var ua = navigator.userAgent.toLowerCase(),
				toFixedVersion = function(ver,floatLength){
					ver = (""+ver).replace(/_/,".");
					floathLength = floathLength || 1;
					ver = String(ver).split(".");
					ver = ver[0] + "." + (ver[1] || 0);
					ver = Number(ver).toFixed(floatLength);
					return ver;
				}
				
			var s = ua.match(/msie ([\d.]+)/);
			
			//documentMode 属性返回浏览器渲染文档的模式
			if(s && (toFixedVersion(s[i])<=8 || document.documentMode <=8)){
				window.href = 'index1.jsp';
			}
		</script>
		<style>
			body{
				margin: 0;
				padding: 0;
				font-family: "lucida grande","trebuchet ms","Hiragino Sans GB","Segoe UI Light","Segoe UI","Microsoft Jhenghei","微软雅黑",sans-serif;
				-webkit-font-smoothing: antialiased;
				color: #666666;
			}
			a{
				outline: none;
			}
			img{
				border: 0;
			}
			.title{
				font-size: 60px;
				text-align: center;
				margin-top: 80px;
			}
			.title .recommend{
				font-size: 14px;
			}
			.wording{
				margin-top: 50px;
				text-align: center;
				line-height: 2em;
			}
			.container{
				text-align: center;
			}
			.select_photo{
				width: 400px;
				height: 280px;
				margin: 50px auto  0;
				overflow: hidden;
			}
			.term_photo{
				width: 140px;
				text-align: center;
				margin: 0 auto;
			}
			.term_photo .link{
				margin-top:10px;
				padding: 2px 15px;
				font-size: 20px;
				color: rgb(95,183,233);
				-webkit-transition: background 250ms ease-in, color 250ms ease-in;
				border-radius: 6px;
				text-decoration: none; 
			}
			.term_photo .link{
				display: block;
			}
			.term_photo .link:hover{
				color: #ffffff;
				background: #BBD631;
			}
			.term_photo:hover .link{
				color: #FFFFFF;
				background: #BBD631;
			}
			.copyright{
				text-align: center;
				margin-top: 50px;
				font-size: 12px;
				font-family: tahoma;
				margin-left: 35px;
			}
			.first-msg{
				font-size: 14px;
			}
			.img_wrap{
				margin-left: -35px;
			}
			.photo{
				margin-left: -40px;
			}
		</style>
	</head>
	<body>
		<div class="container">
			<div class="title">爱·回家</div>
			<div class="wording">
				<div class="first-msg">给你更清新的体验</div>
			</div>
			<div class="select_photo">
				<div class="term_photo">
					<a href="${pageContext.request.contextPath}/client/index1.jsp" class="img-warp"><img src="${pageContext.request.contextPath}/client/img/images.jpg" alt="" class="photo"></a>
					<a href="${pageContext.request.contextPath}/client/index1.jsp" class="link">立刻体验</a>
				</div>
			</div>
			<div class="copyright">Coperight@<script>document.write(new Date().getFullYear());</script>Ricardom.All Right Reserved</div>
		</div>
	</body>
</html>
