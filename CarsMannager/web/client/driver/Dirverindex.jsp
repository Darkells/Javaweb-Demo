<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="domain.Driver" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% Driver driver = (Driver) request.getSession().getAttribute("driver");%>
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
					<li class="active"><a href="${pageContext.request.contextPath}/client/driver/Dirverindex.jsp" id="link">主页</a></li>
					<li ><a href="${pageContext.request.contextPath}/OrderlistServlet" id="link">订单管理</a></li>
					<li ><a href="${pageContext.request.contextPath}/client/driver/Infolist.jsp" id="link">消息管理</a></li>
					<li ><a href="${pageContext.request.contextPath}/client/driver/Accont.jsp" id="link">账号管理</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="${pageContext.request.contextPath}/client/driver/Accont.jsp"><img src="123.png" class="round_icon"></a></li>
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" id="admin">${driver.username}<span class="caret"></span></a>
						<ul class="nav dropdown-menu dropdown-content nav-second-level" role="menu">
							<li><a href="${pageContext.request.contextPath}/LogoutServlet">退出</a></li>
						</ul>
					</li>
				</ul>
			</div>
	</div>
</nav>
	<div id="main" class="container">
            <div class="col-lg-4">
              <!--weather card-->
              	<div class="card">
                	<div class="card-body">
                    	<h3>星期三</h3>
                    	<small> 11月7日, 2018
                    	天河, 广州</small>
                      	<h4 class="symbol">21
                        <span class="symbol">&deg;</span>C</h4>
                      	<p style="padding: 0px 0px 0px 30px">
                        多云
                      	</p>
                    </div>
                </div>
                <br><br>
                <div class="panel panel-info">
            		<div class="panel-heading">
            			<h3 class="panel-title">线路更改</h3>
            		</div>
            	<div class="panel-body">
            		关于三号线更改通知：预计明日开始开通三号线副线
            	</div>
            		<table class="table">
        				<th>出发地</th>
        				<th>目的地</th>
        				<tr>
        					<td>本部</td>
        					<td>西校区</td>
        				</tr>
        				<tr>
        					<td>白云</td>
        					<td>北校区</td>
        				</tr>
    				</table>
            	</div>
            </div>


             <!--weather card ends-->
        <div class="col-lg-5">
        	<h2>车长状态</h2>
        	<table class="table">
        		<thead>
        			<tr>
        				<th>状态</th>
        			</tr>
        		</thead>
        		<tbody>
        			<div class="col-sm-2">
        			<tr>
        				<td>车长名</td>
        				<td>${driver.username}</td>
        			</tr>
        			</div>
        			<tr>
        				<td>车&nbsp&nbsp&nbsp&nbsp龄</td>
        				<td>3年</td>
        			</tr>
        			<tr>
        				<td>工&nbsp&nbsp&nbsp&nbsp号</td>
        				<td>${driver.d_id}</td>
        			</tr>
        			<tr>
        				<td>称&nbsp&nbsp&nbsp&nbsp号</td>
        				<td>最佳老司机</td>
        			</tr>
        			<tr>
        				<td>手&nbsp&nbsp&nbsp&nbsp机</td>
        				<td>${driver.phone}</td>
        			</tr>
        			<tr>
        				<td>邮&nbsp&nbsp&nbsp&nbsp箱</td>
        				<td>${driver.email}</td>
        			</tr>
        		</tbody>
        	</table>
        </div>
        <div class="col-lg-3">
            	<div class="card">
            		<div  style="padding-top:48px">
                        <c:if test="${driver.url == null}">
                        <form action="${pageContext.request.contextPath}/upfileServlet" method="post" enctype="multipart/form-data" role="form">
                            <input type="file" name="fileUpload"/>
                            <p class="help-block">这里是块级帮助文本的实例。</p>
                            <input type="submit" class="btn btn-default" value="提交">
                        </form>
                        </c:if>
                        <c:if test="${driver.url != null}">
            			<a href="" class="thumbnail">
                            <img class="card-img-top" src="./upload/${sessionScope.driver.getUrl()}"></a>
                        </c:if>
            		</div>
            		<div class="card-body">
            			<h3 class="card-title">${user.username}</h3>
            			<P class="card-text">老司机带带你，小妹让你飞</P>
            		</div>
            	</div>
        </div>     	
	</div>

</body>
</html>