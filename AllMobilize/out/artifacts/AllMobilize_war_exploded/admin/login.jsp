<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="en">

<meta http-equiv="content-type" content="text/html;charset=UTF-8">
<head>
<meta charset="utf-8" />
<meta name="author" content="order by dede58.com" />
<title>登录</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<meta content="" name="description" />
<meta content="" name="author" />
	<!-- 导入css资料文件 -->
	<jsp:include page="/admin/common/resource.jsp" />
</head>


<body class="lock">

	<form method="post" action="AdminServlet">
		<input type="hidden" name="action" value="login">
		<div class="lock-header">
			<a class="center" id="logo" href="index.html"> </a>

		</div>
		<div class="login-wrap">
			<div class="metro single-size red">
				<div class="locked">
					<i class="icon-lock"></i> <span>登录</span>
				</div>
			</div>
			<div class="metro double-size green">
				<div class="input-append lock-input">
					<input type="text" class="" name="username" id="username" placeholder="用户名" value="${empty requestScope.username?"":requestScope.username}">
				</div>

			</div>
			<div class="metro double-size yellow">

				<div class="input-append lock-input">
					<input type="password" class="" name="password" id="password" placeholder="密码">
				</div>

			</div>
			<div class="metro single-size terques login">

				<button type="submit" class="btn login-btn">
					登录 <i class=" icon-long-arrow-right"></i>
				</button>

			</div>

			<div class="login-footer">
				<div class="remember-hint pull-left">
					<input type="checkbox" id=""> 记住密码
					<span id="" style="color: red">
						${empty requestScope.msg ? "":requestScope.msg}
					</span>
				</div>
				<div class="forgot-hint pull-right">
					<a href="index.jsp">返回官网</a>&nbsp;&nbsp;
					<a id="forget-password" class="" href="javascript:;">忘记密码?</a>
				</div>
			</div>
		</div>
	</form>
</body>

<meta http-equiv="content-type" content="text/html;charset=UTF-8">
<!-- 导入JavaScript -->
<jsp:include page="/admin/common/javascript.jsp" />
<script>
	$(function () {

	})
</script>
</html>