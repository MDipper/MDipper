<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@include file="/commons/tag_libs.jsp"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="${resource}/css/bootstrap.min.css?v=3.3.5" rel="stylesheet">
<script src="${resource}/js/jquery.min.js?v=2.1.4"></script>
<script src="${js }/jquery.validate.min.js"></script>
<script src="${js }/messages_zh.js"></script>
<script type="text/javascript">
	$(document).ready(function() {

		// validate the comment form when it is submitted
		$("#wayForm").validate();
	});
	$.validator.setDefaults({
		submitHandler : function() {
			$.ajax({
				url : "${ctx}/backend/updateway",
				data : {
					address : $("#address").val(),
					zipcode : $("#zipcode").val(),
					linkman : $("#linkman").val(),
					phone : $("#phone").val(),
					email : $("#email").val()
				},
				type : "POST",
				dataType : "json",
				success : function(data) {
					alert(data.msg);
				},
				error : function() {
					console.log("出错了！！")
				}
			});
		}
	});
</script>
</head>
<body>
	<div id="layout">
		<form id="wayForm" class="m-t" role="form">
			<div style="padding: 20px;">
				<input id="address" style="margin: 10px; width: 40%;" type="text"
					placeholder="地址" required="true" value="${ways.address}" /> <input
					id="zipcode" style="margin: 10px; width: 40%;" placeholder="邮编"
					required="true" type="text" value="${ways.zipcode}" /> <input
					id="linkman" style="margin: 10px; width: 40%;" type="text" required="true"
					placeholder="联系人" value="${ways.linkman}" /> <input id="phone"
					style="margin: 10px; width: 40%;" type="text" required="true"
					placeholder="电话" value="${ways.phone}" /> <input id="email"
					style="margin: 10px; width: 40%;" type="email" required="true"
					placeholder="邮箱" value="${ways.email}" /><br /> <input
					style="margin: 10px;" class="btn btn-primary block " type="submit"
					value="保存修改" />
			</div>
		</form>
	</div>

</body>
</html>