<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/client/driver/css/bootstrap.min.css">
    <script src="${pageContext.request.contextPath}/client/driver/js/jquery.js"></script>
    <script src="${pageContext.request.contextPath}/client/driver/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/client/driver/css/mycss.css">
    <title>鱼の店</title>
</head>
<style type="text/css">

</style>
<body>
<nav class=" navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container">
        <div class=""><a class="navbar-brand active"
                         href="${pageContext.request.contextPath}/client/driver/Dirverindex.jsp" id="link">鱼の味</a></div>
        <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav" id="mytab">
                <li><a href="${pageContext.request.contextPath}/client/driver/Dirverindex.jsp" id="link">主页</a></li>
                <li class="active"><a href="${pageContext.request.contextPath}/client/driver/Orderlist.jsp" id="link">订单管理</a>
                </li>
                <li><a href="${pageContext.request.contextPath}/client/driver/Infolist.jsp" id="link">消息管理</a></li>
                <li><a href="${pageContext.request.contextPath}/client/driver/Accont.jsp" id="link">账号管理</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="${pageContext.request.contextPath}/client/driver/Accont.jsp"><img src="123.png"
                                                                                               class="round_icon"
                                                                                               alt=""></a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" id="admin">
                        ${user.username}<span class="caret"></span></a>
                    <ul class="dropdown-menu dropdown-content" role="menu">
                        <li><a href="${pageContext.request.contextPath}/LogoutServlet">退出</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>
<div id="main" class="container">
    <div class="table-responsive">
        <table class="table table-hover" id="table1">
            <h3 align="center">订单列表</h3>
            <thead>
            <tr>
                <th>订单号</th>
                <th>客户</th>
                <th>出发地</th>
                <th>目的地</th>
                <th>状态</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${sessionScope.orders}" var="orders">
                <tr class="success" onclick="editinfo(this)" id="td1">
                    <td id="IdOrder">${orders.getIdOrders()}</td>
                    <td id="driver">${orders.getD_id()}</td>
                    <td id="Start">${orders.getStart()}</td>
                    <td id="End">${orders.getEnd()}</td>
                    <td id="td1">成功</td>
                </tr>
            </c:forEach>

            </tbody>
        </table>
    </div>
</div>

<!-- 模态框 -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">订单详情</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal">
                    <div class="form-group">
                        <label class="col-sm-2 control-label" style="text-align: center">用户</label>
                        <div class="col-sm-2">
                            <input type="text" name="username" style="text-align: center" id="username" disabled>
                        </div>
                        <label class="col-sm-2 col-sm-offset-2 control-label" style="text-align: center">车长</label>
                        <div class="col-sm-2">
                            <input type="text" name="drivername" style="text-align: center" id="dirvername" disabled>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 control-label" style="text-align: center">出发地</label>
                        <div class="col-xs-2">
                            <input type="text" name="start" style="text-align: center" id="start" disabled>
                        </div>
                        <label class="col-sm-2 col-sm-offset-2 control-label" style="text-align: center">目的地</label>
                        <div class="col-xs-2">
                            <input type="text" name="end" style="text-align: center" id="end" disabled>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary">确定</button>
            </div>
        </div>
    </div>
</div>


<script>
    function editinfo(obj) {

        var order_id = document.getElementById('td1').rows[td1].cells[0].innerHTML;
        var dirvername = document.getElementById('td1').rows[td1].cells[1].innerHTML;
        var start = document.getElementById('td1').rows[td1].cells[2].innerHTML;
        var end = document.getElementById('td1').rows[td1].cells[3].innerHTML;
        $("#username").val(order_id);
        $("#dirvername").val(dirvername);
        $("#start").val(start);
        $("#end").val(end);
        $('#myModal').modal({show: true})
    }
</script>
</body>
</html>