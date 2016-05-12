<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@include file="/commons/tag_libs.jsp"%>
<!DOCTYPE html>
<html lang="zh">
<head>
<meta charset="utf-8" />
<link rel="stylesheet" href="${css}/markdown/editormd.css" />
<link href="${resource}/css/bootstrap.min.css" rel="stylesheet">
<script type="text/javascript">
 function savenews() {
			 var historymd1=document.getElementById("history").value;
			$.ajax({
				url : "${ctx}/backend/savehistory",
				data : {
					cpnhistory: testEditor.getHTML(),
					cpnhistorymd:historymd1
				},
				type : "POST",
				dataType : "json",
				success : function(data) {
					alert(data.msg);
				},
				error:function(){
					console.log("出错了！！")
				}
			})
 };
</script>

</head>
<body>
	<div id="layout">
		<form  id="newsForm" class="m-t" role="form">
			<div style="padding: 20px;">
				<input style="margin: 10px; float: right;"
					class="btn btn-primary block " type="submit" onclick="savenews()"  value="保存" /><br />
				<div
					style="margin: 10px; font-size: 20px; font-family: 'Microsoft YaHei';">请在下面填写发展历程:（使用markdown布局）</div>
			</div>
			<div id="test-editormd">
				<textarea id="history" style="display: none;">${cpnhistorymd}</textarea>
			</div>
		</form>
	</div>
	<script src="${js}/jquery-1.11.1.js"></script>
	<script src="${js}/editormd.min.js"></script>
	<script type="text/javascript">
		$(function() {
			testEditor = editormd("test-editormd", {
				width : "100%",
				height : 600,
				syncScrolling : "single",
				saveHTMLToTextarea : true,
				path : "${css}/markdown/"
			});
		});
	</script>
</body>
</html>