<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/client/css/carerlist.css"/>
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/client/js/carerlist.js"></script>
</head>
<body>
<div class="container">
    <div class="row">
        <c:forEach items="${sessionScope.list}" var="list" begin="0" end="${sessionScope.list.size()}">
        <div class="col-sm-6 col-md-3">
            <div class="thumbnail">
                <img guoyu-src="${pageContext.request.contextPath}/client/img/humun/路飞.jpg"
                     src="${pageContext.request.contextPath}/client/img/humun/路飞.jpg"
                     alt="通用的占位符缩略图" class="lazyloading">
                <div class="caption">
                    <h3>${list.getUsername}</h3>
                    <p>星级评比：</p>
                    <p>
                        <a href="#" class="btn btn-primary" role="button">
                            查看详情
                        </a>
                        <a href="javascript:void(0)" class="btn btn-default" role="button" id="appointment"
                           onclick="downorder()">
                            预约
                        </a>
                    </p>
                </div>
            </div>
        </div>
        </c:forEach>
        <div class="col-sm-6 col-md-3">
            <div class="thumbnail">
                <img guoyu-src="${pageContext.request.contextPath}/client/img/humun/娜美.jpg" class="lazyloading"
                     src="${pageContext.request.contextPath}/client/img/humun/娜美.jpg"
                     alt="通用的占位符缩略图">
                <div class="caption">
                    <h3>娜美</h3>
                    <p>星级评比：</p>
                    <p>
                        <a href="#" class="btn btn-primary" role="button">
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
                <img guoyu-src="${pageContext.request.contextPath}/client/img/humun/香吉士.jpg" class="lazyloading"
                     src="${pageContext.request.contextPath}/client/img/humun/香吉士.jpg"
                     alt="通用的占位符缩略图">
                <div class="caption">
                    <h3>香吉士</h3>
                    <p>星级评比：</p>
                    <p>
                        <a href="#" class="btn btn-primary" role="button">
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
                <img guoyu-src="${pageContext.request.contextPath}/client/img/humun/金木研.jpg" class="lazyloading"
                     src="${pageContext.request.contextPath}/client/img/humun/金木研.jpg"
                     alt="通用的占位符缩略图">
                <div class="caption">
                    <h3>金木研</h3>
                    <p>星级评比：</p>
                    <p>
                        <a href="#" class="btn btn-primary" role="button">
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
                <img guoyu-src="${pageContext.request.contextPath}/client/img/humun/索隆.jpg" class="lazyloading"
                     src="${pageContext.request.contextPath}/client/img/humun/索隆.jpg"
                     alt="通用的占位符缩略图">
                <div class="caption">
                    <h3>索隆</h3>
                    <p>星级评比：</p>
                    <p>
                        <a href="#" class="btn btn-primary" role="button">
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
                <img guoyu-src="${pageContext.request.contextPath}/client/img/humun/庞木柳.jpg" class="lazyloading"
                     src="${pageContext.request.contextPath}/client/img/humun/庞木柳.jpg"
                     alt="通用的占位符缩略图">
                <div class="caption">
                    <h3>庞木柳</h3>
                    <p>星级评比：</p>
                    <p>
                        <a href="#" class="btn btn-primary" role="button">
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
                <img guoyu-src="${pageContext.request.contextPath}/client/img/humun/大黑.jpg" class="lazyloading"
                     src="${pageContext.request.contextPath}/client/img/humun/大黑.jpg"
                     alt="通用的占位符缩略图">
                <div class="caption">
                    <h3>大黑</h3>
                    <p>星级评比：</p>
                    <p>
                        <a href="#" class="btn btn-primary" role="button">
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
                <img guoyu-src="${pageContext.request.contextPath}/client/img/humun/董香.jpg" class="lazyloading"
                     src="${pageContext.request.contextPath}/client/img/humun/董香.jpg"
                     alt="通用的占位符缩略图">
                <div class="caption">
                    <h3>董香</h3>
                    <p>星级评比：</p>
                    <p>
                        <a href="#" class="btn btn-primary" role="button">
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
                <img guoyu-src="${pageContext.request.contextPath}/client/img/humun/IG_WXC.jpg" class="lazyloading"
                     src="${pageContext.request.contextPath}/client/img/humun/IG_WXC.jpg"
                     alt="通用的占位符缩略图">
                <div class="caption">
                    <h3>王思聪</h3>
                    <p>星级评比：</p>
                    <p>
                        <a href="#" class="btn btn-primary" role="button">
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


<!-- 模态框（Modal） -->
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
                            <p class="form-control-static" style="text-align: center" id="username">大黑</p>
                        </div>
                        <label class="col-sm-2 col-sm-offset-2 control-label" style="text-align: center">车长</label>
                        <div class="col-sm-2">
                            <p class="form-control-static" style="text-align: center" id="drivername">王思聪</p>
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
    };

    function downorder() {
        $('#myModal').modal({show: true})
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