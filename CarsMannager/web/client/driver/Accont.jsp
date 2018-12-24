<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/client/driver/css/bootstrap.min.css">
    <script src="${pageContext.request.contextPath}/client/driver/js/jquery.js"></script>
    <script src="${pageContext.request.contextPath}/client/driver/js/bootstrap.min.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/client/driver/css/mycss.css">
    <title>鱼の店</title>
</head>
<body>
<nav class=" navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container">
        <div class="">
            <a class="navbar-brand active" href="${pageContext.request.contextPath}/client/driver/Dirverindex.jsp"
               id="link">鱼の味</a>
        </div>
        <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav" id="mytab">
                <li><a href="${pageContext.request.contextPath}/client/driver/Dirverindex.jsp" id="link">主页</a></li>
                <li><a href="${pageContext.request.contextPath}/client/driver/Orderlist.jsp" id="link">订单管理</a></li>
                <li><a href="${pageContext.request.contextPath}/client/driver/Infolist.jsp" id="link">消息管理</a></li>
                <li class="active"><a href="${pageContext.request.contextPath}/client/driver/Accont.jsp"
                                      id="link">账号管理</a></li>
            </ul>

            <ul class="nav navbar-nav navbar-right">
                <li><a href="Infolist.jsp"><img src="123.png" class="round_icon" alt=""></a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" id="admin">${driver.username}<span
                            class="caret"></span></a>
                    <ul class="dropdown-menu dropdown-content" role="menu">
                        <li><a href="${pageContext.request.contextPath}/LogoutServlet">退出</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>
<div id="main" class="container">
    <form class="form-horizontal">
        <div class="form-group">
            <label class="col-sm-2 control-label">用户名</label>
            <div class="col-sm-2">
                <p class="form-control-static" style="text-align: center">${driver.username}</p>
            </div>
            <label class="col-sm-2  control-label">车长姓名</label>
            <div class="col-sm-2">
                <p class="form-control-static" style="text-align: center">${driver.username}</p>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">工号</label>
            <div class="col-sm-2">
                <p class="form-control-static" style="text-align: center">${driver.d_id}</p>
            </div>
            <label class="col-sm-2  control-label">性别</label>
            <div class="col-sm-2">
                <p class="form-control-static" style="text-align: center">${driver.gender}</p>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">Email</label>
            <div class="col-sm-2">
                <p class="form-control-static" style="text-align: center">${driver.email}</p>
            </div>
            <label class="col-sm-2  control-label">新Email</label>
            <div class="col-sm-2">
                <input type="text" name="email" id="email">
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 control-label">手机号</label>
            <div class="col-sm-2">
                <p class="form-control-static" style="text-align: center">${driver.phone}</p>
            </div>
            <label class="col-sm-2  control-label">新手机号</label>
            <div class="col-xs-2">
                <input type="text" name="phone" id="phone">
            </div>
        </div>
    </form>
    <div class="col-sm-offset-3">
        <button type="button" class="btn btn-primary" onclick="editinfo(this)">确定</button>
        <button type="button" class="btn btn-primary" data-toggle="modal" style="margin-left:250px;"
                data-target="#Modal">修改密码
        </button>
    </div>
    <div class="col-sm-offset-3">

    </div>

</div>

<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title" id="myModalLabel">更改内容</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" action="">
                    <div class="form-group">
                        <label class="col-sm-2 control-label">新Email</label>
                        <div class="col-sm-2">
                            <input type="text" name="newemail" style="text-align: center" id="newemail" disabled>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">新手机号</label>
                        <div class="col-sm-2">
                            <input type="text" name="newphone" style="text-align: center" id="newphone" disabled>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary">提交更改</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div>

<div class="modal fade" id="Modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title" id="myModalLabel" style="text-align: center">更改密码</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal">
                    <div class="form-group">
                        <label class="col-sm-2 col-sm-offset-3 control-label" style="text-align: center">旧密码</label>
                        <div class="col-sm-2">
                            <input type="password" name="password" style="text-align: center" id="password">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 col-sm-offset-3 control-label" style="text-align: center">新密码</label>
                        <div class="col-sm-2">
                            <input type="password" name="newpassword" style="text-align: center" id="newpassword">
                        </div>
                        <input type="hidden" name="username" value=${user.username}>
                    </div>
                    <input type="hidden" id="admin" value=${user.username}>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" onclick="update()">提交更改</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div>

<script>
    function editinfo(obj) {/*点击修改按钮，给模态框加载信息并且弹出模态框*/
        $('#myModal').modal({show: true})
        var tds = $(obj).parent().parent().find('input');
        var a = document.getElementById("email").value;
        var b = document.getElementById("phone").value;
        $("#newemail").val(a);
        $("#newphone").val(b);
    }

    function update() {
        var username = document.getElementById("admin").value;
        var password = document.getElementById("newpassword").value;
        $.ajax({
            url: "${pageContext.request.contextPath}/passwordServlet",
            type: "post",
            async: true,
            cache: false,
            data: {
                "username": username,
                "password": password,
            },
            success: function (data) {
                alert("注册成功");
                window.location.href = "${pageContext.request.contextPath}/client/index1.jsp";
            },
            error: function (e) {
                alert("注册失败");
            }
        })
    }

</script>
</body>
</html>