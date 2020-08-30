<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<base href="http://localhost:8080/AllMobilize_war_exploded/">
<div id="header" class="navbar navbar-inverse navbar-fixed-top">
	<div class="navbar-inner">
		<div class="container-fluid">
			<div class="sidebar-toggle-box hidden-phone">
				<div class="icon-reorder tooltips" data-placement="right"
					data-original-title="Toggle Navigation"></div>
			</div>
			<a class="brand" href="index.html"> </a> <a
				class="btn btn-navbar collapsed" id="main_menu_trigger"
				data-toggle="collapse" data-target=".nav-collapse"> <span
				class="icon-bar"></span> <span class="icon-bar"></span> <span
				class="icon-bar"></span> <span class="arrow"></span>
			</a>
			<div class="top-nav ">
				<ul class="nav pull-right top-menu">
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown"> <img
							src="admin/assets/img/avatar1_small.jpg" alt=""> <span
							class="username">${sessionScope.admin.nickname}</span> <b class="caret"></b>
					</a>
						<ul class="dropdown-menu extended logout">
							<li><a href="#"><i class="icon-edit"></i>修改密码</a></li>
							<li><a href="#"><i class="icon-edit"></i>修改昵称</a></li>
							<li><a href="AdminServlet?action=logout"><i class="icon-key"></i>退出登录</a></li>
						</ul></li>
				</ul>
			</div>
		</div>
	</div>
</div>

