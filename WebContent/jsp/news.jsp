<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/commons/tag_libs.jsp"%>
<style>
#newscontent .newslist {
	background: #fafafa;
	width: 80%;
	height: 300px;
	margin-left: auto;
	margin-right: auto;
	margin-top: 40px;
}
	
#newscontent .newslist div div {
	margin-top: 20px;
	margin-bottom: 0px;
	padding: 0px;
	font-family: "Microsoft YaHei";
}
</style>
<div>
	<div>
		<div style="position: relative; width: 100%; height: 280px;">
			<img style="width: 100%; height: 280px;" src="${image}/mainbg.jpg" />
			<div
				style="position: absolute; font-size: 40px; color: #fff; z-indent: 2; left: 67%; top: 100px;">
				NEWS 新闻</div>
		</div>
	</div>
	<div id="newscontent">
		<c:forEach var="item" items="${newslist}" varStatus="status">
			<div class="newslist">
				<img src="${image}/newstest.jpg"
					style="margin: 0px; float: right; width: 450px; height: 300px;" />
				<div style="padding: 35px;">
					<div style="font-size: 18px;">${item.newsdate}</div>
					<div style="font-size: 20px; color: blue;">
						<a href="${ctx}/main/shownewstext/${item.newsid}"  style="text-decoration: none;">${item.newstitle}</a>
					</div>
					<div>${item.newsabstract}</div>
					<div>
						<a  href="${ctx}/main/shownewstext/${item.newsid}"   class="text-decoration: none;"><span
							class="btn btn-primary block full-width m-b">阅读更多</span></a>
					</div>
				</div>
			</div>
		</c:forEach>

		<div style="height: 40px;"></div>
	</div>
</div>
