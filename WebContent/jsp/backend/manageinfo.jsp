<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/commons/tag_libs.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>企业网站管理后台</title>
<link rel="stylesheet" type="text/css"
	href="${js}/jquery-easyui-1.4.5/themes/default/easyui.css">
<link rel="stylesheet" type="text/css"
	href="${js}/jquery-easyui-1.4.5/themes/icon.css">
<link rel="stylesheet" type="text/css"
	href="${js}/jquery-easyui-1.4.5/demo.css">
<script type="text/javascript"
	src="${js}/jquery-easyui-1.4.5/jquery.min.js"></script>
<script type="text/javascript"
	src="${js}/jquery-easyui-1.4.5/jquery.easyui.min.js"></script>
<css href="${css}/backend.css" rel="stylesheet"></css>
 <style type="text/css">
body{margin:0px;padding:0px; overflow:hidden;height:100%;}
#container{height:100%;  position:absolute; width:100%;}
 </style>

</head>
<body >

	<div id="container" class="easyui-layout">

		<%@include file="/jsp/backend/backheader.jsp" %>
		<%@include file="/jsp/backend/backfooter.jsp" %>
		<%@include file="/jsp/backend/backright.jsp" %>
		<%@include file="/jsp/backend/navigator.jsp" %>
		<%@include file="/jsp/backend/infocontent.jsp"%>
	
	</div>
</body>
</html>