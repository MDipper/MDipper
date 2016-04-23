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
<link href="${resource}/css/font-awesome.min.css?v=4.4.0"
	rel="stylesheet">
<link href="${resource}/css/plugins/iCheck/custom.css" rel="stylesheet">
<link href="${resource}/css/animate.min.css" rel="stylesheet">
<link href="${resource}/css/style.min.css?v=4.0.0" rel="stylesheet">

<script src="${resource}/js/jquery.min.js?v=2.1.4"></script>
<script src="${resource}/js/bootstrap.min.js?v=3.3.5"></script>

<script src="${js }/jquery.validate.min.js"></script>
<script src="${js }/messages_zh.js"></script>
<script type="text/javascript" >
$.validator.setDefaults({
	submitHandler: function() {
		$.post(
				// 接收数据的页面
				'${ctx}/account/addUser',
				// 传给后台的数据，多个参数用&连接或者使用json格式数据：{a:'value1',b:'value2'}
				{
					username: $("#username").val(),
					password: $("#password").val()
				},
				function(data) {
					if (data.code == '200') {
						alert("msg: "+data.msg+"\n"+"即将跳转。");
						location.href="/ssm";
					} else if (data.code == '400') {
						alert(data.msg);
					}
				},
				// 默认返回字符串，设置值等于json则返回json数据
				'json'
		).error(function(){
			alert("注册失败，请稍后再试。");
		});
	}
});

$().ready(function() {
	// validate the comment form when it is submitted
	$("#signupForm").validate({
		rules: {
		      username: {
		        required: true,
		        minlength: 2,
		        remote: {
				    url: "${ctx}/account/check_user",     //后台处理程序
				    type: "get",                //数据发送方式
				    dataType: "json",           //接受数据格式   
				    data: {                     //要传递的数据
				        username: function() {
				            return $("#username").val();
				        },
					    password: function() {
				            return $("#password").val();
				        }
				    }
				}
		      },
		      password: {
		        required: true,
		        minlength: 6
		      },
		      confirm_password: {
		        required: true,
		        minlength: 6,
		        equalTo: "#password"
		      }		      
		    },
		    messages: {
		      username: {
		        required: "请输入用户名",
		        minlength: "用户名至少由两个字符组成"
		      },
		      password: {
		        required: "请输入密码",
		        minlength: "密码长度不能小于 6 个字母"
		      },
		      confirm_password: {
		        required: "请输入密码",
		        minlength: "密码长度不能小于 6 个字母",
		        equalTo: "两次密码输入不一致"
		      }
		    }		
	});
});
</script> 

</head>

<body class="gray-bg">

	<div class="middle-box text-center loginscreen   animated fadeInDown">
		<div>
			<div>

				<h1 class="logo-name">MD</h1>

			</div>
			<h3>欢迎注册</h3>
			<p>创建一个新账户</p>
			<form id="signupForm" class="m-t" role="form" method="post"
				action="${ctx }/account/addUser">
				<div class="form-group">
					<input type="text" id="username" name="username"
						class="form-control" placeholder="请输入用户名" required="">
				</div>
				<div class="form-group">
					<input type="password" id="password" name="password"
						class="form-control" placeholder="请输入密码" required="">
				</div>
				<div class="form-group">
					<input type="password" id="repassword" name="repassword"
						class="form-control" placeholder="请再次输入密码" required="">
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
					<small>已经有账户了？</small><a href="${ctx}/account/login">点此登录</a>
				</p>

			</form>
		</div>
	</div>

	<script src="${resource}/js/plugins/iCheck/icheck.min.js"></script>
	<script>
        $(document).ready(function(){$(".i-checks").iCheck({checkboxClass:"icheckbox_square-green",radioClass:"iradio_square-green",})});
    </script>
</body>

</html>