<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2020/6/8
  Time: 9:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="layout-header am-hide-sm-only">
    <!--topbar start-->
    <div class="topbar">
        <div class="container">
            <div class="am-g">
                <div class="am-u-md-3">
                    <div class="topbar-left">
                        <i class="am-icon-globe"></i>
                        <div class="am-dropdown" data-am-dropdown>
                            <button class="am-btn am-btn-primary am-dropdown-toggle" data-am-dropdown-toggle>Language <span class="am-icon-caret-down"></span></button>
                            <ul class="am-dropdown-content">
                                <li><a href="#">English</a></li>
                                <li class="am-divider"></li>
                                <li><a href="#">Chinese</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="am-u-md-9">
                    <div class="topbar-right am-text-right am-fr">
                        Follow us
                        <i class="am-icon-facebook"></i>
                        <i class="am-icon-twitter"></i>
                        <i class="am-icon-google-plus"></i>
                        <i class="am-icon-pinterest"></i>
                        <i class="am-icon-instagram"></i>
                        <i class="am-icon-linkedin"></i>
                        <i class="am-icon-youtube-play"></i>
                        <i class="am-icon-rss"></i>
                        <c:if test="${empty sessionScope.user}">
                        <a href="html/user/login.jsp">登录</a>
                        <a href="html/user/register.jsp">注册</a>
                        <a href="admin/login.jsp">后台管理</a>
                        </c:if>

                        <c:if test="${not empty sessionScope.user}">
                            <span>欢迎 ${sessionScope.user.nickname} 登录!</span>
                            <a href="UserInfoServlet?action=logout">注销</a>
                        </c:if>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--topbar end-->


    <div class="header-box" data-am-sticky>
        <!--header start-->
        <div class="container">
            <div class="header">
                <div class="am-g">
                    <div class="am-u-lg-2 am-u-sm-12">
                        <div class="logo">
                            <a href=""><img src="assets/images/logo.png" alt="" /></a>
                        </div>
                    </div>
                    <div class="am-u-md-10">
                        <div class="header-right am-fr">
                            <div class="header-contact">
                                <div class="header_contacts--item">
                                    <div class="contact_mini">
                                        <i style="color:#7c6aa6" class="contact-icon am-icon-phone"></i>
                                        <strong>0 (855) 233-5385</strong>
                                        <span>周一~周五, 8:00 - 20:00</span>
                                    </div>
                                </div>
                                <div class="header_contacts--item">
                                    <div class="contact_mini">
                                        <i style="color:#7c6aa6" class="contact-icon am-icon-envelope-o"></i>
                                        <strong>cn@yunshipei.com</strong>
                                        <span>随时欢迎您的来信！</span>
                                    </div>
                                </div>
                                <div class="header_contacts--item">
                                    <div class="contact_mini">
                                        <i style="color:#7c6aa6" class="contact-icon am-icon-map-marker"></i>
                                        <strong>天使大厦,</strong>
                                        <span>海淀区海淀大街27</span>
                                    </div>
                                </div>
                            </div>
                            <a href="html/contact.html" class="contact-btn">
                                <button type="button" class="am-btn am-btn-secondary am-radius">联系我们</button>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--header end-->


        <!--nav start-->
        <div class="nav-contain">
            <div class="nav-inner">
                <ul class="am-nav am-nav-pills am-nav-justify">
                    <li class=""><a href="index.jsp">首页</a></li>
                    <li>
                        <a href="html/productcenter/product1.jsp">产品中心</a>
                        <!-- sub-menu start-->
                        <ul class="sub-menu">
                            <li class="menu-item"><a href="html/productcenter/product1.jsp">产品展示1</a></li>
                            <li class="menu-item"><a href="html/productcenter/product2.jsp">产品展示2</a></li>
                            <li class="menu-item"><a href="html/productcenter/product3.jsp">产品展示3</a></li>
                        </ul>
                        <!-- sub-menu end-->
                    </li>
                    <li><a href="html/customercase/example.jsp">客户案例</a></li>
                    <li><a href="html/solution/solution.jsp">解决方案</a></li>
                    <li>
                        <a href="html/newscenter/news-content.jsp">新闻中心</a>
                        <!-- sub-menu start-->
                        <ul class="sub-menu">
                            <li class="menu-item"><a href="html/newscenter/news.jsp">公司动态</a></li>
                            <li class="menu-item"><a href="html/404-dark.html">行业动态</a></li>
                            <li class="menu-item"><a href="html/404-light.html">精彩专题</a></li>
                        </ul>
                        <!-- sub-menu end-->
                    </li>
                    <li><a href="html/company/about.jsp">关于我们</a></li>
                    <li><a href="html/company/join.jsp">加入我们</a></li>
                    <li><a href="html/company/contact.jsp">联系我们</a></li>
                </ul>
            </div>
        </div>
        <!--nav end-->
    </div>
</div>
