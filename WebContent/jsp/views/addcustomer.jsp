<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@include file="/commons/tag_libs.jsp"%>
<!DOCTYPE html>
<html lang="zh">
<head>
<meta charset="utf-8" />
<link href="${resource}/css/bootstrap.min.css" rel="stylesheet">
<script type="text/javascript">
 function savecustomer() {
			$.ajax({
				url : "${ctx}/backend/savecustomer",
				data : {
					name:$("#name").val(),
					nature:$("#nature").val(),
					industry:$("#industry").val(),
					size: $("#size").val(),
					description:$("#description").val()
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
				<input id="name" style="margin: 10px; width: 70%;" type="text"	placeholder="公司名" required="true" />
				<input style="margin: 10px; float: right;"
					class="btn btn-primary block " type="submit" onclick="savecustomer()"  value="保存客户" /><br />
				<input id="nature" style="margin: 10px; width: 70%;" type="text"
					placeholder="公司性质" required="true" /><br />
				<input id="industry" style="margin: 10px; width: 70%;" type="text"
					placeholder="公司行业" required="true" /><br />
					<input id="size" style="margin: 10px; width: 70%;" type="text"
					placeholder="公司规模" required="true" /><br />
				<textarea id="description" style="margin: 10px; width: 70%; height: 100px;"
					placeholder="公司描述" required="true"></textarea>
	
		</form>
	</div>
	<script src="${js}/jquery-1.11.1.js"></script>
</body>
</html>