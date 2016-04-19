$(function() {
	$("#slider").responsiveSlides({
		auto : true,
		speed : 400,
		namespace : "callbacks",
		pager : true
	});
});
$(function() {
	$("#nav li a").click(function() {
		$("#nav li a").removeClass("active");
		$(this).addClass("active");
	})
});