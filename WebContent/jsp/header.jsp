<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Home</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script src="${js}/jquery-1.11.1.js"></script>
<link href="${css}/home.css" rel="stylesheet">
<script type="application/x-javascript">
    addEventListener("load", function() {
      setTimeout(hideURLbar, 0);
    }, false);
    function hideURLbar() {
      window.scrollTo(0, 1);
    }
  </script>
<!--webfont-->
<script src="${js}/responsiveslides.min.js"></script>
<script>
    $(function() {
      $("#slider").responsiveSlides({
        auto: true,
        speed: 400,
        namespace: "callbacks",
        pager: true
      });
    });
  </script>
</head>
<body>
	<div class="phone"><a href="user/tologin">登录</a></div>
	<div class="header" id="home">
		<div class="container">
			<div class="logo">
				<a href=""> <img src="${image}/logo.png" />
				</a>
			</div>
			<div class="navigation">
				<span class="menu"></span>
				<ul id="nav" class="navig">
					<li><a href="" class="active">Home</a>
						<div></div></li>
					<li><a href="#services" class="scroll">Services</a>
						<div></div>
						<div class="divbg"></div>
						<div class="divul">
							<ul>
								<li><a href="">menu</a></li>
								<li><a href="">menu</a></li>
								<li><a href="">menu</a></li>
							</ul>
						</div>
						<div></div></li>
					<li><a href="#experties" class="scroll">Experties</a>
						<div></div>
						<div class="divbg"></div>
						<div class="divul">
							<ul>
								<li><a href="">menu</a></li>
								<li><a href="">menu</a></li>
								<li><a href="">menu</a></li>
							</ul>
						</div>
						<div></div></li>
					<li><a href="#pricing" class="scroll">Pricing</a>
						<div></div>
						<div class="divbg"></div>
						<div class="divul">
							<ul>
								<li><a href="">menu</a></li>
								<li><a href="">menu</a></li>
								<li><a href="">menu</a></li>
							</ul>
						</div>
						<div></div></li>
					<li><a href="#team" class="scroll">Team</a>
						<div></div>
						<div class="divbg"></div>
						<div class="divul">
							<ul>
								<li><a href="">menu</a></li>
								<li><a href="">menu</a></li>
								<li><a href="">menu</a></li>
							</ul>
						</div>
						<div></div></li>
					<li><a href="#features" class="scroll">Features</a>
						<div></div></li>
					<li><a href="#projects" class="scroll">Projects</a>
						<div></div></li>
					<li><a href="#blog" class="scroll">Blog</a>
						<div></div></li>
					<li><a href="#get" class="scroll">Get In Touch</a>
						<div></div></li>
				</ul>
			</div>
		</div>
	</div>

</body>
</html>