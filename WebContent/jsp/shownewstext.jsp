<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/commons/tag_libs.jsp"%>
<div class="newslist">
	<div style="padding: 40px;">
		<c:forEach var="item" items="${newslist}" varStatus="status">
			<div id="md-${status.count}">${item.newstext}</div>
		</c:forEach>
		<div>
			<input class="btn btn-primary block full-width m-b" type="button"
				value="返回" onclick="javascript:history.back();" />
		</div>
	</div>

</div>