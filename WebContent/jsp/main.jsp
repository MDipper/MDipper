<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/commons/tag_libs.jsp"%>
<style>
.indexpage {
	width: 80%;
	margin-left: auto;
	margin-right: auto;
}

.indexpage   div div {
	margin-top: 10px;
	margin-bottom: 10px;
	padding: 0px;
	width: 100%;
	color: white;
	font-family: "华文中宋";
}
</style>
<div id="main">
	<div class="slider">
		<ul class="rslides" id="slider">
			<li><img src="${image}/bg1.jpg" /></li>
			<li><img src="${image}/bg2.jpg" /></li>
			<li><img src="${image}/bg3.jpg" /></li>
		</ul>
	</div>
	<div style="background: #2d2e32;">
		<div id="companyinfo" class="indexpage">
			<div style="padding: 35px; width: 50%;">
				<div style="font-size: 24px;">企业简介 COMPANY INTRODUTION</div>
				<div style="background: red; width: 10%; height: 2px;"></div>
				<div>苏宁环球集团自1987年创业至今，栉风沐雨、励精图治，目前位列“2015中国民营企业500强”第17位，“中国民营企业服务业100强”第8位。企业总资产近千亿元，品牌价值超千亿元。苏宁环球集团在不断做大做强地产主业的同时，还积极谋求多元化发展。</div>
				<div style="color:red;font-size:18px;">
					<a class="text-decoration: none; " href="${ctx}/main/about">了解更多</a>
				</div>
			</div>
		</div>
	</div>
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