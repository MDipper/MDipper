<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>首页</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script src="${js}/jquery-1.11.1.js"></script>
<script src="${js}/jquery.pjax.js"></script>
<script src="${js}/home.js"></script>
<link href="${css}/home.css" rel="stylesheet">
<script type="application/x-javascript">
	
	
    addEventListener("load", function() {
      setTimeout(hideURLbar, 0);
    }, false);
    function hideURLbar() {
      window.scrollTo(0, 1);
    }

</script>
</head>
<body>
	<div class="header" id="home">
		<div id="container">
			<div class="logo">
				<a href="${ctx}/main/index"> <img src="${image}/logo.png" />
				</a>
			</div>
			<div class="navigation">
				<span class="menu"></span>
				<ul id="nav" class="navig">
					<li><a href="${ctx}/main/index" class="active">首页</a>
						<div></div></li>
					<li><a href="${ctx}/main/about">关于</a>
						<div></div>
						<div class="divbg"></div>
						<div class="divul">
							<ul>
								<li><a href="${ctx}">menu</a></li>
								<li><a href="${ctx}">menu</a></li>
								<li><a href="${ctx}">menu</a></li>
							</ul>
						</div>
						<div></div></li>
					<li><a href="${ctx}/main/product">产品</a>
						<div></div>
						<div class="divbg"></div>
						<div class="divul">
							<ul>
								<li><a href="${ctx}">menu</a></li>
								<li><a href="${ctx}">menu</a></li>
								<li><a href="${ctx}">menu</a></li>
							</ul>
						</div>
						<div></div></li>
					<li><a href="${ctx}/main/news">新闻</a>
						<div></div>
						<div class="divbg"></div>
						<div class="divul">
							<ul>
								<li><a href="${ctx}">menu</a></li>
								<li><a href="${ctx}">menu</a></li>
								<li><a href="${ctx}">menu</a></li>
							</ul>
						</div>
						<div></div></li>
					<li><a href="${ctx}/main/service">服务</a>
						<div></div>
						<div class="divbg"></div>
						<div class="divul">
							<ul>
								<li><a href="${ctx}">menu</a></li>
								<li><a href="${ctx}">menu</a></li>
								<li><a href="${ctx}">menu</a></li>
							</ul>
						</div>
						<div></div></li>
					<li><a href="${ctx}/main/join">招聘</a>
						<div></div></li>
					<li><a href="${ctx}/main/contact">联系</a>
						<div></div></li>
				</ul>
			</div>
		</div>
	</div>

</body>
</html>