<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/commons/tag_libs.jsp"%>
<link href="${css}/service.css" rel="stylesheet">
<script type="text/javascript">
$(function() {
	$("#servicemenu #nav a").click(function() {
		$("#servicemenu #nav a").removeClass("active");
		$(this).addClass("active");
	})
});
</script>
<style>

#plan {
	width: 100%;
	height: 650px;
	float: left;
	background: url("${image}/planbg.jpg");
}
</style>
<div>
	<div>
		<div style="position: relative; width: 100%; height: 280px;">
			<img style="width: 100%; height: 280px;" src="${image}/mainbg.jpg" />
			<div
				style="position: absolute; font-size: 40px; color: #fff; z-indent: 2; left: 67%; top: 100px;">
				SERVICE 服务</div>
		</div>
	</div>
	<div id="servicemenu">
		<span class="menu"></span>
		<div>
		<ul id="nav" class="navig">
			<li><a href="${ctx}/main/plan" class="active">方案</a>
				<div></div></li>
			<li><a href="${ctx}/main/teamwork">合作流程</a>
				<div></div></li>
			<li><a href="${ctx}/main/client">客户</a>
				<div></div></li>
		</ul>
		</div>
	</div>
	<div id="serviceshow">
		<%@ include file="/jsp/service/plan.jsp"%>
	</div>
</div>