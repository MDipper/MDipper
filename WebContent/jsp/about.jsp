<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/commons/tag_libs.jsp"%>
<style>
#aboutmenu {
	width: 300px;
	padding-right: 15px;
	padding-left: 15px;
	margin-right: auto;
	margin-left: auto;
	margin-top: 20px;
	margin-bottom: 20px;
	text-align: center;
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
		<span class="menu"></span>
		<div>
		<ul id="nav" class="navig">
			<li><a href="#" class="aboutactive">关于我们</a>
				<div></div></li>
			<li><a href="#">企业文化</a>
				<div></div></li>
			<li><a href="#">发展历程</a>
				<div></div></li>
		</ul>
		</div>
	
	</div>
	<div id="aboutshow">
		<%@include file="/jsp/about/aboutus.jsp"%>
	</div>
</div>