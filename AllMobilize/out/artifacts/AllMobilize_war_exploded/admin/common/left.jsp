<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<base href="http://localhost:8080/AllMobilize_war_exploded/">
<div class="sidebar-scroll">
	<div id="sidebar" class="nav-collapse collapse">
		<div class="navbar-inverse">
			<form class="navbar-search visible-phone">
				<input type="text" class="search-query" placeholder="Search" />
			</form>
		</div>
		<ul class="sidebar-menu">

			<li class="sub-menu"><a href="javascript:;" class=""> <i
					class="icon-eye-open"></i> <span>系统管理</span> <span class="arrow"></span>
			</a>
				<ul class="sub">
					<li><a class="" href="AdminServlet?action=page">角色管理</a></li>
					<li><a class="" href="UserInfoServlet?action=page">用户管理</a></li>
					
				</ul></li>
			<li class="sub-menu"><a href="javascript:;" class=""> <i
					class="icon-eye-open"></i> <span>功能模块</span> <span class="arrow"></span>
			</a>
				<ul class="sub">
					<li><a class="" href="ProductionServlet?action=page">产品中心</a></li>
					<li><a class="" href="CustomcaseServlet?action=page">客户案例</a></li>
					<li><a class="" href="SolutionServlet?action=page">解决方案</a></li>
					<li><a class="" href="NewsServlet?action=page">新闻中心</a></li>
					<li><a class="" href="AboutServlet?action=page">关于我们</a></li>
					<li><a class="" href="JoinServlet?action=page">加入我们</a></li>
					<li><a class="" href="Contact?action=page">联系我们</a></li>



				</ul></li>


		</ul>
	</div>
</div>

