$(function() {
	$("#slider").responsiveSlides({
		auto : true,
		speed : 400,
		namespace : "callbacks",
		pager : true
	});
});
$(function() {
	$("#home #nav a").click(function() {
		$("#home #nav a").removeClass("active");
		$(this).addClass("active");
	})
});
