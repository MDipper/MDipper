<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/commons/tag_libs.jsp"%>
<!DOCTYPE html>
<html>
<head>
<script src="${js}/jquery-1.11.1.js"></script>
<script src="${js}/jquery.pjax.js"></script>
<script>
  $(document).ready(function(){
  	$(document).pjax('#home a', '#main');  
  	$(document).pjax('#companyinfo div div a', '#main');  
  	$(document).pjax('#servicemenu #nav a', '#serviceshow'); 
  	$(document).pjax('#newscontent div div div a', '#newscontent'); 
  	$(document).pjax('#aboutmenu div  a', '#aboutshow'); 
  });
  </script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
<body>
	<%@ include file="/jsp/header.jsp"%>
	<%@ include file="/jsp/main.jsp"%>
	<%@ include file="/jsp/footer.jsp"%>
</body>

</html>
