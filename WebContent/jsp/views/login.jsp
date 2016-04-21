<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@include file="/commons/tag_libs.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>登录</title>
<link href="${resource}/css/bootstrap.min.css?v=3.3.5" rel="stylesheet">
<link href="${resource}/css/font-awesome.min.css?v=4.0.0"
	rel="stylesheet">
<link href="${resource}/css/animate.min.css" rel="stylesheet">
<link href="${resource}/css/style.min.css?v=4.0.0" rel="stylesheet">

<!--校验文本框  -->
<script src="${js}/jquery-1.11.1.js" ></script>
<script src="${js}/jquery.validate.min.js"></script>
<script src="${js}/messages_zh.js" ></script>
<base target="_blank">
<script>
	if (window.top !== window.self) {
		window.top.location = window.location;
	}
</script>
<script type="text/javascript">
$.validator.setDefaults({
	submitHandler: function() {
		$.post(
				// 接收数据的页面
				'${ctx}/account/login',
				// 传给后台的数据，多个参数用&连接或者使用json格式数据：{a:'value1',b:'value2'}
				{
					username: $("#username").val(),
					password: $("#password").val()
				},
				function(data) {
					if (data.code == '200') {
						alert("msg: "+data.msg+"\n"+"即将跳转。");
					} else if (data.code == '400') {
						alert(data.msg);
					}
				},
				// 默认返回字符串，设置值等于json则返回json数据
				'json'
		).error(function(){
			alert("登录失败，请稍后再试。");
		});
	}
});

</script>
</head>

<body class="gray-bg">

	<div class="middle-box text-center loginscreen  animated fadeInDown">
		<div>
			<div>

				<h1 class="logo-name">MD</h1>

			</div>
			<h3>欢迎使用后台管理系统</h3>
			<form id="signupForm" class="m-t" role="form" method="post"
				action="${ctx }/account/login">
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
						href="${ctx}/account/gotoregister">注册一个新账号</a>
				</p>

			</form>
		</div>
	</div>
	<script src="${resource }/js/jquery.min.js?v=2.1.4"></script>
	<script src="${resource }/js/bootstrap.min.js?v=3.3.5"></script>

</body>

</html>