<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2020/6/8
  Time: 9:39
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
<body>
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
        <!--product1-page start-->
        <div class="product1-page">
            <div class="container">
                <div data-am-widget="slider" class="am-slider am-slider-b3" data-am-slider='{"animation":"slide","slideshow":true}' >
                    <ul class="am-slides">
                        <li>
                            <div class="product-banner-box">
                                <h2>自主创新跨平台企业级浏览器内核</h2>
                                <p>光明网曾考虑过通过原生App来实现移动化，但是由于无法复用原始业务流程和数据就放弃了，直到选用了云适配整体解决方案后，可<br/>以很方便的在Enterplorer上使用一个帐号登录我们的系统，通过VPN随时进入内网。</p>
                                <button type="button" class="am-btn am-btn-secondary am-round">了解更多</button>
                            </div>
                        </li>
                        <li>
                            <div class="product-banner-box">
                                <h2>自主创新跨平台企业级浏览器内核</h2>
                                <p>光明网曾考虑过通过原生App来实现移动化，但是由于无法复用原始业务流程和数据就放弃了，直到选用了云适配整体解决方案后，可<br/>以很方便的在Enterplorer上使用一个帐号登录我们的系统，通过VPN随时进入内网。</p>
                                <button type="button" class="am-btn am-btn-secondary am-round">了解更多</button>
                            </div>
                        </li>
                        <li>
                            <div class="product-banner-box">
                                <h2>自主创新跨平台企业级浏览器内核</h2>
                                <p>光明网曾考虑过通过原生App来实现移动化，但是由于无法复用原始业务流程和数据就放弃了，直到选用了云适配整体解决方案后，可<br/>以很方便的在Enterplorer上使用一个帐号登录我们的系统，通过VPN随时进入内网。</p>
                                <button type="button" class="am-btn am-btn-secondary am-round">了解更多</button>
                            </div>
                        </li>
                        <li>
                            <div class="product-banner-box">
                                <h2>自主创新跨平台企业级浏览器内核</h2>
                                <p>光明网曾考虑过通过原生App来实现移动化，但是由于无法复用原始业务流程和数据就放弃了，直到选用了云适配整体解决方案后，可<br/>以很方便的在Enterplorer上使用一个帐号登录我们的系统，通过VPN随时进入内网。</p>
                                <button type="button" class="am-btn am-btn-secondary am-round">了解更多</button>
                            </div>
                        </li>
                    </ul>
                </div>

            </div>
        </div>
        <!--product1-page end-->

        <!--product-login start-->
        <div class="product1-login">
            <span>注册即获 Enterplorer账号，畅想不一定的移动办公时代。</span>
            <button type="button" class="am-btn am-btn-secondary am-round">注册</button>
        </div>
        <!--product-login end-->
    </div>




    <div class="section product1-main">
        <div class="container">
            <div class="am-g">
                <div class="am-u-md-4">
                    <i class="am-icon-gears"></i>
                    <div class="product1-info">
                        <h3>移动办公化</h3>
                        <p>
                            基于风靡社区的React.js封装组件，
                            沿袭高性能、可复用、易扩展等特
                            性，保证企业应用技术栈保持国际
                            领先。
                        </p>
                        <button type="button" class="am-btn am-btn-secondary am-round">了解内容</button>
                    </div>
                </div>
                <div class="am-u-md-4">
                    <i class="contact-icon am-icon-map-marker"></i>
                    <div class="product1-info">
                        <h3>移动办公化</h3>
                        <p>
                            基于风靡社区的React.js封装组件，
                            沿袭高性能、可复用、易扩展等特
                            性，保证企业应用技术栈保持国际
                            领先。
                        </p>
                        <button type="button" class="am-btn am-btn-secondary am-round">了解内容</button>
                    </div>
                </div>
                <div class="am-u-md-4">
                    <i class="am-icon-paper-plane"></i>
                    <div class="product1-info">
                        <h3>移动办公化</h3>
                        <p>
                            基于风靡社区的React.js封装组件，
                            沿袭高性能、可复用、易扩展等特
                            性，保证企业应用技术栈保持国际
                            领先。
                        </p>
                        <button type="button" class="am-btn am-btn-secondary am-round">了解内容</button>
                    </div>
                </div>

            </div>
        </div>
    </div>


    <div class="section">
        <div class="container">
            <div class="section--header">
                <h2 class="section--title">跨平台企业级浏览器内核</h2>
                <p class="section--description">
                    全球独创专利技术：一行代码部署，帮助企业快速安全地将现有PC版网页适配成HTML5跨屏网页，跨平台的企业统一办公
                    <br>门户，快捷的移动适配开发能力，完备的数据安全保护
                </p>
            </div>
        </div>

        <div class="product1-show-container">
            <ul class="am-avg-md-5 am-avg-sm-2">
                <li><div class="product-img-box"></div><a href="#"><img src="../assets/images/product/product_show1.jpg" alt=""></a></li>
                <li><div class="product-img-box"></div><a href="#"><img src="../assets/images/product/product_show2.jpg" alt=""></a></li>
                <li><div class="product-img-box"></div><a href="#"><img src="../assets/images/product/product_show3.jpg" alt=""></a></li>
                <li><div class="product-img-box"></div><a href="#"><img src="../assets/images/product/product_show4.jpg" alt=""></a></li>
                <li><div class="product-img-box"></div><a href="#"><img src="../assets/images/product/product_show5.jpg" alt=""></a></li>
                <li><div class="product-img-box"></div><a href="#"><img src="../assets/images/product/product_show6.jpg" alt=""></a></li>
                <li><div class="product-img-box"></div><a href="#"><img src="../assets/images/product/product_show7.jpg" alt=""></a></li>
                <li><div class="product-img-box"></div><a href="#"><img src="../assets/images/product/product_show8.jpg" alt=""></a></li>
                <li><div class="product-img-box"></div><a href="#"><img src="../assets/images/product/product_show9.jpg" alt=""></a></li>
                <li><div class="product-img-box"></div><a href="#"><img src="../assets/images/product/product_show10.jpg" alt=""></a></li>
            </ul>
        </div>
    </div>



    <%--静态包含contact us,our email,our dress部分--%>
    <%@include file="/html/common/contact_email_adress.jsp"%>



    <!--===========layout-footer================-->
    <div class="layout-footer">
        <div class="footer">
            <div style="background-color:#383d61" class="footer--bg"></div>
            <div class="footer--inner">
                <div class="container">
                    <%--        静态包含页脚--%>
                    <%@include file="/html/common/footer.jsp"%>
                </div>
            </div>
        </div>
    </div>
</div>

</body>

</html>

