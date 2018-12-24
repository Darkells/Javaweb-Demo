<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title></title>
    <link href="css/zhuce.css" rel="stylesheet"/>
    <script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" src="js/stu_register.js"></script>
    <script type="text/javascript">
        window.onload = function () {
//通过id获取页面button的onclick点击事件
            document.getElementById("checkusername").onclick = function () {
                var username = document.getElementById("stu_name").value;
                //1.创建ajax对象
                var xhr = ajaxFunction();
                xhr.onreadystatechange = function () {
                    //处理后台返回的数据
                    if (xhr.readyState == 4) {
                        if (xhr.status == 200) {
                            var data = xhr.responseText;
                            document.getElementById("divcheck").innerHTML = data;
                        }
                    }
                }
                //规定发送数据的形式（post/get），url，以及传输方式(同步/异步)
                xhr.open("post", "${pageContext.request.contextPath}/CheckServlet?timeStamp=" + new Date().getTime(), true);
                //post方式需要加下边这句，get方式不需要
                xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
                //将页面输入数据发送到后台
                xhr.send("username=" + username);
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

        }
    </script>
</head>
<body>
<div class="container">
    <dl class="zhuce_header">
        <dt>注册</dt>
        <dd>
            我有账号，
            <a href="javascript:void(0)">登录</a>
        </dd>
    </dl>
    <dl class="regliketab">
        <dt id="stu_zhuce" class="stu_zhuce on" onclick="window.location.href = 'stu_register.jsp'">
            <a href="#" id="">学生注册</a>
        </dt>
        <dt id="carer_zhuce" class="carer_zhuce" onclick="window.location.href = 'carer_register.jsp'">
            <a href="#">司机注册</a>
        </dt>
    </dl>
    <div class="reg_form">
        <form method="post" action="" id="stu_form" name="stu_form">
            <dl class="dl_1">
                <dt>
                    用户名
                    <span>*</span>
                </dt>
                <dd>
                    <i>
                        <input id="stu_name" class="txt_input" type="text" placeholder="请输入您要注册的用户名" name="stu_name"
                               style="background: url(img/icons8-性别中性用户-50.png) no-repeat;background-size: 18px 18px;background-position: 5px 6px;"/>
                    </i>
                    <span id="name_notice"><input type="button" name="checkusername" value="查看用户名" id="checkusername"/></span>
                    <span id="divcheck"></span>
                </dd>

            </dl>
            <dl>
                <dt>
                    密码
                    <span>*</span>
                </dt>
                <dd>
                    <i>
                        <input id="stu_pwd" class="txt_input" type="password" placeholder="请输入您要注册的密码" name="stu_pwd"
                               style="background: url(img/icons8-密码-50.png) no-repeat;background-size: 18px 18px;background-position: 5px 6px;"/>
                    </i>
                    <span id="pwd_notice"></span>
                </dd>
            </dl>
            <dl>
                <dt>
                    确认密码
                    <span>*</span>
                </dt>
                <dd>
                    <i>
                        <input id="stu_pwd2" class="txt_input" type="password" placeholder="再次确认" name="stu_pwd"
                               style="background: url(img/icons8-密码-50.png) no-repeat;background-size: 18px 18px;background-position: 5px 6px;"/>
                    </i>
                    <span id="pwd_notice"></span>
                </dd>
            </dl>
            <dl>
                <dt>
                    邮箱
                    <span>*</span>
                </dt>
                <dd>
                    <i>
                        <input id="stu_email" class="txt_input" type="text" placeholder="请输入您的邮箱" name="stu_email"
                               style="background: url(img/icons8-集群信息-50.png) no-repeat;background-size: 18px 18px;background-position: 5px 6px;"/>
                    </i>
                    <span id="email_notice"></span>
                </dd>
            </dl>
            <dl>
                <dt>
                    手机号
                    <span>*</span>
                </dt>
                <dd>
                    <i>
                        <input id="stu_phone" class="txt_input" type="text" placeholder="请输入您的手机" name="stu_phone"
                               style="background: url(img/icons8-集群信息-50.png) no-repeat;background-size: 18px 18px;background-position: 5px 6px;"/>
                    </i>
                    <span id="phone_notice"></span>
                </dd>
            </dl>
            <dl>
                <dt>
                    性别
                    <span>*</span>
                </dt>
                <dd>
                    <i class="sex">
                        <span>男</span><input class="txt_input1" type="radio" name="sex" value="男"/>
                    </i>
                    <i class="sex">
                        <span>女</span><input class="txt_input1" type="radio" name="sex" value="女"/>
                    </i>
                    <span id="email_notice"></span>
                </dd>
            </dl>
            <dl>
                <dt class="code_title">
                    验证码
                    <span>*</span>
                </dt>
                <dd class="canvas_dd">
                    <i>
                        <input id="seccode_stu" class="txt_input seccode_stu" type="text" name="seccode_stu"/>
                    </i>
                    <span class="canvas_span">
								<canvas id="myCanvas" width="80px" height="30px" class="myCanvas"></canvas>
								<script>
									var myCanvas = (function () {
                                        var code = " ";
                                        var createCode = function () {
                                            var codelength = 4;
                                            var codeValue = document.getElementById("myCanvas").value;
                                            var canvas = document.getElementById("myCanvas");
                                            var selectChar = new Array(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'l', 'i', 'j', 'k', 'm',
                                                'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', 'A', 'B', 'C', 'D', 'E',
                                                'F', 'G', 'H', 'L', 'I', 'J', 'K', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W',
                                                'X', 'Y', 'Z');

                                            for (var i = 0; i < codelength; i++) {
                                                var codeIndex = Math.floor(Math.random() * 62);
                                                code += selectChar[codeIndex];
                                            }
                                            codeValue = code;
                                            if (canvas) {
                                                var ctx = canvas.getContext('2d');
                                                ctx.fillStyle = "#FFFFFF";
                                                ctx.rect(0, 0, 70, 27);
                                                ctx.font = "20px arial";

                                                var gradient = ctx.createLinearGradient(0, 0, canvas.width, 0);
                                                gradient.addColorStop("0", "magenta");
                                                gradient.addColorStop("0.5", "blue");
                                                gradient.addColorStop("1", "red");

                                                ctx.strokeStyle = gradient;
                                                ctx.strokeText(code, 5, 20);
                                            }
                                        }
                                        return {
                                            createCode: createCode,
                                        }
                                    })();
                                    myCanvas.createCode();
								</script>
							</span>
                    <span class="code_change" style="cursor: pointer;">
								看不清？换一换
							</span>
                    <span id="pwd_notice"></span>
                </dd>
            </dl>
            <dl>
                <dt></dt>
                <dd class="submit_box">
                    <input class="tijiao" type="button"  value="注册" onclick="register()"></input>
                </dd>
            </dl>
        </form>
    </div>
</div>
<div class="bottom_box">
    <div>
        <a href="#">关于我们</a>
        |
        <a href="#">版权信息</a>
        |
        <a href="#">合作伙伴</a>
        |
        <a href="#">招聘信息</a>
        |
        <a href="#">联系我们</a>
        |
        <a href="#">意见反馈</a>
        |
        <a href="#">网站地图</a>
        |
        <a href="#">网站帮助</a>
        |
        <a href="#">rss订阅</a>
    </div>
    <p class="fontArial">
        Copyright@
        <script>document.write(new Date().getFullYear());</script>
        Ricardom.All rights reserved
    </p>
</div>

</body>
<script>
    function register() {
        var username = document.getElementById("stu_name").value;
        var password = document.getElementById("stu_pwd").value;
        var email = document.getElementById("stu_email").value;
        var phone = document.getElementById("stu_phone").value;
        var gender = $("input[name='sex']:checked").val();
        $.ajax({
            url:"${pageContext.request.contextPath}/StuRegisterServlet",
            type:"post",
            async:true,
            cache:false,
            data:{
                "username" : username,
                "password" : password,
                "email" : email,
                "phone" : phone,
                "gender" : gender
            },
            success:function (data) {
                    alert("注册成功");
                    window.location.href="${pageContext.request.contextPath}/client/index1.jsp";
            },
            error:function (e) {
                alert("注册失败");
            }

        })
    }


</script>
</html>
