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




    <div class="section">
        <div class="container">
            <div class="section--header">
                <h2 class="section--title">跨平台企业级浏览器内核</h2>
                <p class="section--description">
                    全球独创专利技术：一行代码部署，帮助企业快速安全地将现有PC版网页适配成HTML5跨屏网页，跨平台的企业统一办公
                    门户，快捷的移动适配开发能力，完备的数据安全保护
                </p>
            </div>

            <div class="product2-main">
                <div class="am-g">
                    <div class="am-u-md-3 am-u-sm-6">
                        <img src="../assets/images/product/product2/product2_icon_1.png" alt="" />
                        <h3>企业级浏览器内核</h3>
                        <p>
                            全球独创专利技术：一行代码部署，帮
                            助企业快速安全地将现有.
                        </p>
                        <a>了解更多</a>
                    </div>
                    <div class="am-u-md-3 am-u-sm-6">
                        <img src="../assets/images/product/product2/product2_icon_2.png" alt="" />
                        <h3>企业级浏览器内核</h3>
                        <p>
                            全球独创专利技术：一行代码部署，帮
                            助企业快速安全地将现有.
                        </p>
                        <a>了解更多</a>
                    </div>
                    <div class="am-u-md-3 am-u-sm-6">
                        <img src="../assets/images/product/product2/product2_icon_3.png" alt="" />
                        <h3>企业级浏览器内核</h3>
                        <p>
                            全球独创专利技术：一行代码部署，帮
                            助企业快速安全地将现有.
                        </p>
                        <a>了解更多</a>
                    </div>
                    <div class="am-u-md-3 am-u-sm-6">
                        <img src="../assets/images/product/product2/product2_icon_4.png" alt="" />
                        <h3>企业级浏览器内核</h3>
                        <p>
                            全球独创专利技术：一行代码部署，帮
                            助企业快速安全地将现有.
                        </p>
                        <a>了解更多</a>
                    </div>
                </div>
            </div>
        </div>
    </div>



    <!-- product2-banner start-->
    <div class="product2-banner">
        <div class="container">
            <h2>统一的移动办公门户</h2>
            <p>
                Enterplorer提供企业级HTML5应用统一运行及管理平台，一个入口整合所有的企业级应用
            </p>
            <button type="button" class="am-btn am-btn-warning am-round">了解详情</button>
        </div>
    </div>
    <!-- product2-banner end-->


    <div class="section product2-service">
        <div class="container">
            <div class="product2-service-title">
                <h2>产品服务<img src="../assets/images/product/product2/product2_service_icon1.png" alt=""></h2>
            </div>
            <div class="product2-service-content">
                <div class="am-g">
                    <!--product2-info-left start-->
                    <div class="am-u-md-4 product2-info">
                        <div class="product2-info-left">
                            <div class="am-g">
                                <div class="am-u-sm-10 am-text-right product2-content-info">
                                    <h3>企业级浏览器内核</h3>
                                    <p>全球独创专利技术：一行代码部署，帮助企业快速安全地将现有.</p>
                                </div>
                                <div class="am-u-sm-2">
                                    <img src="../assets/images/product/product2/product2_service_icon2.png" alt="" />
                                </div>
                            </div>

                            <div class="am-g">
                                <div class="am-u-sm-10 am-text-right product2-content-info">
                                    <h3>企业级浏览器内核</h3>
                                    <p>全球独创专利技术：一行代码部署，帮助企业快速安全地将现有.</p>
                                </div>
                                <div class="am-u-sm-2">
                                    <img src="../assets/images/product/product2/product2_service_icon3.png" alt="" />
                                </div>
                            </div>

                            <div class="am-g">
                                <div class="am-u-sm-10 am-text-right product2-content-info">
                                    <h3>企业级浏览器内核</h3>
                                    <p>全球独创专利技术：一行代码部署，帮助企业快速安全地将现有.</p>
                                </div>
                                <div class="am-u-sm-2">
                                    <img src="../assets/images/product/product2/product2_service_icon4.png" alt="" />
                                </div>
                            </div>

                            <div class="am-g">
                                <div class="am-u-sm-10 am-text-right product2-content-info">
                                    <h3>企业级浏览器内核</h3>
                                    <p>全球独创专利技术：一行代码部署，帮助企业快速安全地将现有.</p>
                                </div>
                                <div class="am-u-sm-2">
                                    <img src="../assets/images/product/product2/product2_service_icon5.png" alt="" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--product2-info-left end-->

                    <!-- product2-content-img start -->
                    <div class="am-u-md-4">
                        <div class="product2-content-img">
                            <img src="../assets/images/product/product2/product2-phone.jpg" alt="" />
                        </div>
                    </div>
                    <!-- product2-content-img end -->

                    <!-- product2-info-right start -->
                    <div class="am-u-md-4 product2-info">
                        <div class="product2-info-right">
                            <div class="am-g">
                                <div class="am-u-sm-2">
                                    <img src="../assets/images/product/product2/product2_service_icon6.png" alt="" />
                                </div>
                                <div class="am-u-sm-10 am-text-left product2-content-info">
                                    <h3>企业级浏览器内核</h3>
                                    <p>全球独创专利技术：一行代码部署，帮助企业快速安全地将现有.</p>
                                </div>
                            </div>
                            <div class="am-g">
                                <div class="am-u-sm-2">
                                    <img src="../assets/images/product/product2/product2_service_icon7.png" alt="" />
                                </div>
                                <div class="am-u-sm-10 am-text-left product2-content-info">
                                    <h3>企业级浏览器内核</h3>
                                    <p>全球独创专利技术：一行代码部署，帮助企业快速安全地将现有.</p>
                                </div>
                            </div>

                            <div class="am-g">
                                <div class="am-u-sm-2">
                                    <img src="../assets/images/product/product2/product2_service_icon8.png" alt="" />
                                </div>
                                <div class="am-u-sm-10 am-text-left product2-content-info">
                                    <h3>企业级浏览器内核</h3>
                                    <p>全球独创专利技术：一行代码部署，帮助企业快速安全地将现有.</p>
                                </div>
                            </div>

                            <div class="am-g">
                                <div class="am-u-sm-2">
                                    <img src="../assets/images/product/product2/product2_service_icon9.png" alt="" />
                                </div>
                                <div class="am-u-sm-10 am-text-left product2-content-info">
                                    <h3>企业级浏览器内核</h3>
                                    <p>全球独创专利技术：一行代码部署，帮助企业快速安全地将现有.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- product2-info-right end -->
                </div>
            </div>
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

