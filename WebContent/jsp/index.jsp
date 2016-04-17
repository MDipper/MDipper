<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/commons/tag_libs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<title>Home</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script src="${js}/jquery-1.11.1.js"></script>
<script src="${js}/jquery.pjax.js"></script>
<link href="${css}/home.css" rel="stylesheet">
<script type="application/x-javascript">
	
    addEventListener("load", function() {
      setTimeout(hideURLbar, 0);
    }, false);
    function hideURLbar() {
      window.scrollTo(0, 1);
    }
    $(document).ready(function(){
    	$(document).pjax('a', '#main')    	
    });
  
</script>
<!--webfont-->
<script src="${js}/responsiveslides.min.js"></script>
<script>
	$(function() {
		$("#slider").responsiveSlides({
			auto : true,
			speed : 400,
			namespace : "callbacks",
			pager : true
		});
	});
</script>
<body>
	<%@ include file="/jsp/header.jsp"%>
	<%@ include file="/jsp/main.jsp"%>
	<%@ include file="/jsp/footer.jsp"%>
</body>
</html>
