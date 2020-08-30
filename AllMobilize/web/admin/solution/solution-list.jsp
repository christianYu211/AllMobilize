<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2020/6/9
  Time: 21:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>

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

                    <h6></h6>
                    <ul class="breadcrumb">

                        <li><a href="../index.html">主页</a> <span class="divider">/</span>
                        </li>
                        <li><a href="enterprise-list.html">解决方案列表</a></li>
                    </ul>
                </div>
            </div>
            <div id="page-wraper">
                <div class="row-fluid">
                    <div class="row-fluid">
                        <div class="span12">
                            <div class="widget red">
                                <div class="widget-title">
                                    <h4>
                                        <i class="icon-reorder"></i>解决方案列表
                                    </h4>
                                    <span class="tools"> <a href="javascript:;"
                                                            class="icon-chevron-down"></a> <a href="javascript:;"
                                                                                              class="icon-remove"></a>
										</span>
                                </div>
                                <div class="widget-body">
                                    <div>
                                        <li><a href="admin/solution/solution-update.jsp?method=saveSolution&pageNo=${requestScope.page.pageNo}"><button
                                                class="btn btn-inverse" type="button">新增</button></a> </a>

                                            <form id="searchForm" method="post"
                                                  action="SolutionServlet?action=page">
                                                <input type="hidden" id="currentPage" name="currentPage" />
                                                <div class="pull-right input-append search-input-area">
                                                    <input class="" id="solutionTitle" name="solutionTitle"
                                                           type="text" value="${requestScope.solutionTitle}"
                                                           placeholder="请输入解决方案名称">
                                                    <input class="" value="${requestScope.createTime}"
                                                           id="createTime" name="createTime" type="text"
                                                           placeholder="请输入添加时间">
                                                    <button class="btn" id="searchs">
                                                        <i class="icon-search"></i>
                                                    </button>
                                                    <button class="btn" id="btnclear">
                                                        &nbsp;<i class="icon-eraser"></i>
                                                    </button>
                                                </div>
                                            </form></li>
                                    </div>
                                    <table
                                            class="table table-striped table-bordered table-advance table-hover">
                                        <thead>
                                        <tr>
                                            <th style="width: 8px;"><input type="checkbox"
                                                                           class="group-checkable" data-set="#sample_1 .checkboxes" /></th>

                                            <th><i class="icon-bullhorn"></i> 解决方案标题</th>

                                            <th><i class="icon-bullhorn"></i> 解决方案内容</th>
                                            <th><i class="icon-bullhorn"></i> 发布时间</th>

                                            <th><i class="icon-edit-sign"></i> 操作</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach var="solution" items="${requestScope.page.items}">
                                            <tr>
                                                <td><input type="checkbox" class="checkboxes"
                                                           value="1" /></td>

                                                <td>${solution.solutiontitle}</td>
                                                <td>${solution.solutiondesc}</td>

                                                <td>${solution.createtime}</td>


                                                <td class="center"><a class="btn btn-info"
                                                                      href="SolutionServlet?action=getSolution&method=updateSolution&solutionid=${solution.solutionid}&pageNo=${requestScope.page.pageNo}" title="编辑"> <i
                                                        class="icon-edit icon-white"></i>
                                                </a> <a class="btn btn-danger" href="javascript:void(0)" onclick="doDelete('${solution.solutionid}')"  title="删除"> <i
                                                        class="icon-trash"></i>
                                                </a></td>
                                            </tr>
                                        </c:forEach>

                                        </tbody>
                                    </table>

                                    <div id="myPage" class="demo"></div>

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

