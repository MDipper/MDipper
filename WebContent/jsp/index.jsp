<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/commons/tag_libs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="${js}/jquery-1.11.1.js"></script>
<script src="${js}/jquery.pjax.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
<body>
	<%@ include file="/jsp/header.jsp"%> 
	<div id="main">	
			<div class="slider">
			<ul class="rslides" id="slider">
				<li><img src="${image}/bg1.jpg" /></li>
				<li><img src="${image}/bg2.jpg" /></li>
				<li><img src="${image}/bg3.jpg" /></li>
			</ul>
		</div>
	
	</div>
	<%-- <%@ include file="/jsp/footer.jsp"%> --%>
</body>
  <script>
  $(document).pjax('a', '#main')
  </script>
</html>
