<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@include file="/commons/tag_libs.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>登录</title>
<link href="${resource}/css/bootstrap.min.css?v=3.3.5" rel="stylesheet">
<link href="${resource}/css/font-awesome.min.css?v=4.0.0"
	rel="stylesheet">
<link href="${resource}/css/animate.min.css" rel="stylesheet">
<link href="${resource}/css/style.min.css?v=4.0.0" rel="stylesheet">
<script src="${resource}/js/jquery.min.js?v=2.1.4"></script>
<script src="${resource }/js/bootstrap.min.js?v=3.3.5"></script>

 <link href="${resource }/css/bootstrapValidator.css" rel="stylesheet" />
<script src="${resource }/js/bootstrapValidator.js"></script>

<script src="${js }/jquery.validate.min.js"></script>
<script src="${js }/messages_zh.js"></script>

<script type="text/javascript">
	function gup(name) {
		name = name.replace(/[\[]/, "\\\[").replace(/[\]]/, "\\\]");
		var regexS = "[\\?&]" + name + "=([^&#]*)";
		var regex = new RegExp(regexS);
		var results = regex.exec(location.pathname);
		if (results == null) {
			return location.pathname;
		} else {
			return results[1];
		}
	}
	$.validator.setDefaults({
		submitHandler : function() {
			$.post(
			// 接收数据的页面
			'${ctx}/account/loginpost',
			// 传给后台的数据，多个参数用&连接或者使用json格式数据：{a:'value1',b:'value2'}
			{
				username : $("#username").val(),
				password : $("#password").val()
			}, function(data) {
				if (data.code == '200') {
					alert("msg: " + data.msg + "\n" + "即将跳转。");
					location.href = gup("ReturnURL");
				} else if (data.code == '400') {
					alert(data.msg);
					location.reload();
				}
			},
			// 默认返回字符串，设置值等于json则返回json数据
			'json').error(function() {
				alert("登录失败，请稍后再试。");
			});
		}
	});

	$(document).ready(function() {

		// validate the comment form when it is submitted
		 $("#signupForm").validate({
			rules : {
				username : {
					required : true,
					minlength : 2,
				},
				password : {
					required : true,
					minlength : 6
				},
			},
			messages : {
				username : {
					required : "请输入用户名",
					minlength : "用户名至少由两个字符组成"
				},
				password : {
					required : "请输入密码",
					minlength : "密码长度不能小于 6 个字符"
				},
			}
		}); 
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