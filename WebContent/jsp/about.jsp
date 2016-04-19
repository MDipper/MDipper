<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/commons/tag_libs.jsp"%>
<style>
#aboutmenu  a div {
	height: 120px;
	width: 120px;
	border: 4px solid #dcdcdc;
	border-bottom: 4px solid red;
	border-radius: 50%;
	text-align: center;
	display: table-cell;
	vertical-align: middle;
}
#aboutmenu  a {
  font-size: 18px;
  color: #282828;
  font-weight: 600;
  text-decoration: none;
  padding-bottom: 10px;
  border-bottom: 2px solid #fff;
  margin: 50px;
}
#aboutmenu, #aboutshow {
  width: 1170px;
  padding-right: 15px;
  padding-left: 15px;
  margin-right: auto;
  margin-left: auto;
  margin-top:30px;
  display: table;
}
#aboutmenu .aboutactive{
	background:red;
	border: 4px solid red;
	color:white;
}
</style>
<script>
$(function() {
	$("#aboutmenu a div").click(function() {
		$("#aboutmenu a div").removeClass("aboutactive");
		$(this).find("div").addClass("aboutactive");
	})
});
</script>
<div>
	<div>
		<div style="position: relative; width: 100%; height: 280px;">
			<img style="width: 100%; height: 280px;" src="${image}/mainbg.jpg" />
			<div
				style="position: absolute; font-size: 40px; color: #fff; z-indent: 2; left: 67%; top: 100px;">
				ABOUT 关于</div>
		</div>
	</div>
	<div id="aboutmenu">
		<a href=""  ><div class="aboutactive">关于我们</div></a> <a href=""><div>企业文化</div></a> <a
			href=""><div>发展历程</div></a> <a href=""><div>企业荣誉</div></a> <a href=""><div>视频中心</div></a>
	</div>
	<div id="aboutshow">
	
	</div>
</div>