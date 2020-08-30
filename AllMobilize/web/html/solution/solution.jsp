<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2020/6/8
  Time: 9:40
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
    <!-- 引入翻页组件JS -->
    <script src="admin/assets/js/page/jquery.sPage.js" charset="UTF-8"></script>
    <!-- 引入翻页组件css样式 -->
    <link rel="stylesheet" type="text/css"
          href="admin/assets/css/page/jquery.sPage.css" charset="UTF-8">
    <style type="text/css">
        .num {
            height: 50px;
            line-height: 50px;
            text-align: center;
        }

        .demo {
            margin-top: 20px;
            text-align: center;
        }
    </style>
    <script>

        $(function () {

            load(1,3);


            var pageSize = "${requestScope.page.pageSize}";
            var currentPage = "${requestScope.page.pageNo}";
            var total = "${requestScope.page.pageTotalCount}";
            var url  = "${requestScope.page.url}";
            // 示例1
            $("#myPage").sPage({
                page:currentPage,//当前页码，必填
                total:total,//数据总条数，必填
                pageSize:3,//每页显示多少条数据，默认10条
                showTotal:true,//是否显示总条数，默认关闭：false
                totalTxt:"共{total}条",//数据总条数文字描述，{total}为占位符，默认"共{total}条"
                noData: false,//没有数据时是否显示分页，默认false不显示，true显示第一页
                showSkip:true,//是否显示跳页，默认关闭：false
                showPN:true,//是否显示上下翻页，默认开启：true
                prevPage:"上一页",//上翻页文字描述，默认“上一页”
                nextPage:"下一页",//下翻页文字描述，默认“下一页”
                fastForward: 5,//快进快退页数，默认0表示不开启快进快退

                backFun:function(page){
                    //点击分页按钮回调函数，返回当前页码
                    // $("#pNum").text(page);
                    // location.href = url+"&pageNo=" + page;
                    // $("#currentPage").val(page);
                    // $("#searchForm").submit();
                    load(page);

                }
            });
        });
        function load(pageNo,pageSize) {
            $.getJSON("http://localhost:8080/AllMobilize_war_exploded/SolutionServlet?action=getSolutions",{pageNo:pageNo,pageSize:pageSize},function (data) {
                // var len = data.items.length;
                // var solution = JSON.parse(data);
                var solution = JSON.stringify(data);
                solution = $.parseJSON(solution);
                var len = solution.pageSize;
                console.log(solution.items[0].solutiontitle)


                var pageSize = len;
                var currentPage = solution.pageNo;
                var total = solution.pageTotalCount;
                // 示例1
                $("#myPage").sPage({
                    page:currentPage,//当前页码，必填
                    total:total,//数据总条数，必填
                    pageSize:3,//每页显示多少条数据，默认10条
                    showTotal:true,//是否显示总条数，默认关闭：false
                    totalTxt:"共{total}条",//数据总条数文字描述，{total}为占位符，默认"共{total}条"
                    noData: false,//没有数据时是否显示分页，默认false不显示，true显示第一页
                    showSkip:true,//是否显示跳页，默认关闭：false
                    showPN:true,//是否显示上下翻页，默认开启：true
                    prevPage:"上一页",//上翻页文字描述，默认“上一页”
                    nextPage:"下一页",//下翻页文字描述，默认“下一页”
                    fastForward: 5,//快进快退页数，默认0表示不开启快进快退

                    backFun:function(page){
                        //点击分页按钮回调函数，返回当前页码
                        // $("#pNum").text(page);
                        // location.href = url+"&pageNo=" + page;
                        // $("#currentPage").val(page);
                        // $("#searchForm").submit();
                        load(page);

                    }
                });


                var lis = '';
                for (i = 0;i < len;i++){
                    var li = '<div class="am-u-md-4">'+
                        '<div class="o2o-box">'+
                        '<img src="assets/images/solution/o2o-img-1.png" alt="" />'+
                        '<div class="o2o-content">'+
                        '<h3>'+solution.items[i].solutiontitle+'</h3>'+
                        '<p>'+solution.items[i].solutiondesc+'</p>'+
                        '</div> </div> </div>'
                    lis += li;
                }
                $("#am-g").html(lis);
            })
        }
    </script>
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
        <div class="solution-page" style="background:url('assets/images/solution/solution-banner.png');color:#fff;padding:110px 0 160px;">
            <div class="container">
                <h2>自主创新跨平台企业级解决方案</h2>
                <p>光明网曾考虑过通过原生App来实现移动化，但是由于无法复用原始业务流程和数据就放弃了，直到选用了云适配整体解决方案后，可以很方便的在Enterplorer上使用一个帐号登录我们的系统，通过VPN随时进入内网。</p>
                <button type="button" class="am-btn am-btn-secondary am-round">了解更多</button>
            </div>
        </div>
    </div>

    <div class="section">
        <div class="container">
            <div class="section--header">
                <h2 class="section--title">解决方案案例展示</h2>
                <p class="section--description">
                    全球独创专利技术：一行代码部署，帮助企业快速安全地将现有PC版网页适配成HTML5跨屏网页，跨平台的企业统一办公
                    <br>门户，快捷的移动适配开发能力，完备的数据安全保护
                </p>
            </div>

            <div class="solution-container">
                <div data-am-widget="tabs"
                     class="am-tabs "
                >
                    <ul class="am-tabs-nav am-cf">
                        <li class="am-active"><a href="[data-tab-panel-0]">青春</a></li>
                        <li class=""><a href="[data-tab-panel-1]">彩虹</a></li>
                        <li class=""><a href="[data-tab-panel-2]">歌唱</a></li>
                        <li class=""><a href="[data-tab-panel-3]">歌唱</a></li>
                    </ul>
                    <div class="am-tabs-bd">
                        <div data-tab-panel-0 class="am-tab-panel am-active">
                            <div class="am-g">
                                <div class="am-u-md-4 am-u-sm-6">
                                    <a href="#"><img src="assets/images/solution/solution-show-1.png" alt="" /></a>
                                </div>
                                <div class="am-u-md-4 am-u-sm-6">
                                    <a href="#"><img src="assets/images/solution/solution-show-2.png" alt="" /></a>
                                </div>
                                <div class="am-u-md-4 am-u-sm-6">
                                    <a href="#"><img src="assets/images/solution/solution-show-3.png" alt="" /></a>
                                </div>
                                <div class="am-u-md-4 am-u-sm-6">
                                    <a href="#"><img src="assets/images/solution/solution-show-4.png" alt="" /></a>
                                </div>
                                <div class="am-u-md-4 am-u-sm-6">
                                    <a href="#"><img src="assets/images/solution/solution-show-5.png" alt="" /></a>
                                </div>
                                <div class="am-u-md-4 am-u-sm-6">
                                    <a href="#"><img src="assets/images/solution/solution-show-6.png" alt="" /></a>
                                </div>
                            </div>
                        </div>
                        <div data-tab-panel-1 class="am-tab-panel ">
                            <div class="am-g">
                                <div class="am-u-md-4 am-u-sm-6">
                                    <a href="#"><img src="assets/images/solution/solution-show-1.png" alt="" /></a>
                                </div>
                                <div class="am-u-md-4 am-u-sm-6">
                                    <a href="#"><img src="assets/images/solution/solution-show-2.png" alt="" /></a>
                                </div>
                                <div class="am-u-md-4 am-u-sm-6">
                                    <a href="#"><img src="assets/images/solution/solution-show-3.png" alt="" /></a>
                                </div>
                                <div class="am-u-md-4 am-u-sm-6">
                                    <a href="#"><img src="assets/images/solution/solution-show-4.png" alt="" /></a>
                                </div>
                                <div class="am-u-md-4 am-u-sm-6">
                                    <a href="#"><img src="assets/images/solution/solution-show-5.png" alt="" /></a>
                                </div>
                                <div class="am-u-md-4 am-u-sm-6">
                                    <a href="#"><img src="assets/images/solution/solution-show-6.png" alt="" /></a>
                                </div>
                            </div>
                        </div>
                        <div data-tab-panel-2 class="am-tab-panel ">
                            <div class="am-g">
                                <div class="am-u-md-4 am-u-sm-6">
                                    <a href="#"><img src="assets/images/solution/solution-show-1.png" alt="" /></a>
                                </div>
                                <div class="am-u-md-4 am-u-sm-6">
                                    <a href="#"><img src="assets/images/solution/solution-show-2.png" alt="" /></a>
                                </div>
                                <div class="am-u-md-4 am-u-sm-6">
                                    <a href="#"><img src="assets/images/solution/solution-show-3.png" alt="" /></a>
                                </div>
                                <div class="am-u-md-4 am-u-sm-6">
                                    <a href="#"><img src="assets/images/solution/solution-show-4.png" alt="" /></a>
                                </div>
                                <div class="am-u-md-4 am-u-sm-6">
                                    <a href="#"><img src="assets/images/solution/solution-show-5.png" alt="" /></a>
                                </div>
                                <div class="am-u-md-4 am-u-sm-6">
                                    <a href="#"><img src="assets/images/solution/solution-show-6.png" alt="" /></a>
                                </div>
                            </div>
                        </div>
                        <div data-tab-panel-3 class="am-tab-panel ">
                            <div class="am-g">
                                <div class="am-u-md-4 am-u-sm-6">
                                    <a href="#"><img src="assets/images/solution/solution-show-1.png" alt="" /></a>
                                </div>
                                <div class="am-u-md-4 am-u-sm-6">
                                    <a href="#"><img src="assets/images/solution/solution-show-2.png" alt="" /></a>
                                </div>
                                <div class="am-u-md-4 am-u-sm-6">
                                    <a href="#"><img src="assets/images/solution/solution-show-3.png" alt="" /></a>
                                </div>
                                <div class="am-u-md-4 am-u-sm-6">
                                    <a href="#"><img src="assets/images/solution/solution-show-4.png" alt="" /></a>
                                </div>
                                <div class="am-u-md-4 am-u-sm-6">
                                    <a href="#"><img src="assets/images/solution/solution-show-5.png" alt="" /></a>
                                </div>
                                <div class="am-u-md-4 am-u-sm-6">
                                    <a href="#"><img src="assets/images/solution/solution-show-6.png" alt="" /></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>



    <div class="section" style="background:#f3f4f4;">
        <div class="container">

            <div class="section--header">
                <h2 class="section--title">O2O解决方案</h2>
                <p class="section--description">
                    全球独创专利技术：一行代码部署，帮助企业快速安全地将现有PC版网页适配成HTML5跨屏网页，跨平台的企业统一办公
                    <br/>门户，快捷的移动适配开发能力，完备的数据安全保护
                </p>
            </div>

            <div class="o2o-container">
                <div class="am-g" id="am-g" >

            </div>
            <div id="myPage" class="demo"></div>
        </div>
    </div>




    <div class="section">
        <div class="container">
            <div class="section--header">
                <h2 class="section--title">服务合作厂家</h2>
                <p class="section--description">
                    全球独创专利技术：一行代码部署，帮助企业快速安全地将现有PC版网页适配成HTML5跨屏网页，跨平台的企业统一办公
                    <br/>门户，快捷的移动适配开发能力，完备的数据安全保护
                </p>
            </div>

            <div class="cooperation-container">
                <div data-am-widget="tabs"
                     class="am-tabs"
                >
                    <ul class="am-tabs-nav am-cf">
                        <li class="am-active"><a href="[data-tab-panel-0]">营销推广</a></li>
                        <li class=""><a href="[data-tab-panel-1]">金融服务</a></li>
                        <li class=""><a href="[data-tab-panel-2]">行业软件</a></li>
                        <li class=""><a href="[data-tab-panel-3]">托管服务</a></li>
                    </ul>
                    <div class="am-tabs-bd">
                        <div data-tab-panel-0 class="am-tab-panel am-active">
                            <ul class="am-avg-md-5 am-avg-sm-3 am-thumbnails">
                                <li><a href="#"><img class="am-thumbnail" src="assets/images/solution/cooperation-logo1.jpg" /></a></li>
                                <li><a href="#"><img class="am-thumbnail" src="assets/images/solution/cooperation-logo2.jpg" /></a></li>
                                <li><a href="#"><img class="am-thumbnail" src="assets/images/solution/cooperation-logo3.jpg" /></a></li>
                                <li><a href="#"><img class="am-thumbnail" src="assets/images/solution/cooperation-logo4.jpg" /></a></li>
                                <li><a href="#"><img class="am-thumbnail" src="assets/images/solution/cooperation-logo5.jpg" /></a></li>
                                <li><a href="#"><img class="am-thumbnail" src="assets/images/solution/cooperation-logo6.jpg" /></a></li>
                                <li><a href="#"><img class="am-thumbnail" src="assets/images/solution/cooperation-logo7.jpg" /></a></li>
                                <li><a href="#"><img class="am-thumbnail" src="assets/images/solution/cooperation-logo8.jpg" /></a></li>
                                <li><a href="#"><img class="am-thumbnail" src="assets/images/solution/cooperation-logo9.jpg" /></a></li>
                                <li><a href="#"><img class="am-thumbnail" src="assets/images/solution/cooperation-logo10.jpg" /></a></li>
                                <li><a href="#"><img class="am-thumbnail" src="assets/images/solution/cooperation-logo11.jpg" /></a></li>
                                <li><a href="#"><img class="am-thumbnail" src="assets/images/solution/cooperation-logo12.jpg" /></a></li>
                                <li><a href="#"><img class="am-thumbnail" src="assets/images/solution/cooperation-logo13.jpg" /></a></li>
                                <li><a href="#"><img class="am-thumbnail" src="assets/images/solution/cooperation-logo14.jpg" /></a></li>
                                <li><a href="#"><img class="am-thumbnail" src="assets/images/solution/cooperation-logo15.jpg" /></a></li>
                            </ul>
                        </div>
                        <div data-tab-panel-1 class="am-tab-panel ">
                            <ul class="am-avg-md-5 am-avg-sm-3 am-thumbnails">
                                <li><a href="#"><img class="am-thumbnail" src="assets/images/solution/cooperation-logo1.jpg" /></a></li>
                                <li><a href="#"><img class="am-thumbnail" src="assets/images/solution/cooperation-logo2.jpg" /></a></li>
                                <li><a href="#"><img class="am-thumbnail" src="assets/images/solution/cooperation-logo3.jpg" /></a></li>
                                <li><a href="#"><img class="am-thumbnail" src="assets/images/solution/cooperation-logo4.jpg" /></a></li>
                                <li><a href="#"><img class="am-thumbnail" src="assets/images/solution/cooperation-logo5.jpg" /></a></li>
                                <li><a href="#"><img class="am-thumbnail" src="assets/images/solution/cooperation-logo6.jpg" /></a></li>
                                <li><a href="#"><img class="am-thumbnail" src="assets/images/solution/cooperation-logo7.jpg" /></a></li>
                                <li><a href="#"><img class="am-thumbnail" src="assets/images/solution/cooperation-logo8.jpg" /></a></li>
                                <li><a href="#"><img class="am-thumbnail" src="assets/images/solution/cooperation-logo9.jpg" /></a></li>
                                <li><a href="#"><img class="am-thumbnail" src="assets/images/solution/cooperation-logo10.jpg" /></a></li>
                                <li><a href="#"><img class="am-thumbnail" src="assets/images/solution/cooperation-logo11.jpg" /></a></li>
                                <li><a href="#"><img class="am-thumbnail" src="assets/images/solution/cooperation-logo12.jpg" /></a></li>
                                <li><a href="#"><img class="am-thumbnail" src="assets/images/solution/cooperation-logo13.jpg" /></a></li>
                                <li><a href="#"><img class="am-thumbnail" src="assets/images/solution/cooperation-logo14.jpg" /></a></li>
                                <li><a href="#"><img class="am-thumbnail" src="assets/images/solution/cooperation-logo15.jpg" /></a></li>
                            </ul>
                        </div>
                        <div data-tab-panel-2 class="am-tab-panel ">
                            <ul class="am-avg-md-5 am-avg-sm-3 am-thumbnails">
                                <li><a href="#"><img class="am-thumbnail" src="assets/images/solution/cooperation-logo1.jpg" /></a></li>
                                <li><a href="#"><img class="am-thumbnail" src="assets/images/solution/cooperation-logo2.jpg" /></a></li>
                                <li><a href="#"><img class="am-thumbnail" src="assets/images/solution/cooperation-logo3.jpg" /></a></li>
                                <li><a href="#"><img class="am-thumbnail" src="assets/images/solution/cooperation-logo4.jpg" /></a></li>
                                <li><a href="#"><img class="am-thumbnail" src="assets/images/solution/cooperation-logo5.jpg" /></a></li>
                                <li><a href="#"><img class="am-thumbnail" src="assets/images/solution/cooperation-logo6.jpg" /></a></li>
                                <li><a href="#"><img class="am-thumbnail" src="assets/images/solution/cooperation-logo7.jpg" /></a></li>
                                <li><a href="#"><img class="am-thumbnail" src="assets/images/solution/cooperation-logo8.jpg" /></a></li>
                                <li><a href="#"><img class="am-thumbnail" src="assets/images/solution/cooperation-logo9.jpg" /></a></li>
                                <li><a href="#"><img class="am-thumbnail" src="assets/images/solution/cooperation-logo10.jpg" /></a></li>
                                <li><a href="#"><img class="am-thumbnail" src="assets/images/solution/cooperation-logo11.jpg" /></a></li>
                                <li><a href="#"><img class="am-thumbnail" src="assets/images/solution/cooperation-logo12.jpg" /></a></li>
                                <li><a href="#"><img class="am-thumbnail" src="assets/images/solution/cooperation-logo13.jpg" /></a></li>
                                <li><a href="#"><img class="am-thumbnail" src="assets/images/solution/cooperation-logo14.jpg" /></a></li>
                                <li><a href="#"><img class="am-thumbnail" src="assets/images/solution/cooperation-logo15.jpg" /></a></li>
                            </ul>
                        </div>
                    </div>
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

