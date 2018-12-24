<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>预约 校车</title>
</head>


<body>
<form method="post" role="form" action="${pageContext.request.contextPath}/bookcarsServlet">
    <input type="hidden" name="uid" value="${user.uid}">
    <input type="hidden" name="d_id" value="${d_id}">
    <div class="form-group">
        <label for="name">出发地</label>
        <input type="text" class="form-control" id="start" name="start"
               placeholder="请输入出发地">
    </div>
    <div class="form-group">
        <label for="name">目的地</label>
        <input type="text" class="form-control" id="end" name="end" placeholder="请输入目的地">
    </div>
    <div class="form-group">
        <label for="name">出发时间</label>
        <input type="text" class="form-control" id="s_time" name="s_time" placeholder="请输入出发时间">
    </div>
    <div class="form-group">
        <label for="name">结束时间</label>
        <input type="text" class="form-control" id="e_time" name="e_time" placeholder="请输入结束时间">
    </div>
    <input type="submit" name="">
</form>

</body>
</html>