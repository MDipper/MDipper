<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/commons/tag_libs.jsp"%>
<style>
#address {
	background: #fafafa;
	width: 85%;
	height: 300px;
	margin-left: auto;
	margin-right: auto;
	margin-top: 40px;
}

#address  div div {
	margin-top: 10px;
	margin-bottom: 10px;
	padding: 0px;
	font-size: 18px;
}
</style>

<div>
	<div>
		<div style="position: relative; width: 100%; height: 280px;">
			<img style="width: 100%; height: 280px;" src="${image}/mainbg.jpg" />
			<div
				style="position: absolute; font-size: 40px; color: #fff; z-indent: 2; left: 67%; top: 100px;">
				CONTACT 联系</div>
		</div>
	</div>
	<div id="address">
		<div id="my_canvas" style="width: 600px; height: 300px; float: right;">
			<iframe
				src="map-intern"
				scrolling="no" width="600px" height="300px" frameborder="0"
				scrolling="no" marginheight="0" marginwidth="0"></iframe>
		</div>
		<div style="padding: 35px;">
			<div>地址：南京市栖霞区文苑路1号</div>
			<div>邮编：210046</div>
			<div>联系人：MDipper</div>
			<div>联系电话：123 4567 8910</div>
			<div>传真：025-12345678 025-87654321</div>
			<div>E-mail：contact@MDipper.com</div>
		</div>
	</div>
	<div style="height: 40px;"></div>
</div>