<%--
  Created by IntelliJ IDEA.
  User: 83491
  Date: 2018/11/12
  Time: 1:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>司机列表</title>
</head>
<body>
<table>
    <thead>
    <tr>
        <th>用户名</th>
        <th>密码</th>
        <th>邮箱</th>
        <th>手机号</th>
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
</body>
</html>
