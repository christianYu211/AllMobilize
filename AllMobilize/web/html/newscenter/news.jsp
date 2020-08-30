<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2020/6/8
  Time: 9:35
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
        <div class="page-header">
            <div class="am-container">
                <h1 class="page-header-title">公司动态</h1>
            </div>
        </div>

        <div class="breadcrumb-box">
            <div class="am-container">
                <ol class="am-breadcrumb">
                    <li><a href="../index.html">首页</a></li>
                    <li class="am-active">公司动态</li>
                </ol>
            </div>
        </div>
    </div>

    <div class="section">
        <div class="container">
            <div class="section--header">
                <h2 class="section--title">Latest News</h2>
                <p class="section--description">
                    云适配与中建材信息技术股份有限公司（以下简称“中建信息”）联合举办的“战略
                    <br>合作签约仪式暨全国跨屏行动启动大会”在北京成功举办。
                </p>
            </div>

            <div class="news-contaier">
                <div class="blog">
                    <div class="am-g">
                        <div class="am-u-lg-4 am-u-md-6">
                            <div class="article">
                                <div class="article-img">
                                    <img src="../assets/images/news/b01.jpg" alt="" />
                                </div>
                                <div class="article-header">
                                    <h2><a href="#" rel="">云适配：价值驱动是占有市场的关键</a></h2>
                                    <ul class="article--meta">
                                        <li class="article--meta_item -date">December 28, 2015</li>
                                        <li class="article--meta_item comments">33 Comments</li>
                                    </ul>
                                </div>
                                <div class="article--content">
                                    <p>作为一家技术创新型企业，技术的先进性和创新型是构建企业核心竞争力的根本。但是要想占领市场并获得持续增长，需要从服务市场的角度出发，为用户输出价值，也是云适配的发展宗旨。</p>
                                </div>
                                <div class="article--footer">
                                    <a href="#" class="link">Read More</a>
                                </div>
                            </div>
                        </div>

                        <div class="am-u-lg-4 am-u-md-6">
                            <div class="article">
                                <div class="article-img">
                                    <img src="../assets/images/news/b01.jpg" alt="" />
                                </div>
                                <div class="article-header">
                                    <h2><a href="#" rel="">云适配：价值驱动是占有市场的关键</a></h2>
                                    <ul class="article--meta">
                                        <li class="article--meta_item -date">December 28, 2015</li>
                                        <li class="article--meta_item comments">33 Comments</li>
                                    </ul>
                                </div>
                                <div class="article--content">
                                    <p>作为一家技术创新型企业，技术的先进性和创新型是构建企业核心竞争力的根本。但是要想占领市场并获得持续增长，需要从服务市场的角度出发，为用户输出价值，也是云适配的发展宗旨。</p>
                                </div>
                                <div class="article--footer">
                                    <a href="#" class="link">Read More</a>
                                </div>
                            </div>
                        </div>

                        <div class="am-u-lg-4 am-u-md-6  am-u-end">
                            <div class="article">
                                <div class="article-img">
                                    <img src="../assets/images/news/b01.jpg" alt="" />
                                </div>
                                <div class="article-header">
                                    <h2><a href="#" rel="">云适配：价值驱动是占有市场的关键</a></h2>
                                    <ul class="article--meta">
                                        <li class="article--meta_item -date">December 28, 2015</li>
                                        <li class="article--meta_item comments">33 Comments</li>
                                    </ul>
                                </div>
                                <div class="article--content">
                                    <p>作为一家技术创新型企业，技术的先进性和创新型是构建企业核心竞争力的根本。但是要想占领市场并获得持续增长，需要从服务市场的角度出发，为用户输出价值，也是云适配的发展宗旨。</p>
                                </div>
                                <div class="article--footer">
                                    <a href="#" class="link">Read More</a>
                                </div>
                            </div>
                        </div>

                        <div class="am-u-lg-4 am-u-md-6  am-u-end">
                            <div class="article">
                                <div class="article-img">
                                    <img src="../assets/images/news/b01.jpg" alt="" />
                                </div>
                                <div class="article-header">
                                    <h2><a href="#" rel="">云适配：价值驱动是占有市场的关键</a></h2>
                                    <ul class="article--meta">
                                        <li class="article--meta_item -date">December 28, 2015</li>
                                        <li class="article--meta_item comments">33 Comments</li>
                                    </ul>
                                </div>
                                <div class="article--content">
                                    <p>作为一家技术创新型企业，技术的先进性和创新型是构建企业核心竞争力的根本。但是要想占领市场并获得持续增长，需要从服务市场的角度出发，为用户输出价值，也是云适配的发展宗旨。</p>
                                </div>
                                <div class="article--footer">
                                    <a href="#" class="link">Read More</a>
                                </div>
                            </div>
                        </div>

                        <div class="am-u-lg-4 am-u-md-6  am-u-end">
                            <div class="article">
                                <div class="article-img">
                                    <img src="../assets/images/news/b01.jpg" alt="" />
                                </div>
                                <div class="article-header">
                                    <h2><a href="#" rel="">云适配：价值驱动是占有市场的关键</a></h2>
                                    <ul class="article--meta">
                                        <li class="article--meta_item -date">December 28, 2015</li>
                                        <li class="article--meta_item comments">33 Comments</li>
                                    </ul>
                                </div>
                                <div class="article--content">
                                    <p>作为一家技术创新型企业，技术的先进性和创新型是构建企业核心竞争力的根本。但是要想占领市场并获得持续增长，需要从服务市场的角度出发，为用户输出价值，也是云适配的发展宗旨。</p>
                                </div>
                                <div class="article--footer">
                                    <a href="#" class="link">Read More</a>
                                </div>
                            </div>
                        </div>

                        <div class="am-u-lg-4 am-u-md-6  am-u-end">
                            <div class="article">
                                <div class="article-img">
                                    <img src="../assets/images/news/b01.jpg" alt="" />
                                </div>
                                <div class="article-header">
                                    <h2><a href="#" rel="">云适配：价值驱动是占有市场的关键</a></h2>
                                    <ul class="article--meta">
                                        <li class="article--meta_item -date">December 28, 2015</li>
                                        <li class="article--meta_item comments">33 Comments</li>
                                    </ul>
                                </div>
                                <div class="article--content">
                                    <p>作为一家技术创新型企业，技术的先进性和创新型是构建企业核心竞争力的根本。但是要想占领市场并获得持续增长，需要从服务市场的角度出发，为用户输出价值，也是云适配的发展宗旨。</p>
                                </div>
                                <div class="article--footer">
                                    <a href="#" class="link">Read More</a>
                                </div>
                            </div>
                        </div>

                        <div class="am-u-lg-4 am-u-md-6  am-u-end">
                            <div class="article">
                                <div class="article-img">
                                    <img src="../assets/images/news/b01.jpg" alt="" />
                                </div>
                                <div class="article-header">
                                    <h2><a href="#" rel="">云适配：价值驱动是占有市场的关键</a></h2>
                                    <ul class="article--meta">
                                        <li class="article--meta_item -date">December 28, 2015</li>
                                        <li class="article--meta_item comments">33 Comments</li>
                                    </ul>
                                </div>
                                <div class="article--content">
                                    <p>作为一家技术创新型企业，技术的先进性和创新型是构建企业核心竞争力的根本。但是要想占领市场并获得持续增长，需要从服务市场的角度出发，为用户输出价值，也是云适配的发展宗旨。</p>
                                </div>
                                <div class="article--footer">
                                    <a href="#" class="link">Read More</a>
                                </div>
                            </div>
                        </div>

                        <div class="am-u-lg-4 am-u-md-6  am-u-end">
                            <div class="article">
                                <div class="article-img">
                                    <img src="../assets/images/news/b01.jpg" alt="" />
                                </div>
                                <div class="article-header">
                                    <h2><a href="#" rel="">云适配：价值驱动是占有市场的关键</a></h2>
                                    <ul class="article--meta">
                                        <li class="article--meta_item -date">December 28, 2015</li>
                                        <li class="article--meta_item comments">33 Comments</li>
                                    </ul>
                                </div>
                                <div class="article--content">
                                    <p>作为一家技术创新型企业，技术的先进性和创新型是构建企业核心竞争力的根本。但是要想占领市场并获得持续增长，需要从服务市场的角度出发，为用户输出价值，也是云适配的发展宗旨。</p>
                                </div>
                                <div class="article--footer">
                                    <a href="#" class="link">Read More</a>
                                </div>
                            </div>
                        </div>

                        <div class="am-u-lg-4 am-u-md-6  am-u-end">
                            <div class="article">
                                <div class="article-img">
                                    <img src="../assets/images/news/b01.jpg" alt="" />
                                </div>
                                <div class="article-header">
                                    <h2><a href="#" rel="">云适配：价值驱动是占有市场的关键</a></h2>
                                    <ul class="article--meta">
                                        <li class="article--meta_item -date">December 28, 2015</li>
                                        <li class="article--meta_item comments">33 Comments</li>
                                    </ul>
                                </div>
                                <div class="article--content">
                                    <p>作为一家技术创新型企业，技术的先进性和创新型是构建企业核心竞争力的根本。但是要想占领市场并获得持续增长，需要从服务市场的角度出发，为用户输出价值，也是云适配的发展宗旨。</p>
                                </div>
                                <div class="article--footer">
                                    <a href="#" class="link">Read More</a>
                                </div>
                            </div>
                        </div>
                    </div>









                    <!-- pagination-->
                    <ul class="am-pagination">
                        <li class="am-disabled"><a href="#">&laquo;</a></li>
                        <li class="am-active"><a href="#">1</a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">4</a></li>
                        <li><a href="#">5</a></li>
                        <li><a href="#">&raquo;</a></li>
                    </ul>
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
>
</body>

</html>

