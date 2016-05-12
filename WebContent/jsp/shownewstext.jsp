<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/commons/tag_libs.jsp"%>
<div class="newslist" style="height: auto;">
	<div style="padding: 40px;">
		<div>${news.newstext}</div>
		<div>
			<input class="btn btn-primary block " style="width:100px;height:40px" type="button" value="返回"
				onclick="javascript:history.back();" />
		</div>
	</div>

</div>
<div style="height: 40px;"></div>