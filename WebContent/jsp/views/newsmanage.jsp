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
			$.ajax({
				url : "${ctx}/backend/savenews",
				data : {
					newsdate:$("#newsdate").val(),
					newstitle:$("#newstitle").val(),
					newsabstract:$("#newsabstract").val(),
					newstext : testEditor.getHTML()
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
				<input id="newsdate"style="margin: 10px; width: 20%;" type="date" required="true" />
				<input style="margin: 10px; float: right;"
					class="btn btn-primary block " type="submit" onclick="savenews()"  value="保存新闻" /><br />
				<input id="newstitle" style="margin: 10px; width: 70%;" type="text"
					placeholder="标题" required="true" /><br />
				<textarea id="newsabstract" style="margin: 10px; width: 70%; height: 100px;"
					placeholder="简介" required="true"></textarea>
				<div
					style="margin: 10px; font-size: 20px; font-family: 'Microsoft YaHei';">请在下面填写新闻内容:（使用markdown布局）</div>
			</div>
			<div id="test-editormd">
				<textarea id="newstext" style="display: none;"></textarea>
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