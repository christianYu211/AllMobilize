<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2020/6/8
  Time: 9:43
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
                    <a href=""><img src="assets/images/logo.png" alt=""></a>
                </div>
            </div>
        </div>
        <!--mobile header end-->
    </div>




    <!--===========layout-container================-->
    <div class="layout-container">
        <div class="page-header">
            <div class="am-container">
                <h1 class="page-header-title">客户案例</h1>
            </div>
        </div>

        <div class="breadcrumb-box">
            <div class="am-container">
                <ol class="am-breadcrumb">
                    <li><a href="index.html">首页</a></li>
                    <li class="am-active">客户案例</li>
                </ol>
            </div>
        </div>
    </div>

    <div class="section">
        <div class="container">
            <div class="section--header">
                <h2 class="section--title">全球首创 自主创新</h2>
                <p class="section--description">
                    Enterplorer Studio是一套面向企业级移动信息化建设的开发平台。集聚开发、测试、
                    <br>打包、发布于一体的移动化开发综合平台。
                </p>
            </div>

            <div class="example-container">
                <div class="am-tabs" data-am-tabs>
                    <ul class="am-tabs-nav am-nav am-nav-tabs am-g">
                        <li class="am-active am-u-md-2"><a href="#tab-4-1"><i class="am-icon-map-o"></i>主要案例</a></li>
                        <li class="am-u-md-2"><a href="#tab-4-2"><i class="am-icon-scribd"></i>客户案例一</a></li>
                        <li class="am-u-md-2"><a href="#tab-4-3"><i class="am-icon-odnoklassniki"></i>客户案例二</a></li>
                        <li class="am-u-md-2"><a href="#tab-4-4"><i class="am-icon-building-o"></i>客户案例三</a></li>
                        <li class="am-u-md-2"><a href="#tab-4-5"><i class="am-icon-hand-scissors-o "></i>客户案例四</a></li>
                        <li class="am-u-md-2"><a href="#tab-4-6"><i class="am-icon-camera"></i>客户案例五</a></li>
                    </ul>
                    <div class="am-tabs-bd am-tabs-bd-ofv">
                        <div class="am-tab-panel am-active" id="tab-4-1">
                            <div class="am-g">
                                <div class="am-u-md-3">
                                    <a href="#" style="background-image: url('assets/images/example/example1.jpg');" class="example-item-bg"></a>
                                    <img src="assets/images/example/logo_hx_active.png" alt="">
                                    <span>了解更多></span>
                                </div>
                                <div class="am-u-md-3">
                                    <a href="#" style="background-image: url('assets/images/example/example1.jpg');" class="example-item-bg"></a>
                                    <img src="assets/images/example/logo_hx_active.png" alt="">
                                    <span>了解更多></span>
                                </div>
                                <div class="am-u-md-3">
                                    <a href="#" style="background-image: url('assets/images/example/example1.jpg');" class="example-item-bg"></a>
                                    <img src="assets/images/example/logo_hx_active.png" alt="">
                                    <span>了解更多></span>
                                </div>
                                <div class="am-u-md-3">
                                    <a href="#" style="background-image: url('assets/images/example/example1.jpg');" class="example-item-bg"></a>
                                    <img src="assets/images/example/logo_hx_active.png" alt="">
                                    <span>了解更多></span>
                                </div>
                            </div>

                            <div class="am-g">
                                <div class="am-u-md-3">
                                    <a href="#" style="background-image: url('assets/images/example/example1.jpg');" class="example-item-bg"></a>
                                    <img src="assets/images/example/logo_hx_active.png" alt="">
                                    <span>了解更多></span>
                                </div>
                                <div class="am-u-md-3">
                                    <a href="#" style="background-image: url('assets/images/example/example1.jpg');" class="example-item-bg"></a>
                                    <img src="assets/images/example/logo_hx_active.png" alt="">
                                    <span>了解更多></span>
                                </div>
                                <div class="am-u-md-3">
                                    <a href="#" style="background-image: url('assets/images/example/example1.jpg');" class="example-item-bg"></a>
                                    <img src="assets/images/example/logo_hx_active.png" alt="">
                                    <span>了解更多></span>
                                </div>
                                <div class="am-u-md-3">
                                    <a href="#" style="background-image: url('assets/images/example/example1.jpg');" class="example-item-bg"></a>
                                    <img src="assets/images/example/logo_hx_active.png" alt="">
                                    <span>了解更多></span>
                                </div>
                            </div>

                            <div class="am-g">
                                <div class="am-u-md-3">
                                    <a href="#" style="background-image: url('assets/images/example/example1.jpg');" class="example-item-bg"></a>
                                    <img src="assets/images/example/logo_hx_active.png" alt="">
                                    <span>了解更多></span>
                                </div>
                                <div class="am-u-md-3">
                                    <a href="#" style="background-image: url('assets/images/example/example1.jpg');" class="example-item-bg"></a>
                                    <img src="assets/images/example/logo_hx_active.png" alt="">
                                    <span>了解更多></span>
                                </div>
                                <div class="am-u-md-3">
                                    <a href="#" style="background-image: url('assets/images/example/example1.jpg');" class="example-item-bg"></a>
                                    <img src="assets/images/example/logo_hx_active.png" alt="">
                                    <span>了解更多></span>
                                </div>
                                <div class="am-u-md-3">
                                    <a href="#" style="background-image: url('assets/images/example/example1.jpg');" class="example-item-bg"></a>
                                    <img src="assets/images/example/logo_hx_active.png" alt="">
                                    <span>了解更多></span>
                                </div>
                            </div>

                            <div class="am-g">
                                <div class="am-u-md-3">
                                    <a href="#" style="background-image: url('assets/images/example/example1.jpg');" class="example-item-bg"></a>
                                    <img src="assets/images/example/logo_hx_active.png" alt="">
                                    <span>了解更多></span>
                                </div>
                                <div class="am-u-md-3">
                                    <a href="#" style="background-image: url('assets/images/example/example1.jpg');" class="example-item-bg"></a>
                                    <img src="assets/images/example/logo_hx_active.png" alt="">
                                    <span>了解更多></span>
                                </div>
                                <div class="am-u-md-3">
                                    <a href="#" style="background-image: url('assets/images/example/example1.jpg');" class="example-item-bg"></a>
                                    <img src="assets/images/example/logo_hx_active.png" alt="">
                                    <span>了解更多></span>
                                </div>
                                <div class="am-u-md-3">
                                    <a href="#" style="background-image: url('assets/images/example/example1.jpg');" class="example-item-bg"></a>
                                    <img src="assets/images/example/logo_hx_active.png" alt="">
                                    <span>了解更多></span>
                                </div>
                            </div>
                        </div>
                        <div class="am-tab-panel" id="tab-4-2">
                            <div class="am-g">
                                <div class="am-u-md-3">
                                    <a href="#" style="background-image: url('assets/images/example/example1.jpg');" class="example-item-bg"></a>
                                    <img src="assets/images/example/logo_hx_active.png" alt="">
                                    <span>了解更多></span>
                                </div>
                                <div class="am-u-md-3">
                                    <a href="#" style="background-image: url('assets/images/example/example1.jpg');" class="example-item-bg"></a>
                                    <img src="assets/images/example/logo_hx_active.png" alt="">
                                    <span>了解更多></span>
                                </div>
                                <div class="am-u-md-3">
                                    <a href="#" style="background-image: url('assets/images/example/example1.jpg');" class="example-item-bg"></a>
                                    <img src="assets/images/example/logo_hx_active.png" alt="">
                                    <span>了解更多></span>
                                </div>
                                <div class="am-u-md-3">
                                    <a href="#" style="background-image: url('assets/images/example/example1.jpg');" class="example-item-bg"></a>
                                    <img src="assets/images/example/logo_hx_active.png" alt="">
                                    <span>了解更多></span>
                                </div>
                            </div>

                            <div class="am-g">
                                <div class="am-u-md-3">
                                    <a href="#" style="background-image: url('assets/images/example/example1.jpg');" class="example-item-bg"></a>
                                    <img src="assets/images/example/logo_hx_active.png" alt="">
                                    <span>了解更多></span>
                                </div>
                                <div class="am-u-md-3">
                                    <a href="#" style="background-image: url('assets/images/example/example1.jpg');" class="example-item-bg"></a>
                                    <img src="assets/images/example/logo_hx_active.png" alt="">
                                    <span>了解更多></span>
                                </div>
                                <div class="am-u-md-3">
                                    <a href="#" style="background-image: url('assets/images/example/example1.jpg');" class="example-item-bg"></a>
                                    <img src="assets/images/example/logo_hx_active.png" alt="">
                                    <span>了解更多></span>
                                </div>
                                <div class="am-u-md-3">
                                    <a href="#" style="background-image: url('assets/images/example/example1.jpg');" class="example-item-bg"></a>
                                    <img src="assets/images/example/logo_hx_active.png" alt="">
                                    <span>了解更多></span>
                                </div>
                            </div>

                            <div class="am-g">
                                <div class="am-u-md-3">
                                    <a href="#" style="background-image: url('assets/images/example/example1.jpg');" class="example-item-bg"></a>
                                    <img src="assets/images/example/logo_hx_active.png" alt="">
                                    <span>了解更多></span>
                                </div>
                                <div class="am-u-md-3">
                                    <a href="#" style="background-image: url('assets/images/example/example1.jpg');" class="example-item-bg"></a>
                                    <img src="assets/images/example/logo_hx_active.png" alt="">
                                    <span>了解更多></span>
                                </div>
                                <div class="am-u-md-3">
                                    <a href="#" style="background-image: url('assets/images/example/example1.jpg');" class="example-item-bg"></a>
                                    <img src="assets/images/example/logo_hx_active.png" alt="">
                                    <span>了解更多></span>
                                </div>
                                <div class="am-u-md-3">
                                    <a href="#" style="background-image: url('assets/images/example/example1.jpg');" class="example-item-bg"></a>
                                    <img src="assets/images/example/logo_hx_active.png" alt="">
                                    <span>了解更多></span>
                                </div>
                            </div>
                        </div>
                        <div class="am-tab-panel" id="tab-4-3">
                            <div class="am-g">
                                <div class="am-u-md-3">
                                    <a href="#" style="background-image: url('assets/images/example/example1.jpg');" class="example-item-bg"></a>
                                    <img src="assets/images/example/logo_hx_active.png" alt="">
                                    <span>了解更多></span>
                                </div>
                                <div class="am-u-md-3">
                                    <a href="#" style="background-image: url('assets/images/example/example1.jpg');" class="example-item-bg"></a>
                                    <img src="assets/images/example/logo_hx_active.png" alt="">
                                    <span>了解更多></span>
                                </div>
                                <div class="am-u-md-3">
                                    <a href="#" style="background-image: url('assets/images/example/example1.jpg');" class="example-item-bg"></a>
                                    <img src="assets/images/example/logo_hx_active.png" alt="">
                                    <span>了解更多></span>
                                </div>
                                <div class="am-u-md-3">
                                    <a href="#" style="background-image: url('assets/images/example/example1.jpg');" class="example-item-bg"></a>
                                    <img src="assets/images/example/logo_hx_active.png" alt="">
                                    <span>了解更多></span>
                                </div>
                            </div>

                            <div class="am-g">
                                <div class="am-u-md-3">
                                    <a href="#" style="background-image: url('assets/images/example/example1.jpg');" class="example-item-bg"></a>
                                    <img src="assets/images/example/logo_hx_active.png" alt="">
                                    <span>了解更多></span>
                                </div>
                                <div class="am-u-md-3">
                                    <a href="#" style="background-image: url('assets/images/example/example1.jpg');" class="example-item-bg"></a>
                                    <img src="assets/images/example/logo_hx_active.png" alt="">
                                    <span>了解更多></span>
                                </div>
                                <div class="am-u-md-3">
                                    <a href="#" style="background-image: url('assets/images/example/example1.jpg');" class="example-item-bg"></a>
                                    <img src="assets/images/example/logo_hx_active.png" alt="">
                                    <span>了解更多></span>
                                </div>
                                <div class="am-u-md-3">
                                    <a href="#" style="background-image: url('assets/images/example/example1.jpg');" class="example-item-bg"></a>
                                    <img src="assets/images/example/logo_hx_active.png" alt="">
                                    <span>了解更多></span>
                                </div>
                            </div>
                        </div>


                        <div class="am-tab-panel" id="tab-4-4">
                            <div class="am-g">
                                <div class="am-u-md-3">
                                    <a href="#" style="background-image: url('assets/images/example/example1.jpg');" class="example-item-bg"></a>
                                    <img src="assets/images/example/logo_hx_active.png" alt="">
                                    <span>了解更多></span>
                                </div>
                                <div class="am-u-md-3">
                                    <a href="#" style="background-image: url('assets/images/example/example1.jpg');" class="example-item-bg"></a>
                                    <img src="assets/images/example/logo_hx_active.png" alt="">
                                    <span>了解更多></span>
                                </div>
                                <div class="am-u-md-3">
                                    <a href="#" style="background-image: url('assets/images/example/example1.jpg');" class="example-item-bg"></a>
                                    <img src="assets/images/example/logo_hx_active.png" alt="">
                                    <span>了解更多></span>
                                </div>
                                <div class="am-u-md-3">
                                    <a href="#" style="background-image: url('assets/images/example/example1.jpg');" class="example-item-bg"></a>
                                    <img src="assets/images/example/logo_hx_active.png" alt="">
                                    <span>了解更多></span>
                                </div>
                            </div>
                        </div>

                        <div class="am-tab-panel" id="tab-4-5">
                            <div class="am-g">
                                <div class="am-u-md-3">
                                    <a href="#" style="background-image: url('assets/images/example/example1.jpg');" class="example-item-bg"></a>
                                    <img src="assets/images/example/logo_hx_active.png" alt="">
                                    <span>了解更多></span>
                                </div>
                                <div class="am-u-md-3">
                                    <a href="#" style="background-image: url('assets/images/example/example1.jpg');" class="example-item-bg"></a>
                                    <img src="assets/images/example/logo_hx_active.png" alt="">
                                    <span>了解更多></span>
                                </div>
                                <div class="am-u-md-3">
                                    <a href="#" style="background-image: url('assets/images/example/example1.jpg');" class="example-item-bg"></a>
                                    <img src="assets/images/example/logo_hx_active.png" alt="">
                                    <span>了解更多></span>
                                </div>
                                <div class="am-u-md-3">
                                    <a href="#" style="background-image: url('assets/images/example/example1.jpg');" class="example-item-bg"></a>
                                    <img src="assets/images/example/logo_hx_active.png" alt="">
                                    <span>了解更多></span>
                                </div>
                            </div>
                        </div>

                        <div class="am-tab-panel" id="tab-4-6">
                            <div class="am-g">
                                <div class="am-u-md-3">
                                    <a href="#" style="background-image: url('assets/images/example/example1.jpg');" class="example-item-bg"></a>
                                    <img src="assets/images/example/logo_hx_active.png" alt="">
                                    <span>了解更多></span>
                                </div>
                                <div class="am-u-md-3">
                                    <a href="#" style="background-image: url('assets/images/example/example1.jpg');" class="example-item-bg"></a>
                                    <img src="assets/images/example/logo_hx_active.png" alt="">
                                    <span>了解更多></span>
                                </div>
                                <div class="am-u-md-3">
                                    <a href="#" style="background-image: url('assets/images/example/example1.jpg');" class="example-item-bg"></a>
                                    <img src="assets/images/example/logo_hx_active.png" alt="">
                                    <span>了解更多></span>
                                </div>
                                <div class="am-u-md-3">
                                    <a href="#" style="background-image: url('assets/images/example/example1.jpg');" class="example-item-bg"></a>
                                    <img src="assets/images/example/logo_hx_active.png" alt="">
                                    <span>了解更多></span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>





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

