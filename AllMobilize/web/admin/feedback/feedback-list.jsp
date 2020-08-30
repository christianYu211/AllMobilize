<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2020/6/22
  Time: 18:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="en">
<meta http-equiv="content-type" content="text/html;charset=UTF-8">
<head>
    <meta charset="utf-8" />
    <base href="http://localhost:8080/AllMobilize_war_exploded/">
    <meta name="author" content="order by dede58.com" />
    <title>恒望门户后台管理</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <meta http-equiv="content-type" content="text/html;charset=UTF-8">
    <!-- 导入css资料文件 -->
    <jsp:include page="/admin/common/resource.jsp" />

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
</head>

<body class="fixed-top">

<!-- 头部 -->
<jsp:include page="/admin/common/header.jsp" />


<div id="container" class="row-fluid">

    <!-- 左侧 导航 -->
    <jsp:include page="/admin/common/left.jsp" />

    <div id="main-content">
        <div class="container-fluid">
            <div class="row-fluid">
                <div class="span12">
                    <div id="theme-change" class="hidden-phone"> <i class="icon-cogs"></i> <span class="settings"> <span class="text">theme color:</span> <span class="colors"> <span class="color-default" data-style="default"></span> <span class="color-green" data-style="green"></span> <span class="color-gray" data-style="gray"></span> <span class="color-purple" data-style="purple"></span> <span class="color-red" data-style="red"></span> </span> </span> </div>
                    <h6></h6>
                    <ul class="breadcrumb">

                        <li> <a href="../index.html">主页</a> <span class="divider">/</span> </li>
                        <li> <a href="push-list.html">用户反馈</a> </li>
                    </ul>
                </div>
            </div>
            <div id="page-wraper">
                <div class="row-fluid">
                    <div class="row-fluid">
                        <div class="span12">
                            <div class="widget red">
                                <div class="widget-title">
                                    <h4><i class="icon-reorder"></i>用户反馈</h4>
                                    <span class="tools"> <a href="javascript:;" class="icon-chevron-down"></a> <a href="javascript:;" class="icon-remove"></a> </span> </div>
                                <div class="widget-body">
                                    <div>
                                        <li> <a href="push-add.html"><button class="btn btn-inverse" type="button">新增</button></a>
                                            <button class="btn btn-inverse" type="button" data-toggle="modal" data-target="#myModal">删除</button>
                                            <div class="pull-right input-append search-input-area">
                                                <input class="" id="appendedInputButton" type="text" placeholder="请输入标题">
                                                <button class="btn" type="button"><i class="icon-search"></i> </button>
                                            </div>
                                        </li>
                                    </div>
                                    <table class="table table-striped table-bordered table-advance table-hover">
                                        <thead>
                                        <tr>
                                            <th style="width:8px;"><input type="checkbox" class="group-checkable" data-set="#sample_1 .checkboxes" /></th>
                                            <th><i class="icon-list-ol"></i> 序列号</th>
                                            <th><i class="icon-bullhorn"></i> 标题</th>
                                            <th><i class="icon-male"></i> 反馈内容</th>
                                            <th><i class="icon-time"></i> 发布时间</th>

                                            <th><i class="icon-edit-sign"></i> 操作</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td><input type="checkbox" class="checkboxes" value="1" /></td>
                                            <td>1</td>
                                            <td>开会</td>
                                            <td>洛阳豫新工程技术股份有限公司</td>

                                            <td>2018-05-09 09:33</td>


                                            <td class="center">  <a class="btn btn-danger" href="#"  title="删除"> <i class="icon-trash"></i> </a></td>
                                        </tr>

                                        </tbody>
                                    </table>

                                    <div class="pagination pagination-centered">
                                        <ul>
                                            <li><a href="#">«</a></li>
                                            <li><a href="#">1</a></li>
                                            <li><a href="#">2</a></li>
                                            <li><a href="#">3</a></li>
                                            <li class="hidden-phone"><a href="#">4</a></li>
                                            <li><a href="#">»</a></li>
                                        </ul>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


</div>

<!-- 底部 -->
<jsp:include page="/admin/common/footer.jsp" />
<!-- 导入JavaScript -->
<jsp:include page="/admin/common/javascript.jsp" />
<!-- 引入翻页组件JS -->
<script src="admin/assets/js/page/jquery.sPage.js" charset="UTF-8"></script>

<script type="text/javascript">
    function doDelete(solutionid) {
        if (confirm('确定要删除')) {
            location.href = 'SolutionServlet?action=deleteSolution&solutionid='
                + solutionid;
        }

    }
    $(function() {

        $("#btnclear").click(function() {
            $("#createTime").val("");
            $("#solutionTitle").val("");
            $("#currentPage").val("1");
            $("#searchForm").submit();
        })
        var pageSize = "${requestScope.page.pageSize}";
        var currentPage = "${requestScope.page.pageNo}";
        var total = "${requestScope.page.pageTotalCount}";
        var url  = "${requestScope.page.url}";
        // 示例1
        $("#myPage").sPage({
            page:currentPage,//当前页码，必填
            total:total,//数据总条数，必填
            pageSize:pageSize,//每页显示多少条数据，默认10条
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
                location.href = url+"&pageNo="
                    + page;
                // $("#currentPage").val(page);
                // $("#searchForm").submit();

            }
        });

    })
</script>


</body>

</html>



