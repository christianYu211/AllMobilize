<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2020/6/8
  Time: 10:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String basePath = request.getScheme()
            + "://"
            + request.getServerName()
            + ":"
            + request.getServerPort()
            + request.getContextPath()
            + "/";

    pageContext.setAttribute("basePath",basePath);
%>

<base href="<%=basePath%>">

<link rel="stylesheet" href="assets/css/amazeui.css" />
<link rel="stylesheet" href="assets/css/common.min.css" />
<link rel="stylesheet" href="assets/css/index.min.css" />
<link rel="stylesheet" href="assets/css/solution.min.css" />
<link rel="stylesheet" href="assets/css/about.min.css" />
<link rel="stylesheet" href="assets/css/example.min.css" />
<link rel="stylesheet" href="assets/css/join.min.css" />
<link rel="stylesheet" href="assets/css/news.min.css" />
<link rel="stylesheet" href="assets/css/other.min.css" />
<link rel="stylesheet" href="assets/css/product.min.css" />
<link rel="stylesheet" href="assets/css/contact.min.css" />


<script src="assets/js/jquery-2.1.0.js" charset="utf-8"></script>
<script src="assets/js/amazeui.js" charset="utf-8"></script>
<script src="assets/js/common.js" charset="utf-8"></script>