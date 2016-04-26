<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/commons/tag_libs.jsp"%>
<div id="main">
	<div class="slider">
		<ul class="rslides" id="slider">
			<li><img src="${image}/bg1.jpg" /></li>
			<li><img src="${image}/bg2.jpg" /></li>
			<li><img src="${image}/bg3.jpg" /></li>
		</ul>
	</div>
	<div></div>
</div>
<script>
	loadJS("${js}" + "/responsiveslides.min.js", function() {
		setTimeout(function() {
			$("#slider").responsiveSlides({
				auto : true,
				speed : 400,
				namespace : "callbacks",
				pager : true
			});
		}, 1000);
	})
	$(function() {
		$("#nav li a").click(function() {
			$("#nav li a").removeClass("active");
			$(this).addClass("active");
		})
	});
</script>