<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2020/6/8
  Time: 9:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>企业网站模板</title>
    <%--静态包含base标签，css样式，jQuery文件--%>
    <%@include file="/html/common/source.jsp"%>
</head>
<body class="error-container error-dark-box">
<div class="layout">
    <!--===========layout-header================-->
    <%--  静态包含页面头部--%>
    <%@include file="/html/common/head.jsp"%>
    <!--mobile header start-->
    <div class="m-header">
        <div class="am-g am-show-sm-only">
            <div class="am-u-sm-2">
                <div class="menu-bars">
                    <a href="#doc-oc-demo1" data-am-offcanvas="{effect: 'push'}"><i class="am-menu-toggle-icon am-icon-bars"></i></a>
                    <!-- 侧边栏内容 -->
                    <%--静态包含导航栏--%>
                    <%@include file="/html/common/navigation.jsp"%>
                </div>
            </div>
            <div class="am-u-sm-5 am-u-end">
                <div class="m-logo">
                    <a href=""><img src="../assets/images/logo.png" alt=""></a>
                </div>
            </div>
        </div>
        <!--mobile header end-->
    </div>




    <!--===========layout-container================-->
    <div class="layout-container">
        <div class="error error-dark">
            <div class="container">
                <h2>404</h2>
                <p>Page Not Found</p>
                <p>对不起,没有找到您所需要的页面,可能是URL不确定,或者页面已被移除。</p>
                <button type="button" class="am-btn am-btn-secondary" onclick="window.location.href='../index.html'">Home</button>
            </div>
        </div>
    </div>
</div>


</body>

</html>

