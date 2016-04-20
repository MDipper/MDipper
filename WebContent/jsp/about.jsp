<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/commons/tag_libs.jsp"%>
<style>
#aboutmenu  div {
	margin-left: 20px;
	margin-right: 20px;
	padding-left: 50px;
	display: table-cell;
	text-align: center;
}

#aboutmenu  div:before {
	content: "";
	position: relative;
    left: 12px;
	width: 120px;
	height: 120px;
	border: 4px solid #dcdcdc;
	border-bottom: 4px solid red;
	border-left: 4px solid red;
	border-radius: 100%;
	transform: rotate(-45deg);
	text-align: center;
	display: table-cell;
	vertical-align: middle;
}

#aboutmenu  div a {
	position: relative;
	left: -20px;
	top: -75px;
	word-break: keep-all;
}

#aboutmenu  a {
	font-size: 18px;
	color: #282828;
	font-weight: 600;
	text-decoration: none;
	padding-bottom: 10px;
	border-bottom: 2px solid #fff;
	margin: 50px;
}

#aboutmenu, #aboutshow {
	width: 90%;
	padding-right: 15px;
	padding-left: 15px;
	margin-left: auto;
	margin-right: auto;
	margin-top: 30px;
	display: table;
}

#aboutmenu .aboutactive div:before {
	background: red;
	border: 4px solid red;
	color: white;
}
</style>
<script>
	$(function() {
		$("#aboutmenu a div").click(function() {
			$("#aboutmenu a div").removeClass("aboutactive");
			$(this).find("div").addClass("aboutactive");
		})
	});
</script>
<div>
	<div>
		<div style="position: relative; width: 100%; height: 280px;">
			<img style="width: 100%; height: 280px;" src="${image}/mainbg.jpg" />
			<div
				style="position: absolute; font-size: 40px; color: #fff; z-indent: 2; left: 67%; top: 100px;">
				ABOUT 关于</div>
		</div>
	</div>
	<div id="aboutmenu">
		<div class="aboutactive">
			<a href="#">关于我们</a>
		</div>
		<div>
			<a href="#">企业文化</a>
		</div>
		<div>
			<a href="#">发展历程</a>
		</div>
		<div>
			<a href="#">企业荣誉</a>
		</div>
		<div>
			<a href="#">视频中心</a>
		</div>
	</div>
	<div id="aboutshow">
		<%@include file="/jsp/about/aboutus.jsp"%>
	</div>
</div>