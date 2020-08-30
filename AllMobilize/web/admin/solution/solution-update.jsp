<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2020/6/10
  Time: 17:35
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

    <link rel="stylesheet"
          href="admin/assets/kindeditor/themes/default/default.css" />
    <link rel="stylesheet"
          href="admin/assets/kindeditor/plugins/code/prettify.css" />
    <script charset="utf-8" src="admin/assets/kindeditor/kindeditor-all.js"></script>
    <script charset="utf-8" src="admin/assets/kindeditor/lang/zh-CN.js"></script>
    <script charset="utf-8"
            src="admin/assets/kindeditor/plugins/code/prettify.js"></script>

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
                        <li><a href="../index.html">主页</a> <span class="divider">/</span>
                        </li>
                        <li><a href="enterprise-list.html">解决方案</a> <span
                                class="divider">/</span></li>
                        <li><a href="enterprise-add.html">更新解决方案</a></li>
                    </ul>
                </div>
            </div>
            <div class="row-fluid">
                <div class="span12">
                    <div class="widget red">
                        <div class="widget-title">
                            <h4>
                                <i class="icon-plus"></i> 更新解决方案
                            </h4>
                            <div class="tools">
                                <a href="javascript:;" class="collapse"></a> <a
                                    href="#portlet-config" data-toggle="modal" class="config"></a>
                                <a href="javascript:;" class="reload"></a> <a
                                    href="javascript:;" class="remove"></a>
                            </div>
                        </div>
                        <div class="widget-body form">
                            <form class="cmxform form-horizontal" id="commentform"
                                  method="post" action="SolutionServlet"
                                  enctype="multipart/form-data">

                                <input type="hidden" name="pageNo" value="${param.pageNo}">
                                <input type="hidden" name="action" value="${param.method}">
                                <input type="hidden" name="solutionid" value="${requestScope.solution.solutionid}">
                                <input type="hidden" name="uid" value="${sessionScope.admin.adminid}">
                                <input type="hidden" name="createtime" id="createtime" value="${requestScope.solution.createtime}">

<%--                                <input type="hidden" name="oldpic" id="oldpic"/>--%>


                                <div class="control-group ">
                                    <label for="cname" class="control-label">解决方案标题</label>
                                    <div class="controls">
                                        <input class="span3 " value="${requestScope.solution.solutiontitle}"
                                               id="solutiontitle" name="solutiontitle" type="text" required />
                                    </div>
                                </div>

                                <div class="control-group ">
                                    <label for="cname" class="control-label">解决方案图片</label>
                                    <div class="controls">
                                        <input class="span6 " value="${requestScope.solution.solutionpic}"
                                               id="solutionpic" name="solutionpic" type="file"
                                               onchange="setImagePreview()" />
                                    </div>
                                </div>
                                <div class="control-group " id="localImag">
                                    <label for="cname" class="control-label">&nbsp;</label>
                                    <div class="controls">
                                        <img id="preview" width=-1 height=-1 style="diplay: none" />
                                    </div>
                                </div>
                                <div class="control-group ">
                                    <label for="cname" class="control-label">解决方案内容</label>
                                    <div class="controls">
											<textarea name="solutiondesc" cols="100" rows="8"
                                                      style="width: 700px; height: 200px; visibility: hidden;">${requestScope.solution.solutiondesc}</textarea>

                                    </div>
                                </div>


                                <div class="form-actions">
                                    <button class="btn btn-success" type="submit">确定</button>
                                    <a href="SolutionServlet?action=page">
                                        <button class="btn" type="button">取消</button>
                                    </a>
                                </div>
                            </form>
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
<script type="text/javascript">
    $(function() {
        /**
         *显示图片
         */


        var pic = "${requestScope.solution.solutionpic}";
        if (pic != "") {
            $("#preview").show();
            $("#oldpic").val(pic);
            $("#preview").css({
                "width" : "260",
                "height" : "120"
            });
            $("#preview").attr("src",
                "http://localhost:8080/AllMobilize_war_exploded/attached/" + pic);
        }
    })
    function setImagePreview() {
        var docObj = document.getElementById("solutionpic");
        var imgObjPreview = document.getElementById("preview");
        if (docObj.files && docObj.files[0]) {
            //火狐下，直接设img属性
            imgObjPreview.style.display = 'block';
            imgObjPreview.style.width = '260px';
            imgObjPreview.style.height = '120px';
            //imgObjPreview.src = docObj.files[0].getAsDataURL();
            //火狐7以上版本不能用上面的getAsDataURL()方式获取，需要一下方式
            imgObjPreview.src = window.URL.createObjectURL(docObj.files[0]);
        } else {
            //IE下，使用滤镜
            docObj.select();
            var imgSrc = document.selection.createRange().text;
            var localImagId = document.getElementById("localImag");
            //必须设置初始大小
            localImagId.style.width = "250px";
            localImagId.style.height = "200px";
            //图片异常的捕捉，防止用户修改后缀来伪造图片
            try {
                localImagId.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale)";
                localImagId.filters
                    .item("DXImageTransform.Microsoft.AlphaImageLoader").src = imgSrc;
            } catch (e) {
                alert("您上传的图片格式不正确，请重新选择!");
                return false;
            }
            imgObjPreview.style.display = 'none';
            document.selection.empty();
        }
        return true;
    }
</script>
<script>
    KindEditor
        .ready(function(K) {
            var editor1 = K
                .create(
                    'textarea[name="solutiondesc"]',
                    {
                        cssPath : 'admin/assets/kindeditor/plugins/code/prettify.css',
                        uploadJson : 'admin/assets/kindeditor/jsp/upload_json.jsp',
                        fileManagerJson : 'admin/assets/kindeditor/jsp/file_manager_json.jsp',
                        allowFileManager : true,
                        afterCreate : function() {
                            var self = this;
                            K.ctrl(document, 13, function() {
                                self.sync();
                                document.forms['example']
                                    .submit();
                            });
                            K
                                .ctrl(
                                    self.edit.doc,
                                    13,
                                    function() {
                                        self.sync();
                                        document.forms['example']
                                            .submit();
                                    });
                        }
                    });
            prettyPrint();
        });
</script>

</body>

</html>

