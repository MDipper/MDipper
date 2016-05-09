<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@include file="/commons/tag_libs.jsp"%>
<!DOCTYPE html>
<html lang="zh">
<head>
<meta charset="utf-8" />
<link href="${resource}/css/bootstrap.min.css" rel="stylesheet">
<script src="${resource}/js/jquery.min.js?v=2.1.4"></script>
<script src="${js }/jquery.validate.min.js"></script>
<script src="${js }/messages_zh.js"></script>
<script type="text/javascript">
$(document).ready(function() {

	// validate the comment form when it is submitted
	 $("#noticeForm").validate(); 
});
$.validator.setDefaults({
	submitHandler : function() {
		$.ajax({
			url : "${ctx}/backend/savenotice",
			data : {
				noticetitle : $("#noticetitle").val(),
				noticecontent : $("#noticecontent").val()
			},
			type : "POST",
			dataType : "json",
			success : function(data) {
					alert(data.msg);
			},
			error : function() {
				console.log("出错了！！")
			}
		})
	}
});
</script>
</head>
<body>
	<div id="layout">
		<form id="noticeForm" class="m-t" role="form" method="post"
			action="${ctx }/backend/savenotice">
			<div style="padding: 20px;">
				<input id="noticetitle" style="margin: 10px; width: 70%;"
					type="text" placeholder="公告标题" required="true"
					value="${notice.noticetitle}" /> <br />
				<textarea id="noticecontent"
					style="margin: 10px; width: 70%; height: 100px;" placeholder="公告内容"
					required="true">${notice.noticecontent}</textarea>
				<br /> <input style="margin: 10px;" class="btn btn-primary block "
					type="submit" value="保存公告" />
			</div>
		</form>
	</div>
</body>
</html>