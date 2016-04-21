<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@include file="/commons/tag_libs.jsp"%>
<!DOCTYPE html>
<html>

<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">


<title>注册</title>

<link href="${resource}/css/bootstrap.min.css?v=3.3.5" rel="stylesheet">
<link href="${resource}/css/font-awesome.min.css?v=4.4.0" rel="stylesheet">
<link href="${resource}/css/plugins/iCheck/custom.css" rel="stylesheet">
<link href="${resource}/css/animate.min.css" rel="stylesheet">
<link href="${resource}/css/style.min.css?v=4.0.0" rel="stylesheet">
<base target="_blank">
<script>if(window.top !== window.self){ window.top.location = window.location;}</script>
</head>

<body class="gray-bg">

	<div class="middle-box text-center loginscreen   animated fadeInDown">
		<div>
			<div>

				<h1 class="logo-name">MD</h1>

			</div>
			<h3>欢迎注册</h3>
			<p>创建一个新账户</p>
			<form class="m-t" role="form" action="${ctx }/account/register">
				<div class="form-group">
					<input type="text"  name="loginName" class="form-control" placeholder="请输入用户名"
						required="">
				</div>
				<div class="form-group">
					<input type="password" name="password" class="form-control" placeholder="请输入密码"
						required="">
				</div>
				<div class="form-group">
					<input type="password" name="repassword" class="form-control" placeholder="请再次输入密码"
						required="">
				</div>
				<div class="form-group text-left">
					<div class="checkbox i-checks">
						<label class="no-padding"> <input type="checkbox"><i></i>
							我同意注册协议
						</label>
					</div>
				</div>
				<button type="submit" class="btn btn-primary block full-width m-b">注
					册</button>

				<p class="text-muted text-center">
					<small>已经有账户了？</small><a href="${ctx }/account/login">点此登录</a>
				</p>

			</form>
		</div>
	</div>
	<script src="${resource}/js/jquery.min.js?v=2.1.4"></script>
	<script src="${resource}/js/bootstrap.min.js?v=3.3.5"></script>
	<script src="${resource}/js/plugins/iCheck/icheck.min.js"></script>
	<script>
        $(document).ready(function(){$(".i-checks").iCheck({checkboxClass:"icheckbox_square-green",radioClass:"iradio_square-green",})});
    </script>
</body>

</html>