<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<html lang="en">
<meta http-equiv="content-type" content="text/html;charset=UTF-8">
<head>
	<meta charset="utf-8" />
	<meta name="author" content="order by dede58.com" />
	<title>恒望门户后台管理</title>
	<meta content="width=device-width, initial-scale=1.0" name="viewport" />
	<meta http-equiv="content-type" content="text/html;charset=UTF-8">
	<!-- 导入css资料文件 -->
	<jsp:include page="common/resource.jsp" />

</head>

<body class="fixed-top">

<!-- 头部 -->
<jsp:include page="common/header.jsp" />


<div id="container" class="row-fluid">

	<!-- 左侧 导航 -->
	<jsp:include page="common/left.jsp" />

	<div id="main-content">
		<div class="container-fluid">
			<div class="row-fluid">
				<div class="span12">

					<h6></h6>
					<ul class="breadcrumb">
						<li><a href="common.html">主页</a>
					</ul>
				</div>
			</div>
			<div class="row-fluid">
				<div class="metro-nav">
					<div class="metro-nav-block nav-block-orange"> <a data-original-title="" href="Enterprise/enterprise-list.html"> <i class="icon-user"></i>
						<div class="info">1</div>
						<div class="status">当前在线人数</div>
					</a> </div>
				</div>

			</div>
		</div>
	</div>


</div>

<!-- 底部 -->
<jsp:include page="common/footer.jsp" />

<!-- 导入JavaScript -->
<jsp:include page="common/javascript.jsp" />
</body>

</html>
