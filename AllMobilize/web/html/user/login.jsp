<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2020/6/8
  Time: 9:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <%--静态包含base标签，css样式，jQuery文件--%>
    <%@include file="/html/common/source.jsp"%>
    <script>
        $(function () {
            $("#username").blur(function () {
                var username = this.value;
                CryptoJs.SHA256("");
                $.getJSON("http://localhost:8080/AllMobilize_war_exploded/UserInfoServlet","action=existsUserName&username="+username,function (data) {
                    console.log(data.flag);

                    if (!data.flag){
                        $("#message").html(data.msg);
                    }else{
                        $("#message").html("");
                    }
                })
            });

            $("#login").click(function () {
                $.post("UserInfoServlet?action=login",$("#loginForm").serialize(),function (data) {
                    console.log(data.flag);

                    if (data.flag){
                        location.href = "index.jsp";
                    }else{
                        $("#message").html(data.message);
                    }
                })
            })
        })

    </script>
</head>
<body class="login-container">
<div class="login-box">
    <div class="logo-img">
        <img src="assets/images/logo2_03.png" alt="" />
    </div>
    <form id="loginForm" action="" method="post" class="am-form" data-am-validator>
        <div class="am-form-group">
            <label for="username"><i class="am-icon-user"></i></label>
            <input type="text" id="username" name="username" minlength="3" placeholder="输入用户名（至少 3 个字符）" value="${sessionScope.username}" required/>
        </div>

        <div class="am-form-group">
            <label for="password"><i class="am-icon-key"></i></label>
            <input type="password" id="password" name="password" placeholder="输入密码" required/>
        </div>
        <div><input type="checkbox" > 记住密码？
        <a href="index.jsp" style="float: right;">返回首页</a>
        </div>
        <div id="message" style="color: orangered"></div>
        <button class="am-btn am-btn-secondary"  type="button" id="login">登录</button>
    </form>
</div>
</body>
</html>

