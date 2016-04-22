<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@include file="/commons/tag_libs.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>登录</title>
<link href="${resource}/css/bootstrap.min.css?v=3.3.5" rel="stylesheet">
<link href="${resource}/css/font-awesome.min.css?v=4.0.0" 	rel="stylesheet">
<link href="${resource}/css/animate.min.css" rel="stylesheet">
<link href="${resource}/css/style.min.css?v=4.0.0" rel="stylesheet">
<script src="${resource}/js/jquery.min.js?v=2.1.4"></script>
<script src="${resource }/js/bootstrap.min.js?v=3.3.5"></script>
</head>

<body class="gray-bg">

	<div class="middle-box text-center loginscreen  animated fadeInDown">
		<div>
			<div>
				<h1 class="logo-name">MD</h1>
			</div>
			<h3>欢迎使用后台管理系统</h3>
			<form id="signupForm" class="m-t" role="form" method="post"
				action="${ctx }/account/loginpost">
				<div class="form-group">
					<input type="text" id="username" name="username"
						class="form-control" placeholder="用户名" required="">
				</div>
				<div class="form-group">
					<input type="password" id="password" name="password"
						class="form-control" placeholder="密码" required="">
				</div>
				<button type="submit" class="btn btn-primary block full-width m-b">登
					录</button>


				<p class="text-muted text-center">
					<a href="#"><small>忘记密码了？</small></a> | <a
						href="${ctx}/account/register">注册一个新账号</a>
				</p>

			</form>
		</div>
	</div>


</body>

</html>