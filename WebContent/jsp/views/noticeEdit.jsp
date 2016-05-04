<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@include file="/commons/tag_libs.jsp"%>
<!DOCTYPE html>
<html lang="zh">
<head>
<meta charset="utf-8" />
<link href="${resource}/css/bootstrap.min.css" rel="stylesheet">
<script src="${js}/jquery-1.11.1.js"></script>
<script type="text/javascript">
	function savenotice() {
		$.ajax({
			url : "${ctx}/backend/savenotice",
			data : {
				noticetitle : $("#noticetitle").val(),
				noticecontent : $("#noticecontent").val()
			},
			type : "POST",
			dataType : "json",
			success : function(data) {
				if (data.code == "200") {
					alert(data.msg);
				}
				if (data.code == "400") {
					alert(data.msg);
				}

			},
			error : function() {
				console.log("出错了！！")
			}
		})
	};
</script>
</head>
<body>
	<div>
		<form id="noticeForm" class="m-t" role="form">
		<c:forEach var="item" items="${noticelist}" varStatus="status">
			<input id="noticetitle" style="margin: 10px; width: 70%;" type="text"
				placeholder="公告标题" required="true"  value="${item.noticetitle}"/> <br />
			<textarea id="noticecontent"
				style="margin: 10px; width: 70%; height: 100px;" placeholder="公告内容"
				required="true" >${item.noticecontent}</textarea>
			<br /> <input style="margin: 10px;" class="btn btn-primary block "
				type="submit" onclick="savenotice()" value="保存公告" />
			</c:forEach>
		</form>
	</div>
</body>
</html>