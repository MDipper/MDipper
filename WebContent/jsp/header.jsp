<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Home</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script src="${js}/jquery-1.11.1.js"></script>
<script src="${js}/jquery.pjax.js"></script>
<script src="${js}/responsiveslides.min.js"></script>
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
  <script>
  function AsyncShowContent( url ){
	  $.pjax({
			selector: url,
			container: '#main', //内容替换的容器
			show: 'fade',  //展现的动画，支持默认和fade, 可以自定义动画方式，这里为自定义的function即可。
			cache: true,  //是否使用缓存
			storage: true,  //是否使用本地存储
			titleSuffix: '', //标题后缀
			filter: function(){},
			callback: function(){}
		})
  }
  
  </script>
</head>
<body>
	<div class="header" id="home">
		<div class="container">
			<div class="logo">
				<a href=""> <img src="${image}/logo.png" />
				</a>
			</div>
			<div class="navigation">
				<span class="menu"></span>
				<ul id="nav" class="navig">
					<li><a href="" class="active"  onclick="AsyncShowContent('main/index')">首页</a>
						<div></div></li>
					<li><a href="" class="scroll"  onclick="AsyncShowContent('main/about')">关于</a>
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
					<li><a href="" class="scroll"  onclick="AsyncShowContent('main/product')">产品</a>
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
					<li><a href="" class="scroll"   onclick="AsyncShowContent('main/news')">新闻</a>
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
					<li><a href="" class="scroll"  onclick="AsyncShowContent('main/service')">服务</a>
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
					<li><a href="" class="scroll"  onclick="AsyncShowContent('main/join')">招聘</a>
						<div></div></li>
					<li><a href="" class="scroll"   onclick="AsyncShowContent('main/contract')">联系</a>
						<div></div></li>
	
				</ul>
			</div>
		</div>
	</div>

</body>
</html>