<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="domain.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width = device-width,initial-scale  = 1.0"/>
    <title></title>
    <link href="css/findcarer.css" rel="stylesheet"/>
    <link href="css/header.css" rel="stylesheet"/>
    <link href="css/carerlist.css" rel="stylesheet"/>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/findcarer.js"></script>
    <script src="js/carerlist.js"></script>
    <script type="text/javascript"
            src="http://api.map.baidu.com/api?v=2.0&ak=o3imL06ejLFI1EEqp9ubPNN4tznXkNGz"></script>
</head>

<%--<%
    List<User> list = (List<User>) request.getSession().getAttribute("driver");
%>--%>
<body>
<div class="header">
    <div class="header">
        <div class="navigation">
            <div class="header_img">
                <img src="img/title.png"/>
            </div>
            <div class="header_title1">
                <ul>
                    <li onclick="window.location.href = 'index1.jsp'">首页<span>|</span></li>
                    <li>最新资讯<span>|</span></li>
                    <li>招聘信息<span>|</span></li>
                    <li onclick="window.location.href='findcarer.jsp'">路线分布<span>|</span></li>
                    <li>联系我们<span>|</span></li>
                </ul>
                <%--<%
                    User user = (User) request.getSession().getAttribute("user");
                    if(null == user){
                %>--%>
                <c:if test="${sessionScope.user == null}">
                <li class="load"><a href="stu_login.jsp">登录</a><span>|</span><a href="stu_register.jsp">注册</a></li>
                </c:if>
                <c:if test="${sessionScope.user != null}">
                <li class="load"><a href="" >${user.username}</a><span>|</span><a href="${pageContext.request.contextPath}/LogoutServlet">退出</a></li>
                </c:if>
            </div>
        </div>
    </div>
    <div class="middle" height="100%">
        <div class="navigation-left">
            <menu>
                <p class="navigation-header" id="navigation-header">
                    <img src="img/zhi.jpg"/>
                    欢迎来到<label>爱·回家</label>
                </p>
                <div class="menu-item">
					<span class="menu-parent1" id="menu-parent1">
						搜索车长
					</span>
                    <input type="checkbox" name="" value="" onclick="changeClass.c(this)" id="menu-parent1"/>
                    <div class="menu-item-list">
						<span>
							<input type="button" class="find" value="搜索"/>
							<input type="text" class="find-container"/>
						</span>
                    </div>
                </div>
                <div class="menu-item">
					<span class="menu-parent1 menu-parent1-2" id="menu-parent2">
						车长排序
					</span>
                    <input type="checkbox" name="" value="" onclick="changeClass.c(this)" id="menu-parent2"/>
                    <div class="menu-item-list">
                        <span class="menu-child">序号升序</span>
                        <span class="menu-child">序号降序</span>
                        <span class="menu-child">星级升序</span>
                        <span class="menu-child">星级降序</span>
                    </div>
                </div>
            </menu>
        </div>
        <div class="mainbody" id="mainbobdy">
            <div class="container">
                <div class="row">
                    <%--<div class="col-sm-6 col-md-3">
                        <div class="thumbnail">
                            <img guoyu-src="img/humun/路飞.jpg" src="img/humun/路飞.jpg"
                                 style="width: 200px; height: 259px;"
                                 alt="通用的占位符缩略图" class="lazyloading">
                            <div class="caption">
                                <h3 id="driver1"><%= list.get(0).getUsername()%>
                                </h3>
                                <p>星级评比：</p>
                                <p>
                                    <a href="#" class="btn btn-primary" role="button" id="btn1" onclick="model1.b(1)">
                                        查看详情
                                    </a>
                                    <a href="javascript:void(0)" class="btn btn-default" role="button" id="appointment"
                                       onclick="editinfo()">
                                        预约
                                    </a>
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-3">
                        <div class="thumbnail">
                            <img guoyu-src="img/humun/娜美.jpg" class="lazyloading" src="img/humun/娜美.jpg"
                                 style="width: 200px; height: 259px;"
                                 alt="通用的占位符缩略图">
                            <div class="caption">
                                <h3><%= list.get(1).getUsername()%>
                                </h3>
                                <p>星级评比：</p>
                                <p>
                                    <a href="#" class="btn btn-primary" role="button" id="btn1" onclick="model1.b(2)">
                                        查看详情
                                    </a>
                                    <a href="#" class="btn btn-default" role="button" id="appointment">
                                        预约
                                    </a>
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-3">
                        <div class="thumbnail">
                            <img guoyu-src="img/humun/香吉士.jpg" class="lazyloading" src="img/humun/香吉士.jpg"
                                 style="width: 200px; height: 259px;"
                                 alt="通用的占位符缩略图">
                            <div class="caption">
                                <h3><%= list.get(2).getUsername()%>
                                </h3>
                                <p>星级评比：</p>
                                <p>
                                    <a href="#" class="btn btn-primary" role="button" id="btn1" onclick="model1.b(3)">
                                        查看详情
                                    </a>
                                    <a href="#" class="btn btn-default" role="button" id="appointment">
                                        预约
                                    </a>
                                </p>
                            </div>
                        </div>
                    </div>--%>

                    <c:forEach items="${sessionScope.drivers}" var="driver">
                        <div class="col-sm-6 col-md-3">
                            <div class="thumbnail">
                                <img guoyu-src="img/humun/金木研.jpg" class="lazyloading" src="img/humun/金木研.jpg"
                                     style="width: 200px; height: 259px;"
                                     alt="通用的占位符缩略图">
                                <div class="caption">
                                    <h3>${driver.username}</h3>
                                    <p>星级评比：</p>
                                    <p>
                                        <a href="#" class="btn btn-primary" role="button">
                                            查看详情
                                        </a>
                                        <a href="${pageContext.request.contextPath}/bookcarsServlet?d_id=${driver.d_id}">
                                            预约
                                        </a>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </c:forEach>

                </div>
                <div class="details" id="details1">
                    <span class="title">工作宣言</span>
                    <p>为人民服务</p>
                    <div id="map" class="map"></div>
                </div>
                <div class="row">
                    <div class="col-sm-6 col-md-3">
                        <div class="thumbnail">
                            <img guoyu-src="img/humun/索隆.jpg" class="lazyloading" src="img/humun/索隆.jpg"
                                 style="width: 200px; height: 259px;"
                                 alt="通用的占位符缩略图">
                            <div class="caption">
                                <h3>索隆</h3>
                                <p>星级评比：</p>
                                <p>
                                    <a href="#" class="btn btn-primary" role="button" id="btn1" onclick="model1.b(5)">
                                        查看详情
                                    </a>
                                    <a href="#" class="btn btn-default" role="button" id="appointment">
                                        预约
                                    </a>
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-3">
                        <div class="thumbnail">
                            <img guoyu-src="img/humun/庞木柳.jpg" class="lazyloading" src="img/humun/庞木柳.jpg"
                                 style="width: 200px; height: 259px;"
                                 alt="通用的占位符缩略图">
                            <div class="caption">
                                <h3>庞木柳</h3>
                                <p>星级评比：</p>
                                <p>
                                    <a href="#" class="btn btn-primary" role="button" id="btn1" onclick="model1.b(6)">
                                        查看详情
                                    </a>
                                    <a href="#" class="btn btn-default" role="button" id="appointment">
                                        预约
                                    </a>
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-3">
                        <div class="thumbnail">
                            <img guoyu-src="img/humun/大黑.jpg" class="lazyloading" src="img/humun/大黑.jpg"
                                 style="width: 200px; height: 259px;"
                                 alt="通用的占位符缩略图">
                            <div class="caption">
                                <h3>大黑</h3>
                                <p>星级评比：</p>
                                <p>
                                    <a href="#" class="btn btn-primary" role="button" id="btn1" onclick="model1.b(7)">
                                        查看详情
                                    </a>
                                    <a href="#" class="btn btn-default" role="button" id="appointment">
                                        预约
                                    </a>
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-3">
                        <div class="thumbnail">
                            <img guoyu-src="img/humun/董香.jpg" class="lazyloading" src="img/humun/董香.jpg"
                                 style="width: 200px; height: 259px;"
                                 alt="通用的占位符缩略图">
                            <div class="caption">
                                <h3>董香</h3>
                                <p>星级评比：</p>
                                <p>
                                    <a href="#" class="btn btn-primary" role="button" id="btn1" onclick="model11.b(8)">
                                        查看详情
                                    </a>
                                    <a href="#" class="btn btn-default" role="button" id="appointment">
                                        预约
                                    </a>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-6 col-md-3">
                        <div class="thumbnail">
                            <img guoyu-src="img/humun/IG_WXC.jpg" class="lazyloading" src="img/humun/IG_WXC.jpg"
                                 style="width: 200px; height: 259px;"
                                 alt="通用的占位符缩略图">
                            <div class="caption">
                                <h3>王思聪</h3>
                                <p>星级评比：</p>
                                <p>
                                    <a href="#" class="btn btn-primary" role="button" id="btn1" onclick="model1.b(9)">
                                        查看详情
                                    </a>
                                    <a href="#" class="btn btn-default" role="button" id="appointment">
                                        预约
                                    </a>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>




<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">预约单</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal">
                    <div class="form-group">
                        <label class="col-sm-2 control-label" style="text-align: center">用户</label>
                        <div class="col-sm-2">
                            <p class="form-control-static" style="text-align: center" id="username">${sessionScope.user.getUsername}</p>
                        </div>
                        <label class="col-sm-2 col-sm-offset-2 control-label" style="text-align: center">车长</label>
                        <div class="col-sm-2">
                            <input type="text" name="drivername" style="text-align: center" id="dirvername" disabled>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 control-label" style="text-align: center">出发地</label>
                        <div class="col-xs-2">
                            <input type="text" name="start" style="text-align: center" id="start">
                        </div>
                        <label class="col-sm-2 col-sm-offset-2 control-label" style="text-align: center">目的地</label>
                        <div class="col-xs-2">
                            <input type="text" name="end" style="text-align: center" id="end">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 control-label" style="text-align: center">出发时间</label>
                        <div class="col-xs-2">
                            <input type="text" name="start_time" style="text-align: center" id="start_time">
                        </div>
                        <label class="col-sm-2 col-sm-offset-2 control-label" style="text-align: center">到达时间</label>
                        <div class="col-xs-2">
                            <input type="text" name="end_time" style="text-align: center" id="end_time">
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <input type="button" class="btn btn-primary" onclick="Order()">提交订单
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>
</body>
</html>
<script type="text/javascript">
    var aImg = document.querySelectorAll('img');
    var len = aImg.length;
    var n = 0;//存储图片加载到的位置，避免每次都从第一张图片开始遍历
    window.onscroll = function () {
        var seeHeight = document.documentElement.clientHeight;
        var scrollTop = document.body.scrollTop || document.documentElement.scrollTop;
        for (var i = n; i < len; i++) {
            if (aImg[i].offsetTop < seeHeight + scrollTop) {
                if (aImg[i].getAttribute('src') == '') {
                    aImg[i].src = aImg[i].getAttribute('guoyu-src');
                }
                n = i + 1;
                console.log('n = ' + n);
            }
        }
    }

    function editinfo(){/*点击修改按钮，给模态框加载信息并且弹出模态框*/
        var dirvername = document.getElementById("driver1");
        $("#dirvername").val(dirvername);
        $('#myModal').modal({show:true})
    }

    function Order() {
        var username = document.getElementById("username").value;
        var drivername = document.getElementById("drivername").value;
        var start = document.getElementById("start").value;
        var end = document.getElementById("end").value;
        var start_time = document.getElementById("start_time").value;
        var end_time = document.getElementById("end_time").value;
        $.ajax({
            url: "${pageContext.request.contextPath}/",
            type: "post",
            async: true,
            cache: false,
            data: {
                "username": username,
                "drivername": drivername,
                "start": start,
                "end": end,
                "start_time": start_time,
                "end_time": end_time
            },
            success: function (data) {
                alert("预约成功");

            },
            error: function (e) {
                alert("预约失败");
            }

        })
    }
</script>
<script src="js/map.js"></script>