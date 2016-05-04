<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@include file="/commons/tag_libs.jsp"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="${resource}/css/bootstrap.min.css" rel="stylesheet">
<style>
#newslist {
	background: #fafafa;
	width: 80%;
	height: auto;
	margin-left: auto;
	margin-right: auto;
	margin-top: 40px;
	padding: 35px;
}
</style>
</head>
<body>
	<div id="newslist">
		<c:forEach var="item" items="${newslist}" varStatus="status">
			<div style="width: 100%;">
				<div style="width: 60%; font-size: 20px; color: blue; float: left;">
					<a href="#" style="text-decoration: none;">${item.newstitle}</a>
				</div>
				<div style="width: 20%; font-size: 18px; float: left;">${item.newsdate}</div>
				<div style="width: 20%; float: left;">
					<a href="${ctx}/backend/newsedit/${item.newsid}"
						class="text-decoration: none;"><span>修改</span></a>
				</div>
				<br />
			</div>
		</c:forEach>
		<div style="height: 40px;"></div>
	</div>
</body>
</html>