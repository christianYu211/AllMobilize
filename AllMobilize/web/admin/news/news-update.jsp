<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2020/6/21
  Time: 22:13
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

                    <h5></h5>
                    <ul class="breadcrumb">
                        <li> <a href="../index.html">主页</a> <span class="divider">/</span> </li>
                        <li> <a href="push-list.html">消息记录</a> <span class="divider">/</span> </li>
                        <li> <a href="push-add.html">新增推送消息</a> </li>
                    </ul>
                </div>
            </div>
            <div class="row-fluid">
                <div class="span12">
                    <div class="widget red">
                        <div class="widget-title">
                            <h4><i class="icon-plus"></i> 新增推送消息</h4>
                            <div class="tools"> <a href="javascript:;" class="collapse"></a> <a href="#portlet-config" data-toggle="modal" class="config"></a> <a href="javascript:;" class="reload"></a> <a href="javascript:;" class="remove"></a> </div>
                        </div>
                        <div class="widget-body form">
                            <form class="cmxform form-horizontal" id="commentform" method="get" action="enterprise-list.html">
                                <div class="control-group ">
                                    <label for="cname" class="control-label">标题</label>
                                    <div class="controls">
                                        <input class="span6 " id="cname" name="name" minlength="2" type="text" required />
                                    </div>
                                </div>
                                <div class="control-group ">
                                    <label for="cname" class="control-label">推送企业</label>
                                    <div class="controls">
                                        <input class="span6 " id="cname" name="name" minlength="2" type="text" required />
                                    </div>
                                </div>





                                <div class="control-group">
                                    <label class="control-label" for="typeahead">推送内容</label>

                                    <div class="controls" >

                                        <textarea id="ueditor"  class="ueditor" style="width:100%" ></textarea>

                                    </div>
                                </div>


                                <div class="form-actions">
                                    <a href="push-list.html"><button class="btn btn-success" type="submit">确定</button></a>
                                    <a href="push-list.html"> <button class="btn" type="button">取消</button></a>
                                </div>
                            </form>
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

    $(function() {

    }
</script>


</body>

</html>
