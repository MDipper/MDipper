<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@include file="/commons/tag_libs.jsp"%>
<!DOCTYPE html>
<html lang="zh">
<head>
<meta charset="utf-8" />
<link rel="stylesheet" href="${css}/markdown/style.css" />
<link rel="stylesheet" href="${css}/markdown/editormd.css" />
<link href="${resource}/css/bootstrap.min.css?v=3.3.5" rel="stylesheet">
<script type="text/javascript">
	function savenews() {		
		$.ajax({
			url : "${ctx}/backend/savenews",
			data : {
				newstext : $("#newstext").val()
			},
			type : "POST",
			dataType : "json",
			success : function(data) {
				alert(data.msg);
			},
			error : function() {
				alert("出错了！！")
			}
		})
	}
</script>
</head>
<body>
	<div id="layout">
		<header>
			<button class="btn btn-primary block m-b" onclick="savenews();">保存新闻</button>
		</header>
		<div id="test-editormd">
			<textarea id="newstext" style="display: none;"></textarea>
		</div>
	</div>
	<script src="${js}/jquery-1.11.1.js"></script>
	<script src="${js}/editormd.min.js"></script>
	<script type="text/javascript">
		var testEditor;
		$(function() {
			testEditor = editormd("test-editormd", {
				width : "90%",
				height : 445,
				syncScrolling : "single",
				path : "${css}/markdown/"
			});
		});
	</script>
</body>
</html>