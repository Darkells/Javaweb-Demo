<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" href="css/carer_list.css"/>
    <link rel="stylesheet" href="css/manager_container.css"/>
    <script src="js/list.js"></script>
    <link rel="stylesheet" href="css/list.css"/>
</head>
<body>
<div class="wrapper">
    <div class="header">
				<span class="header_img">
					<img src="img/title.png"/>
				</span>
        <ul>
            <li class="li_1">联系人</li>
            <li class="li_2">邮件</li>
            <li class="li_3">短信</li>
        </ul>
        <a href="#" class="advertising">广告推广中心</a>
        <input type="text" placeholder="快速搜索" class="find"/>
        <span class="manager_img">
					<img src="img/humun/路飞头像.jpg" alt="管理员头像"/>
				</span>
        <div class="manager_hidden">
            <p class="manager_number">工号:<span></span></p>
            <p class="manager_apart">部门:<span></span></p>
            <p>
                <input type="button" value="退出" class="exit"/>
            </p>
        </div>
    </div>
</div>
<div class="contact">
    <div class="contact_left">
        <div class="find_carer_container">
            <div class="find_carer">
                <span><img src="img/manager/icons8-查找男性用户-50.png"/> </span>筛选联系人
            </div>
            <div class="find_carer_list">
                <ul>
                    <li onclick="window.location.href='carer_list.html'" class="on"><span class="photo"><img
                            src="img/manager/icons8-区块链新标志-50.png"></span>全部联系人<span></span></li>
                    <li><span class="photo"><img src="img/manager/icons8-星-50.png"/> </span> 关注的<span></span></li>
                    <li><span class="photo"><img src="img/manager/icons8-更多-50.png"/> </span> 未分组的<span></span></li>
                </ul>
            </div>
        </div>
        <div class="create_group_container">
            <menu>
                <div class="create_group">
                    <span><img src="img/manager/icons8-加法-filled-50.png"/></span>创建群组
                </div>
                <div class="group_list">
                    <span class="menu-parent">普通</span>
                    <input type="checkbox" value="" id="menu_list"/>
                    <div class="menu_list">
                        <span class="menu-child"><img src="img/humun/icons8-女性-filled-50.png"/> 新注册车长</span>
                        <span class="menu-child"><img src="img/humun/icons8-女性-filled-50.png"/>综管部</span>
                        <span class="menu-child"><img src="img/humun/icons8-女性-filled-50.png"/>服务部</span>
                    </div>
                </div>
            </menu>
        </div>
    </div>
    <div class="page" id="page">
        <div class="wrap">
            <div class="alluser_header">
                <div class="title_container">
                    <span class="title">全部雇员</span>
                    <span class="title_photo">
						<img src="img/humun/icons8-女性-filled-50.png"/>
					</span>
                    <div class="buttons">
                        <input type="button" value="添加" class="add"/>
                        <input type="button" value="导入" class="import"/>
                        <input type="button" value="合并" class="merge"/>
                    </div>
                    <input class="export" type="button"/>
                </div>
            </div>
            <table width="1159" cellspacing="0" cellpadding="0" align="center" border="0" bordercolorlight="lightgray">
                <tr align="center" bgcolor="#064e81" height="35" class="tr_1">
                    <td width="10%">
                        <div class="tr_1_div"><input type="checkbox" value=""/></div>
                    </td>
                    <td width="10%">姓名</td>
                    <td width="20%">邮箱</td>
                    <td width="20%">手机</td>
                    <td width="10%">标签</td>
                    <td width="10%">职位</td>
                    <td width="15%">入职时间</td>
                    <td width="5%">
                        <div>修改</div>
                    </td>
                </tr>
                <!--判断输出 -->
            </table>
            <table class="table_container" width="1158" border="0" cellpadding="0" cellspacing="0">
                <c:forEach items="${sessionScope.drivers}" var="drivers">
                    <tr align="center" class="tr_2" height="20">
                        <td width="10%">
                            <div class="tr_2_div"><img src="" alt="#"/> <!-- 头像--></div>
                        </td>
                        <td width="10%" id="username">${drivers.username}</td>
                        <td width="20%">${drivers.email}</td>
                        <td width="20%">${drivers.phone}</td>
                        <td width="10%" id="d_id">${dirvers.d_id}</td>
                        <td width="10%"><!-- 职位--></td>
                        <td width="15%"><!-- 入职时间--></td>
                        <td width="5%"><a href="javascript:void(0)" onclick="modify.showFloat()">修改</a></td>
                    </tr>
                </c:forEach>
            </table>
            <div class="doing" id="doing"></div>
            <div class="modify" id="modify">
				<span>
					<img src="img/icons8-取消-50 (1).png" class="delete" onclick="modify.showNo()"/>
				</span>
                <div class="modify_container">
                    <form action="" method="post" class="modify_form">
                        <div>
                            <div class="div1">
                                <p>
                                <div>
                                    <label>姓名</label>
                                    <span>*</span>
                                    <input type="text" value=""/>
                                </div>
                                </p>
                                <p>
                                <div>
                                    <label>职位</label>
                                    <span>*</span>
                                    <input type="text" value=""/>
                                </div>
                                </p>
                                <p>
                                <div>
                                    <label>邮箱</label>
                                    <span>*</span>
                                    <input type="text" value=""/>
                                </div>
                                </p>
                                <p>
                                <div>
                                    <label>手机</label>
                                    <span>*</span>
                                    <input type="text" value=""/>
                                </div>
                                </p>
                                <p>
                                <div>
                                    <label>地址</label>
                                    <span>*</span>
                                    <input type="text" value=""/>
                                </div>
                                </p>
                            </div>
                            <div class="div2">
                                <img src=""/>
                                <br/>
                                <input type="file"/>
                            </div>
                        </div>
                        <div class="div3">
                            <input type="submit" value="提交"/>
                            <input type="button" value="解雇" onclick="fire()"/>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>

<script>
    function fire() {
        var username = document.getElementById("username").innerHTML;
        var xhr = ajaxFunction();
        xhr.open("post", "${pageContext.request.contextPath}/fireServlet?timeStamp=" + new Date().getTime(), true);
        xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        xhr.send("username=" + username);
        xhr.onreadystatechange = function () {
            if (xhr.readyState == 4) {
                if (xhr.status == 200){
                    var data = xhr.responseText;
                    if (data == "success"){
                        alert("解雇成功");
                        window.location.href="${pageContext.request.contextPath}/driverlistServlet";
                    }else{
                        alert("解雇失败");

                }
            }
        }
    }
    }

    function ajaxFunction() {
        var xmlHttp;
        try {
            xmlHttp = new XMLHttpRequest();
        } catch (e) {
            try {
                xmlHttp = new ActiveXObject("Msxm12.XMLHTTP");
            } catch (e) {
                try {
                    xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
                } catch (e) {
                }
            }
        }
        return xmlHttp;
    }
</script>
</html>
